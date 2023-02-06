################################################################################

# Deception Detection Confidence - Signal Detection

################################################################################

# Load packages ----------------------------------------------------------------

packages <- c(
  "psycho",
  "purrr"
)

lapply(packages, library, character.only = TRUE)

# Wrangle ----------------------------------------------------------------------

receiver_counts <- judgment %>% 
  group_by(receiver) %>% 
  summarise(
    n_hits = sum(judgment == 1 & veracity == "lie"),
    n_fa   = sum(judgment == 1 & veracity == "truth"),
    n_miss = sum(judgment == 0 & veracity == "lie"),
    n_cr   = sum(judgment == 0 & veracity == "truth")
  )

# Calculate signal detection indices -------------------------------------------

receiver_sdt <- dprime(
  receiver_counts$n_hits,
  receiver_counts$n_fa,
  receiver_counts$n_miss,
  receiver_counts$n_cr)

receiver_counts <- bind_cols(receiver_counts, receiver_sdt)

judgment <- judgment %>% 
  left_join(receiver_counts, by = "receiver")

# Summaries --------------------------------------------------------------------

sensitivity_table <- judgment %>% 
  summarise(
    mean_dprime   = mean(dprime),
    sd_dprime     = sd(dprime),
    median_dprime = median(dprime),
    min_dprime    = min(dprime),
    max_dprime    = max(dprime)
  )

bias_table <- judgment %>% 
  summarise(
    mean_beta   = mean(beta),
    sd_beta     = sd(beta),
    median_beta = median(beta),
    min_beta    = min(beta),
    max_beta    = max(beta)
  )

