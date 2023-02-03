################################################################################

# Deception Detection Confidence - Primary Data Analysis

################################################################################

# Descriptives -----------------------------------------------------------------

# Accuracy rates

accuracy_overall <- raw_judgment %>% 
  summarise(
    accuracy = sum(accuracy) / n()
  )

accuracy_veracity <- raw_judgment %>%
  group_by(veracity) %>% 
  summarise(
    accuracy = sum(accuracy) / n()
  )

accuracy_study <- raw_judgment %>% 
  group_by(study) %>% 
  summarise(
    accuracy = sum(accuracy) / n()
  )

accuracy_study_veracity <- raw_judgment %>% 
  group_by(study, veracity) %>% 
  summarise(
    accuracy = sum(accuracy) / n()
  )

accuracy_judgment <- raw_judgment %>%
  group_by(judgment) %>% 
  summarise(
    accuracy = sum(accuracy) / n()
  )

# Bias rates

judgment_bias <- raw_judgment %>% 
  summarise(
    lie_judgment = sum(judgment) / n()
  )

# Confidence and accuracy

## Overall

confidence_table <- judgment %>% 
  group_by(judgment, confidence) %>% 
  summarise(
    accuracy = sum(accuracy) / n(),
    se       = sqrt((accuracy * (1 - accuracy)) / n()),
    ci_lb    = accuracy - se * qnorm(.975),
    ci_ub    = accuracy + se * qnorm(.975)
  )

confidence_plot <- 
ggplot(confidence_table,
       aes(
         x     = confidence, 
         y     = accuracy,
         shape = as.factor(judgment)
       )) +
  geom_point() +
  geom_errorbar(
    aes(
      ymin = ci_lb,
      ymax = ci_ub
    ),
    width = .25,
    alpha = .20
  ) +
  geom_line() +
  scale_y_continuous(
    limits = c(0, 1),
    breaks = seq(0, 1, .05)
  ) +
  scale_x_continuous(
    breaks = 1:7
  ) +
  scale_shape_discrete(
    labels = c("Truth", "Lie")
  ) +
  labs(
    shape = "Judgment",
    y     = "Accuracy",
    x     = "Confidence"
  ) +
  theme_classic()

## By study

confidence_study_table <- judgment %>% 
  group_by(study, judgment, confidence) %>% 
  summarise(
    accuracy = sum(accuracy) / n(),
    se       = sqrt((accuracy * (1 - accuracy)) / n()),
    ci_lb    = accuracy - se * qnorm(.975),
    ci_ub    = accuracy + se * qnorm(.975)
  ) %>% 
  mutate(
    study = case_when(
      study == "luke"        ~ "Luke et al. (2014)",
      study == "sorochinski" ~ "Sorochinski et al (2014)",
      study == "toomey"      ~ "Toomey (2013)",
      study == "press_conf"  ~ "Vrij & Mann (2001)"
    )
  )

confidence_study_table$ci_lb[confidence_study_table$ci_lb < 0] <- 0
confidence_study_table$ci_ub[confidence_study_table$ci_ub > 1] <- 1

confidence_study_plot <- 
  ggplot(confidence_study_table,
         aes(
           x     = confidence, 
           y     = accuracy,
           shape = as.factor(judgment)
         )) +
  facet_wrap(~ study, nrow = 2) +
  geom_point() +
  geom_errorbar(
    aes(
      ymin = ci_lb,
      ymax = ci_ub
    ),
    width = .25,
    alpha = .20
  ) +
  geom_line() +
  scale_y_continuous(
    limits = c(-0.01, 1.01),
    breaks = seq(0, 1, .05)
  ) +
  scale_x_continuous(
    breaks = 1:7
  ) +
  scale_shape_discrete(
    labels = c("Truth", "Lie")
  ) +
  labs(
    shape = "Judgment",
    y     = "Accuracy",
    x     = "Confidence"
  ) +
  theme_classic()

## By sender detectability

detectability_table <- judgment %>% 
  mutate(
    detectability_bin = cut_number(detectability_sender, 2)
  ) %>% 
  group_by(detectability_bin, judgment, confidence) %>% 
  summarise(
    accuracy = sum(accuracy) / n(),
    se       = sqrt((accuracy * (1 - accuracy)) / n()),
    ci_lb    = accuracy - se * qnorm(.975),
    ci_ub    = accuracy + se * qnorm(.975)
  )

detectability_table$ci_lb[detectability_table$ci_lb < 0] <- 0
detectability_table$ci_ub[detectability_table$ci_ub > 1] <- 1

confidence_detectability_plot <- 
  ggplot(detectability_table,
         aes(
           x     = confidence, 
           y     = accuracy,
           shape = as.factor(judgment)
         )) +
  facet_wrap(~ detectability_bin, nrow = 1) +
  geom_point() +
  geom_errorbar(
    aes(
      ymin = ci_lb,
      ymax = ci_ub
    ),
    width = .25,
    alpha = .20
  ) +
  geom_line() +
  scale_y_continuous(
    limits = c(-0.01, 1.01),
    breaks = seq(0, 1, .05)
  ) +
  scale_x_continuous(
    breaks = 1:7
  ) +
  scale_shape_discrete(
    labels = c("Truth", "Lie")
  ) +
  labs(
    shape = "Judgment",
    y     = "Accuracy",
    x     = "Confidence"
  ) +
  theme_classic()

detectability_table_overall <- judgment %>% 
  mutate(
    detectability_bin = cut_number(detectability_sender, 2)
  ) %>% 
  group_by(detectability_bin, confidence) %>% 
  summarise(
    accuracy = sum(accuracy) / n(),
    se       = sqrt((accuracy * (1 - accuracy)) / n()),
    ci_lb    = accuracy - se * qnorm(.975),
    ci_ub    = accuracy + se * qnorm(.975)
  )

detectability_table_overall$ci_lb[detectability_table_overall$ci_lb < 0] <- 0
detectability_table_overall$ci_ub[detectability_table_overall$ci_ub > 1] <- 1

sender_labels        <- c("Less Detectable Senders (0-50%)", "More Detectable Senders (50-100%)")
names(sender_labels) <- levels(detectability_table$detectability_bin)

sender_detect_table <- raw_judgment %>% 
  group_by(veracity, sender) %>% 
  summarise(
    detectability_sender = sum(accuracy) / n(),
    n_judgments_sender   = n()
  ) %>% 
  ungroup() %>% 
  mutate(
    detectability_bin = cut_number(detectability_sender, 2)
  )

confidence_detectability_plot_overall <- 
  ggplot(detectability_table,
         aes(
           x     = confidence, 
           y     = accuracy,
           color = as.factor(judgment)
         )) +
  facet_wrap(~ detectability_bin, nrow = 1,
             labeller = labeller(detectability_bin = sender_labels)) +
  geom_point() +
  geom_errorbar(
    aes(
      ymin = ci_lb,
      ymax = ci_ub
    ),
    width = .25,
    alpha = .20
  ) +
  geom_line(
    linewidth = 1
  ) +
  scale_y_continuous(
    limits = c(-0.01, 1.01),
    breaks = seq(0, 1, .05)
  ) +
  scale_x_continuous(
    breaks = 1:7
  ) +
  scale_color_manual(
    labels = c("Truth", "Lie"),
    values = c("#473198", "#AF3E4D")
  ) +
  geom_rug(
    data = sender_detect_table,
    inherit.aes = FALSE,
    aes(
      y     = detectability_sender
    ),
    alpha = .20
  ) +
  geom_line(
    data = detectability_table_overall,
    inherit.aes = FALSE,
    aes(
      x     = confidence, 
      y     = accuracy
    ),
    alpha = .10,
    linewidth = 1,
    linetype = "dashed"
  ) +
  labs(
    color = "Judgment",
    y     = "Accuracy",
    x     = "Confidence"
  ) +
  theme_classic()

# Hypothesis testing -----------------------------------------------------------

# General Confidence-Accuracy Relationship: Confidence predicts deception
# detection accuracy, such that more confident judgments are more accurate.

glmer_h1 <- 
  glmer(accuracy ~ 
        1
        + confidence_centered
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

# Signal-Present Judgment Specificity: Confidence predicts deception detection
# accuracy, such that more confident judgments are more accurate, to a greater
# extent for lie judgments than truth judgments.

glmer_h2_base <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        + judgment
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

glmer_h2_interaction <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

lrt_h2 <- anova(glmer_h2_base, glmer_h2_interaction)

# Variation Across Senders: Confidence predicts deception detection accuracy,
# such that more confident judgments are more accurate, possibly to a greater
# extent for lie judgments than truth judgments, and this tendency varies in
# magnitude across senders.

glmer_h3_base <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + (1|study:sender)
        + (1 + confidence_centered + judgment | sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

glmer_h3_interaction <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + (1|study:sender)
        + (1 
           + confidence_centered 
           + judgment 
           + confidence_centered:judgment | sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

lrt_h3 <- anova(glmer_h2_interaction, glmer_h3_base, glmer_h3_interaction)

# Variation Across Contexts: Confidence predicts deception detection accuracy,
# such that more confident judgments are more accurate, possibly to a greater
# extent for lie judgments than truth judgments, and this tendency varies in
# magnitude across contexts.

glmer_h4_base <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + (1 + confidence_centered + judgment | study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

glmer_h4_interaction <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + (1 
           + confidence_centered 
           + judgment 
           + confidence_centered:judgment | study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

lrt_h4 <- anova(glmer_h2_interaction, glmer_h4_base, glmer_h4_interaction)

# Variation Across Receivers: Confidence predicts deception detection accuracy,
# such that more confident judgments are more accurate, possibly to a greater
# extent for lie judgments than truth judgments, and this tendency varies in
# magnitude across receivers.

glmer_h5_base <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + (1|study:sender)
        + (1|sender)
        + (1 + confidence_centered + judgment | receiver),
        family = binomial(link = "logit"),
        data = judgment)

glmer_h5_interaction <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + (1|study:sender)
        + (1|sender)
        + (1
           + confidence_centered 
           + judgment 
           + confidence_centered:judgment | receiver),
        family = binomial(link = "logit"),
        data = judgment)

lrt_h5 <- anova(glmer_h2_interaction, glmer_h5_base, glmer_h5_interaction)

# Detectable Context Specificity: Confidence predicts deception detection
# accuracy, such that more confident judgments are more accurate, to a greater
# extent for lie judgments than truth judgments, specifically in situations in
# which judgments tend to be more accurate.

glmer_h6_base <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + detectability_study_centered
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

glmer_h6_interaction <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        * detectability_study_centered
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

lrt_h6 <- anova(glmer_h2_interaction, glmer_h6_base, glmer_h6_interaction)

## Robustness check: Controlling for judgments per study

glmer_h6_base_rc <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + detectability_study_centered
        + n_judgments_study
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

glmer_h6_interaction_rc <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        * detectability_study_centered
        + n_judgments_study
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

lrt_h6_rc <- anova(glmer_h2_interaction, glmer_h6_base_rc, glmer_h6_interaction_rc)

# Detectable Sender Specificity: Confidence predicts deception detection
# accuracy, such that more confident judgments are more accurate, to a greater
# extent for lie judgments than truth judgments, specifically for more
# detectable senders.

glmer_h7_base <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + detectability_study_centered
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

glmer_h7_interaction <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        * detectability_sender_centered
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

lrt_h7 <- anova(glmer_h2_interaction, glmer_h7_base, glmer_h7_interaction)

## Robustness check: Controlling for judgments per sender

glmer_h7_base_rc <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + detectability_study_centered
        + n_judgments_sender
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

glmer_h7_interaction_rc <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        * detectability_sender_centered
        + n_judgments_sender
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

lrt_h7_rc <- anova(glmer_h2_interaction, glmer_h7_base_rc, glmer_h7_interaction_rc)

## Robustness check: Split groups of studies

glmer_h2_mock <-
  glmer(accuracy ~ 
          1
        + confidence_centered
        * judgment
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = filter(judgment, study != "press_conf"))

glmer_h2_real <-
  glmer(accuracy ~ 
          1
        + confidence_centered
        * judgment
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data =filter(judgment, study == "press_conf"))

### Mock crimes

glmer_h7_base_mock <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + detectability_study_centered
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = filter(judgment, study != "press_conf"))

glmer_h7_interaction_mock <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        * detectability_sender_centered
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = filter(judgment, study != "press_conf"))

lrt_h7_mock <- anova(glmer_h2_mock, glmer_h7_base_mock, glmer_h7_interaction_mock)

### Real

glmer_h7_base_real <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + detectability_study_centered
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = filter(judgment, study == "press_conf"))

glmer_h7_interaction_real <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        * detectability_sender_centered
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = filter(judgment, study == "press_conf"))

lrt_h7_real <- anova(glmer_h2_real, glmer_h7_base_real, glmer_h7_interaction_real)

# Capable Receiver Specificity: Confidence predicts deception detection
# accuracy, such that more confident judgments are more accurate, to a greater
# extent for lie judgments than truth judgments, specifically for receivers who
# tend to be more accurate.

glmer_h8_base <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        + ability_receiver_centered
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

glmer_h8_interaction <-
  glmer(accuracy ~ 
        1
        + confidence_centered
        * judgment
        * ability_receiver_centered
        + (1|study:sender)
        + (1|sender)
        + (1|receiver),
        family = binomial(link = "logit"),
        data = judgment)

lrt_h8 <- anova(glmer_h2_interaction, glmer_h8_base, glmer_h8_interaction)
