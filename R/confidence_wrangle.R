################################################################################

# Deception Detection Confidence - Data Wrangling

################################################################################

# Load packages ----------------------------------------------------------------

packages <- c(
  "dplyr",
  "tidyr",
  "ggplot2",
  "readr",
  "lme4",
  "cowplot",
  "interactions"
)

lapply(packages, library, character.only = TRUE)

# Load data --------------------------------------------------------------------

raw <- read.csv("./data/confidence_data_raw.csv") %>% 
  slice(-1, -2) %>% 
  type_convert()

# Wrangle ----------------------------------------------------------------------

raw <- raw %>% 
  select(
    receiver = ResponseId,
    everything()
  )

raw_judgment <- raw %>% 
  pivot_longer(
    cols = starts_with("judgement_"),
    names_to = c("sender", "veracity"),
    names_pattern = "judgement_(.*)_(.*)",
    values_to = "judgment",
    values_drop_na = TRUE
  ) %>% 
  mutate(
    judgment = -1 * (judgment - 2),
    accuracy = case_when(
      veracity == "lie"   & judgment == 1 ~ 1,
      veracity == "truth" & judgment == 1 ~ 0,
      veracity == "lie"   & judgment == 0 ~ 0,
      veracity == "truth" & judgment == 0 ~ 1,
    ),
    study = case_when(
      substr(sender, 1, 1) == 0 ~ "luke",
      substr(sender, 1, 1) == 3 ~ "sorochinski",
      substr(sender, 1, 1) == 4 ~ "toomey",
      substr(sender, 1, 1) == 2 ~ "press_conf"
    )
  ) %>% 
  select(
    receiver,
    study,
    sender,
    veracity,
    judgment,
    accuracy
  )

raw_confidence <- raw %>% 
  pivot_longer(
    cols = starts_with("confidence_"),
    names_to = c("sender"),
    names_pattern = "confidence_(.*)_.*",
    values_to = "confidence",
    values_drop_na = TRUE
  ) %>% 
  select(
    receiver,
    sender,
    confidence
  ) %>% 
  mutate(
    confidence_centered = scale(confidence, scale = FALSE)[, 1]
  )

raw_detect_sender <- raw_judgment %>% 
  group_by(sender) %>% 
  summarise(
    detectability_sender = sum(accuracy) / n(),
    n_judgments_sender   = n()
  ) %>% 
  mutate(
    detectability_sender_centered = scale(detectability_sender, scale = FALSE)[, 1]
  )

raw_detect_study <- raw_judgment %>% 
  group_by(study) %>% 
  summarise(
    detectability_study = sum(accuracy) / n(),
    n_judgments_study   = n(),
    n_senders_study     = length(unique(sender))
  ) %>% 
  mutate(
    detectability_study_centered = scale(detectability_study, scale = FALSE)[, 1]
  )

raw_ability_receiver <- raw_judgment %>% 
  group_by(receiver) %>% 
  summarise(
    ability_receiver = sum(accuracy) / n()
  ) %>% 
  mutate(
    ability_receiver_centered = scale(ability_receiver, scale = FALSE)[, 1]
  )

judgment <- raw_judgment %>% 
  left_join(raw_confidence, by = c("receiver", "sender")) %>% 
  left_join(raw_detect_sender, by = c("sender")) %>% 
  left_join(raw_detect_study, by = c("study")) %>% 
  left_join(raw_ability_receiver, by = c("receiver"))
