################################################################################

# Deception Detection Confidence - Primary Data Analysis

################################################################################

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

lrt_h3 <- anova(glmer_h3_base, glmer_h3_interaction)

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

lrt_h4 <- anova(glmer_h4_base, glmer_h4_interaction)

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

lrt_h5 <- anova(glmer_h5_base, glmer_h5_interaction)

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