Does Confidence Predict Deception Detection Accuracy?
================

# Descriptives

## Accuracy Rates

``` r
accuracy_overall %>% 
  knitr::kable()
```

|  accuracy |
|----------:|
| 0.4698722 |

``` r
accuracy_veracity %>% 
  knitr::kable()
```

| veracity |  accuracy |
|:---------|----------:|
| lie      | 0.5015416 |
| truth    | 0.4238806 |

``` r
accuracy_study %>% 
  knitr::kable()
```

| study       |  accuracy |
|:------------|----------:|
| luke        | 0.4265734 |
| press_conf  | 0.4575000 |
| sorochinski | 0.5466667 |
| toomey      | 0.5333333 |

``` r
accuracy_study_veracity %>% 
  knitr::kable()
```

| study       | veracity |  accuracy |
|:------------|:---------|----------:|
| luke        | lie      | 0.4800000 |
| luke        | truth    | 0.3676471 |
| press_conf  | lie      | 0.5120000 |
| press_conf  | truth    | 0.3666667 |
| sorochinski | lie      | 0.5540541 |
| sorochinski | truth    | 0.5394737 |
| toomey      | lie      | 0.3648649 |
| toomey      | truth    | 0.6973684 |

``` r
accuracy_judgment %>% 
  knitr::kable()
```

| judgment |  accuracy |
|---------:|----------:|
|        0 | 0.3693108 |
|        1 | 0.5583524 |

``` r
sensitivity_table %>% 
  knitr::kable()
```

| mean_dprime | sd_dprime | median_dprime | min_dprime | max_dprime |
|------------:|----------:|--------------:|-----------:|-----------:|
|  -0.1996367 | 0.7491177 |    -0.2104284 |  -2.848228 |   1.911858 |

# Judgment Bias

``` r
judgment_bias %>% 
  knitr::kable()
```

| lie_judgment |
|-------------:|
|    0.5319537 |

``` r
judgment_bias_study %>% 
  knitr::kable()
```

| study       | lie_judgment |
|:------------|-------------:|
| luke        |    0.5524476 |
| press_conf  |    0.5575000 |
| sorochinski |    0.5066667 |
| toomey      |    0.3333333 |

``` r
bias_table %>% 
  knitr::kable()
```

| mean_beta |   sd_beta | median_beta |  min_beta | max_beta |
|----------:|----------:|------------:|----------:|---------:|
|   1.05596 | 0.3476433 |    1.011003 | 0.2957007 | 2.433473 |

# Confidence

``` r
knitr::include_graphics("./figures/confidence_dist_plot.png")
```

![](./figures/confidence_dist_plot.png)

``` r
knitr::include_graphics("./figures/confidence_dist_study_plot.png")
```

![](./figures/confidence_dist_study_plot.png)

``` r
confidence_table
```

    # A tibble: 14 × 6
    # Groups:   judgment [2]
       judgment confidence accuracy     se   ci_lb ci_ub
          <dbl>      <dbl>    <dbl>  <dbl>   <dbl> <dbl>
     1        0          1    0.25  0.125  0.00500 0.495
     2        0          2    0.231 0.0675 0.0985  0.363
     3        0          3    0.357 0.0484 0.262   0.452
     4        0          4    0.385 0.0400 0.307   0.464
     5        0          5    0.342 0.0318 0.280   0.405
     6        0          6    0.396 0.0376 0.323   0.470
     7        0          7    0.457 0.0553 0.348   0.565
     8        1          1    0.619 0.106  0.411   0.827
     9        1          2    0.7   0.0725 0.558   0.842
    10        1          3    0.734 0.0497 0.637   0.832
    11        1          4    0.629 0.0374 0.555   0.702
    12        1          5    0.525 0.0324 0.462   0.589
    13        1          6    0.524 0.0361 0.453   0.594
    14        1          7    0.428 0.0421 0.345   0.510

``` r
knitr::include_graphics("./figures/confidence_plot.png")
```

![](./figures/confidence_plot.png)

## By Study

``` r
confidence_study_table %>% 
  knitr::kable()
```

| study                    | judgment | confidence |  accuracy |        se |     ci_lb |     ci_ub |
|:-------------------------|---------:|-----------:|----------:|----------:|----------:|----------:|
| Luke et al. (2014)       |        0 |          2 | 0.6000000 | 0.2190890 | 0.1705934 | 1.0000000 |
| Luke et al. (2014)       |        0 |          3 | 0.5000000 | 0.2500000 | 0.0100090 | 0.9899910 |
| Luke et al. (2014)       |        0 |          4 | 0.2727273 | 0.1342816 | 0.0095401 | 0.5359144 |
| Luke et al. (2014)       |        0 |          5 | 0.3684211 | 0.1106647 | 0.1515222 | 0.5853199 |
| Luke et al. (2014)       |        0 |          6 | 0.3529412 | 0.1159040 | 0.1257734 | 0.5801089 |
| Luke et al. (2014)       |        0 |          7 | 0.5000000 | 0.1767767 | 0.1535240 | 0.8464760 |
| Luke et al. (2014)       |        1 |          1 | 1.0000000 | 0.0000000 | 1.0000000 | 1.0000000 |
| Luke et al. (2014)       |        1 |          2 | 0.6000000 | 0.2190890 | 0.1705934 | 1.0000000 |
| Luke et al. (2014)       |        1 |          3 | 0.6000000 | 0.1549193 | 0.2963637 | 0.9036363 |
| Luke et al. (2014)       |        1 |          4 | 0.4000000 | 0.1264911 | 0.1520820 | 0.6479180 |
| Luke et al. (2014)       |        1 |          5 | 0.2916667 | 0.0927805 | 0.1098203 | 0.4735131 |
| Luke et al. (2014)       |        1 |          6 | 0.6666667 | 0.1217161 | 0.4281074 | 0.9052259 |
| Luke et al. (2014)       |        1 |          7 | 0.2500000 | 0.1530931 | 0.0000000 | 0.5500570 |
| Vrij & Mann (2001)       |        0 |          1 | 0.2500000 | 0.1530931 | 0.0000000 | 0.5500570 |
| Vrij & Mann (2001)       |        0 |          2 | 0.1923077 | 0.0772920 | 0.0408181 | 0.3437973 |
| Vrij & Mann (2001)       |        0 |          3 | 0.3333333 | 0.0544331 | 0.2266464 | 0.4400203 |
| Vrij & Mann (2001)       |        0 |          4 | 0.3392857 | 0.0447384 | 0.2516000 | 0.4269714 |
| Vrij & Mann (2001)       |        0 |          5 | 0.2483221 | 0.0353941 | 0.1789511 | 0.3176932 |
| Vrij & Mann (2001)       |        0 |          6 | 0.3173077 | 0.0456390 | 0.2278569 | 0.4067585 |
| Vrij & Mann (2001)       |        0 |          7 | 0.4385965 | 0.0657253 | 0.3097772 | 0.5674158 |
| Vrij & Mann (2001)       |        1 |          1 | 0.6470588 | 0.1159040 | 0.4198911 | 0.8742266 |
| Vrij & Mann (2001)       |        1 |          2 | 0.6896552 | 0.0859091 | 0.5212764 | 0.8580339 |
| Vrij & Mann (2001)       |        1 |          3 | 0.7777778 | 0.0523783 | 0.6751182 | 0.8804373 |
| Vrij & Mann (2001)       |        1 |          4 | 0.6615385 | 0.0415012 | 0.5801976 | 0.7428793 |
| Vrij & Mann (2001)       |        1 |          5 | 0.5771429 | 0.0373439 | 0.5039502 | 0.6503355 |
| Vrij & Mann (2001)       |        1 |          6 | 0.5104895 | 0.0418029 | 0.4285573 | 0.5924217 |
| Vrij & Mann (2001)       |        1 |          7 | 0.3928571 | 0.0461481 | 0.3024085 | 0.4833057 |
| Sorochinski et al (2014) |        0 |          1 | 0.5000000 | 0.3535534 | 0.0000000 | 1.0000000 |
| Sorochinski et al (2014) |        0 |          2 | 0.2000000 | 0.1788854 | 0.0000000 | 0.5506090 |
| Sorochinski et al (2014) |        0 |          3 | 0.5000000 | 0.1581139 | 0.1901025 | 0.8098975 |
| Sorochinski et al (2014) |        0 |          4 | 0.7000000 | 0.1449138 | 0.4159742 | 0.9840258 |
| Sorochinski et al (2014) |        0 |          5 | 0.5652174 | 0.1033665 | 0.3626227 | 0.7678121 |
| Sorochinski et al (2014) |        0 |          6 | 0.6111111 | 0.1149044 | 0.3859027 | 0.8363196 |
| Sorochinski et al (2014) |        0 |          7 | 0.5000000 | 0.2041241 | 0.0999240 | 0.9000760 |
| Sorochinski et al (2014) |        1 |          2 | 0.5000000 | 0.3535534 | 0.0000000 | 1.0000000 |
| Sorochinski et al (2014) |        1 |          3 | 0.4000000 | 0.2190890 | 0.0000000 | 0.8294066 |
| Sorochinski et al (2014) |        1 |          4 | 0.5714286 | 0.1322600 | 0.3122037 | 0.8306534 |
| Sorochinski et al (2014) |        1 |          5 | 0.4782609 | 0.1041586 | 0.2741137 | 0.6824080 |
| Sorochinski et al (2014) |        1 |          6 | 0.4285714 | 0.1079898 | 0.2169152 | 0.6402276 |
| Sorochinski et al (2014) |        1 |          7 | 0.9090909 | 0.0866784 | 0.7392043 | 1.0000000 |
| Toomey (2013)            |        0 |          1 | 0.0000000 | 0.0000000 | 0.0000000 | 0.0000000 |
| Toomey (2013)            |        0 |          2 | 0.0000000 | 0.0000000 | 0.0000000 | 0.0000000 |
| Toomey (2013)            |        0 |          3 | 0.3333333 | 0.1571348 | 0.0253547 | 0.6413120 |
| Toomey (2013)            |        0 |          4 | 0.6000000 | 0.1264911 | 0.3520820 | 0.8479180 |
| Toomey (2013)            |        0 |          5 | 0.6129032 | 0.0874832 | 0.4414392 | 0.7843672 |
| Toomey (2013)            |        0 |          6 | 0.5666667 | 0.0904720 | 0.3893448 | 0.7439886 |
| Toomey (2013)            |        0 |          7 | 0.5000000 | 0.1581139 | 0.1901025 | 0.8098975 |
| Toomey (2013)            |        1 |          1 | 0.0000000 | 0.0000000 | 0.0000000 | 0.0000000 |
| Toomey (2013)            |        1 |          2 | 1.0000000 | 0.0000000 | 1.0000000 | 1.0000000 |
| Toomey (2013)            |        1 |          3 | 1.0000000 | 0.0000000 | 1.0000000 | 1.0000000 |
| Toomey (2013)            |        1 |          4 | 0.6250000 | 0.1711633 | 0.2895261 | 0.9604739 |
| Toomey (2013)            |        1 |          5 | 0.3750000 | 0.1210307 | 0.1377841 | 0.6122159 |
| Toomey (2013)            |        1 |          6 | 0.6666667 | 0.1360828 | 0.3999494 | 0.9333840 |
| Toomey (2013)            |        1 |          7 | 0.4285714 | 0.1870439 | 0.0619721 | 0.7951707 |

``` r
knitr::include_graphics("./figures/confidence_study_plot.png")
```

![](./figures/confidence_study_plot.png)

## By Sender Detectability

``` r
unconditional_icc
```

    # ICC by Group

    Group        |       ICC
    ------------------------
    receiver     |     0.011
    sender:study |     0.123
    study        | 4.713e-17

``` r
knitr::include_graphics("./figures/confidence_detectability_plot.png")
```

![](./figures/confidence_detectability_plot.png)

# Note on Hypothesis Testing

Note that the random effects have been respecified from the registered
code to better reflect the data structure. Specifically, the random
effects now properly represent senders nested in studies. The registered
code did not represent this structure correctly.

# Hypothesis 1: General Confidence-Accuracy Relationship

*Confidence predicts deception detection accuracy, such that more
confident judgments are more accurate.*

There is no significant overall relationship between confidence and
accuracy.

``` r
summary(glmer_h1)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: accuracy ~ 1 + confidence_centered + (1 | study/sender) + (1 |  
        receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2174.2   2201.3  -1082.1   2164.2     1638 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -1.4774 -0.9385 -0.4134  0.8933  2.5103 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.04279  0.2069  
     sender:study (Intercept) 0.46467  0.6817  
     study        (Intercept) 0.00000  0.0000  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                        Estimate Std. Error z value Pr(>|z|)
    (Intercept)         -0.02867    0.11967  -0.240    0.811
    confidence_centered -0.02334    0.03755  -0.621    0.534

    Correlation of Fixed Effects:
                (Intr)
    cnfdnc_cntr -0.010
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

# Hypothesis 2: Signal-Present Judgment Specificity

*Confidence predicts deception detection accuracy, such that more
confident judgments are more accurate, to a greater extent for lie
judgments than truth judgments.*

For truth judgments, confidence is somewhat predictive of accuracy, but
for lie judgments, confidence negatively predicts accuracy. That is, for
lie judgments, people are less accurate when they are more confident.

``` r
lrt_h2
```

    Data: judgment
    Models:
    glmer_h2_base: accuracy ~ 1 + confidence_centered + judgment + (1 | study/sender) + (1 | receiver)
    glmer_h2_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 | receiver)
                         npar    AIC    BIC  logLik deviance  Chisq Df Pr(>Chisq)
    glmer_h2_base           6 2069.0 2101.4 -1028.5   2057.0                     
    glmer_h2_interaction    7 2058.1 2095.9 -1022.1   2044.1 12.866  1  0.0003346
                            
    glmer_h2_base           
    glmer_h2_interaction ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
summary(glmer_h2_base)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: accuracy ~ 1 + confidence_centered + judgment + (1 | study/sender) +  
        (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2069.0   2101.4  -1028.5   2057.0     1637 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.4947 -0.7840 -0.4313  0.7398  4.2185 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.00814  0.09022 
     sender:study (Intercept) 0.70287  0.83838 
     study        (Intercept) 0.02980  0.17263 
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                        Estimate Std. Error z value Pr(>|z|)    
    (Intercept)         -0.59216    0.17109  -3.461 0.000538 ***
    confidence_centered -0.03570    0.03852  -0.927 0.353994    
    judgment             1.17162    0.11653  10.054  < 2e-16 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_
    cnfdnc_cntr  0.011       
    judgment    -0.327 -0.046

``` r
summary(glmer_h2_interaction)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) +  
        (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2058.1   2095.9  -1022.1   2044.1     1636 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.5245 -0.7751 -0.4132  0.7506  4.7416 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.02331  0.1527  
     sender:study (Intercept) 0.69426  0.8332  
     study        (Intercept) 0.03513  0.1874  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -0.58043    0.17493  -3.318 0.000906 ***
    confidence_centered           0.11480    0.05773   1.989 0.046748 *  
    judgment                      1.15485    0.11699   9.871  < 2e-16 ***
    confidence_centered:judgment -0.28000    0.07895  -3.546 0.000390 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt
    cnfdnc_cntr  0.007              
    judgment    -0.321 -0.037       
    cnfdnc_cnt: -0.009 -0.730  0.012

# Hypothesis 3: Variation Across Senders

*Confidence predicts deception detection accuracy, such that more
confident judgments are more accurate, possibly to a greater extent for
lie judgments than truth judgments, and this tendency varies in
magnitude across senders.*

Model failed to converge. Do not interpret.

``` r
lrt_h3
```

    Data: judgment
    Models:
    glmer_h2_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 | receiver)
    glmer_h3_base: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 + confidence_centered + judgment | sender) + (1 | receiver)
    glmer_h3_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 + confidence_centered + judgment + confidence_centered:judgment | sender) + (1 | receiver)
                         npar     AIC     BIC   logLik deviance Chisq Df Pr(>Chisq)
    glmer_h2_interaction    7 2058.11 2095.94 -1022.06  2044.11                    
    glmer_h3_base          13  132.06  202.32   -53.03   106.06  1938  6     <2e-16
    glmer_h3_interaction   17  142.49  234.36   -54.25   108.49     0  4          1
                            
    glmer_h2_interaction    
    glmer_h3_base        ***
    glmer_h3_interaction    
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
summary(glmer_h3_base)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) +  
        (1 + confidence_centered + judgment | sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
       132.1    202.3    -53.0    106.1     1630 

    Scaled residuals: 
          Min        1Q    Median        3Q       Max 
    -0.022533 -0.001854  0.000000  0.000112  0.260218 

    Random effects:
     Groups       Name                Variance  Std.Dev. Corr       
     receiver     (Intercept)         3.514e-02   0.1875            
     sender       (Intercept)         8.574e+02  29.2809            
                  confidence_centered 1.975e+01   4.4436  0.99      
                  judgment            1.016e+04 100.7887 -0.98 -1.00
     sender:study (Intercept)         1.770e-04   0.0133            
     study        (Intercept)         1.172e-02   0.1083            
    Number of obs: 1643, groups:  
    receiver, 150; sender, 67; sender:study, 67; study, 4

    Fixed effects:
                                   Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -10.372359   0.001563 -6637.4   <2e-16 ***
    confidence_centered           -0.744442   0.001598  -465.9   <2e-16 ***
    judgment                      26.376877   0.001540 17129.2   <2e-16 ***
    confidence_centered:judgment   0.571828   0.001545   370.1   <2e-16 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt
    cnfdnc_cntr  0.068              
    judgment    -0.097  0.081       
    cnfdnc_cnt: -0.093  0.078 -0.104
    optimizer (bobyqa) convergence code: 0 (OK)
    unable to evaluate scaled gradient
    Model failed to converge: degenerate  Hessian with 1 negative eigenvalues

``` r
summary(glmer_h3_interaction)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) +  
        (1 + confidence_centered + judgment + confidence_centered:judgment |  
            sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
       142.5    234.4    -54.2    108.5     1626 

    Scaled residuals: 
          Min        1Q    Median        3Q       Max 
    -0.043800 -0.001733  0.000000  0.000219  0.286249 

    Random effects:
     Groups       Name                         Variance  Std.Dev.  Corr       
     receiver     (Intercept)                  4.456e-03   0.06675            
     sender       (Intercept)                  9.829e+02  31.35175            
                  confidence_centered          2.906e+01   5.39104  1.00      
                  judgment                     1.306e+04 114.27034 -1.00 -1.00
                  confidence_centered:judgment 1.874e+02  13.69098 -0.98 -0.98
     sender:study (Intercept)                  4.712e-01   0.68643            
     study        (Intercept)                  1.454e-01   0.38125            
          
          
          
          
          
      0.98
          
          
    Number of obs: 1643, groups:  
    receiver, 150; sender, 67; sender:study, 67; study, 4

    Fixed effects:
                                  Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -9.194866   0.002018 -4556.2   <2e-16 ***
    confidence_centered          -0.814737   0.003470  -234.8   <2e-16 ***
    judgment                     21.429697   0.001453 14745.0   <2e-16 ***
    confidence_centered:judgment  1.281173   0.001602   799.5   <2e-16 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt
    cnfdnc_cntr  0.269              
    judgment    -0.087  0.017       
    cnfdnc_cnt: -0.036  0.007 -0.088
    optimizer (bobyqa) convergence code: 0 (OK)
    unable to evaluate scaled gradient
    Model failed to converge: degenerate  Hessian with 1 negative eigenvalues

# Hypothesis 4: Variation Across Contexts

*Confidence predicts deception detection accuracy, such that more
confident judgments are more accurate, possibly to a greater extent for
lie judgments than truth judgments, and this tendency varies in
magnitude across contexts.*

There is evidence of variation in the predictive effect of confidence
and judgment type across studies.

``` r
lrt_h4
```

    Data: judgment
    Models:
    glmer_h2_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 | receiver)
    glmer_h4_base: accuracy ~ 1 + confidence_centered * judgment + (1 + confidence_centered + judgment | study) + (1 | study:sender) + (1 | receiver)
    glmer_h4_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 + confidence_centered + judgment + confidence_centered:judgment | study) + (1 | study:sender) + (1 | receiver)
                         npar    AIC    BIC  logLik deviance   Chisq Df Pr(>Chisq)
    glmer_h2_interaction    7 2058.1 2095.9 -1022.1   2044.1                      
    glmer_h4_base          12 2043.4 2108.3 -1009.7   2019.4 24.6665  5  0.0001616
    glmer_h4_interaction   16 2051.4 2137.8 -1009.7   2019.4  0.0605  4  0.9995518
                            
    glmer_h2_interaction    
    glmer_h4_base        ***
    glmer_h4_interaction    
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
summary(glmer_h4_base)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment + (1 + confidence_centered +  
        judgment | study) + (1 | study:sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2043.4   2108.3  -1009.7   2019.4     1631 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.7243 -0.7510 -0.4194  0.7521  5.0655 

    Random effects:
     Groups       Name                Variance Std.Dev. Corr       
     receiver     (Intercept)         0.012402 0.11136             
     study:sender (Intercept)         0.590434 0.76840             
     study        (Intercept)         0.288529 0.53715             
                  confidence_centered 0.004829 0.06949   1.00      
                  judgment            0.433254 0.65822  -1.00 -1.00
    Number of obs: 1643, groups:  receiver, 150; study:sender, 67; study, 4

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)   
    (Intercept)                  -0.34131    0.30854  -1.106  0.26863   
    confidence_centered           0.16753    0.07699   2.176  0.02956 * 
    judgment                      0.55533    0.36944   1.503  0.13280   
    confidence_centered:judgment -0.25537    0.07970  -3.204  0.00135 **
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt
    cnfdnc_cntr  0.393              
    judgment    -0.893 -0.416       
    cnfdnc_cnt: -0.003 -0.514 -0.005
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h4_interaction)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment + (1 + confidence_centered +  
        judgment + confidence_centered:judgment | study) + (1 | study:sender) +  
        (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2051.4   2137.9  -1009.7   2019.4     1627 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.7454 -0.7515 -0.4188  0.7500  5.1060 

    Random effects:
     Groups       Name                         Variance  Std.Dev. Corr             
     receiver     (Intercept)                  0.0132140 0.11495                   
     study:sender (Intercept)                  0.5859329 0.76546                   
     study        (Intercept)                  0.2881175 0.53677                   
                  confidence_centered          0.0035659 0.05972   1.00            
                  judgment                     0.4350575 0.65959  -1.00 -1.00      
                  confidence_centered:judgment 0.0004564 0.02136   1.00  1.00 -1.00
    Number of obs: 1643, groups:  receiver, 150; study:sender, 67; study, 4

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)  
    (Intercept)                  -0.34142    0.30824  -1.108   0.2680  
    confidence_centered           0.15922    0.08203   1.941   0.0523 .
    judgment                      0.55451    0.37000   1.499   0.1340  
    confidence_centered:judgment -0.23590    0.11263  -2.094   0.0362 *
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt
    cnfdnc_cntr  0.316              
    judgment    -0.893 -0.332       
    cnfdnc_cnt:  0.080 -0.593 -0.096
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

# Hypothesis 5: Variation Across Receivers

*Confidence predicts deception detection accuracy, such that more
confident judgments are more accurate, possibly to a greater extent for
lie judgments than truth judgments, and this tendency varies in
magnitude across receivers.*

As one would expect from past literature, receivers vary extremely
little in their ability to detect deception, and there is no evidence
that receivers vary in their confidence-accuracy calibration.

``` r
lrt_h5
```

    Data: judgment
    Models:
    glmer_h2_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 | receiver)
    glmer_h5_base: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 + confidence_centered + judgment | receiver)
    glmer_h5_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 + confidence_centered + judgment + confidence_centered:judgment | receiver)
                         npar    AIC    BIC  logLik deviance  Chisq Df Pr(>Chisq)
    glmer_h2_interaction    7 2058.1 2095.9 -1022.1   2044.1                     
    glmer_h5_base          12 2068.1 2132.9 -1022.0   2044.1 0.0278  5          1
    glmer_h5_interaction   16 2076.1 2162.5 -1022.0   2044.1 0.0177  4          1

``` r
summary(glmer_h5_base)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) +  
        (1 + confidence_centered + judgment | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2068.1   2132.9  -1022.0   2044.1     1631 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.5144 -0.7756 -0.4135  0.7497  4.6735 

    Random effects:
     Groups       Name                Variance  Std.Dev. Corr       
     receiver     (Intercept)         0.0272077 0.16495             
                  confidence_centered 0.0002426 0.01557  -1.00      
                  judgment            0.0002295 0.01515  -1.00  1.00
     sender:study (Intercept)         0.6930718 0.83251             
     study        (Intercept)         0.0353789 0.18809             
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -0.58140    0.17524  -3.318 0.000908 ***
    confidence_centered           0.11500    0.05793   1.985 0.047141 *  
    judgment                      1.15670    0.11785   9.815  < 2e-16 ***
    confidence_centered:judgment -0.28157    0.08005  -3.518 0.000435 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt
    cnfdnc_cntr  0.003              
    judgment    -0.322 -0.034       
    cnfdnc_cnt: -0.004 -0.721 -0.010
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h5_interaction)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) +  
        (1 + confidence_centered + judgment + confidence_centered:judgment |  
            receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2076.1   2162.5  -1022.0   2044.1     1627 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.5157 -0.7754 -0.4138  0.7500  4.7118 

    Random effects:
     Groups       Name                         Variance  Std.Dev. Corr             
     receiver     (Intercept)                  2.821e-02 0.167963                  
                  confidence_centered          1.831e-05 0.004279 -1.00            
                  judgment                     2.070e-04 0.014386 -1.00  1.00      
                  confidence_centered:judgment 2.492e-04 0.015785 -1.00  1.00  1.00
     sender:study (Intercept)                  6.932e-01 0.832576                  
     study        (Intercept)                  3.536e-02 0.188042                  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -0.58122    0.17525  -3.317 0.000911 ***
    confidence_centered           0.11480    0.05790   1.983 0.047373 *  
    judgment                      1.15670    0.11788   9.813  < 2e-16 ***
    confidence_centered:judgment -0.28178    0.08014  -3.516 0.000438 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt
    cnfdnc_cntr  0.006              
    judgment    -0.322 -0.038       
    cnfdnc_cnt: -0.006 -0.718 -0.010
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

# Hypothesis 6: Detectable Context Specificity

*Confidence predicts deception detection accuracy, such that more
confident judgments are more accurate, to a greater extent for lie
judgments than truth judgments, specifically in situations in which
judgments tend to be more accurate.*

Contrary to this hypothesis, confidence for lie judgments was negatively
associated with accuracy in contexts where accuracy was lower and not
significantly associated with accuracy in contexts where accuracy was
higher. Confidence for truth judgments was positively associated with
accuracy in contexts where accuracy was higher.

``` r
lrt_h6
```

    Data: judgment
    Models:
    glmer_h2_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 | receiver)
    glmer_h6_base: accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered + (1 | study/sender) + (1 | receiver)
    glmer_h6_interaction: accuracy ~ 1 + confidence_centered * judgment * detectability_study_centered + (1 | study/sender) + (1 | receiver)
                         npar    AIC    BIC  logLik deviance   Chisq Df Pr(>Chisq)
    glmer_h2_interaction    7 2058.1 2095.9 -1022.1   2044.1                      
    glmer_h6_base           8 2054.6 2097.9 -1019.3   2038.6  5.4785  1  0.0192515
    glmer_h6_interaction   11 2042.3 2101.8 -1010.2   2020.3 18.3103  3  0.0003796
                            
    glmer_h2_interaction    
    glmer_h6_base        *  
    glmer_h6_interaction ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
summary(glmer_h6_base)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered +  
        (1 | study/sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2054.6   2097.9  -1019.3   2038.6     1635 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.5474 -0.7757 -0.4133  0.7539  4.7336 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.02509  0.1584  
     sender:study (Intercept) 0.62375  0.7898  
     study        (Intercept) 0.00000  0.0000  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -0.59548    0.14327  -4.156 3.23e-05 ***
    confidence_centered           0.11528    0.05772   1.997 0.045800 *  
    judgment                      1.15865    0.11677   9.923  < 2e-16 ***
    detectability_study_centered  6.32445    2.57121   2.460 0.013905 *  
    confidence_centered:judgment -0.28361    0.07891  -3.594 0.000325 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__
    cnfdnc_cntr  0.008                     
    judgment    -0.393 -0.036              
    dtctblty_s_ -0.075  0.005  0.071       
    cnfdnc_cnt: -0.011 -0.730  0.011 -0.030
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h6_interaction)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment * detectability_study_centered +  
        (1 | study/sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2042.3   2101.8  -1010.2   2020.3     1632 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.5129 -0.7643 -0.4150  0.7456  4.8137 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.02177  0.1475  
     sender:study (Intercept) 0.60969  0.7808  
     study        (Intercept) 0.00000  0.0000  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                                               Estimate Std. Error
    (Intercept)                                                -0.51521    0.14479
    confidence_centered                                         0.15038    0.06472
    judgment                                                    0.87009    0.13496
    detectability_study_centered                               12.53102    3.05070
    confidence_centered:judgment                               -0.24177    0.09429
    confidence_centered:detectability_study_centered            1.88757    1.60574
    judgment:detectability_study_centered                     -13.23044    3.33427
    confidence_centered:judgment:detectability_study_centered   0.76848    2.36062
                                                              z value Pr(>|z|)    
    (Intercept)                                                -3.558 0.000373 ***
    confidence_centered                                         2.324 0.020144 *  
    judgment                                                    6.447 1.14e-10 ***
    detectability_study_centered                                4.108 4.00e-05 ***
    confidence_centered:judgment                               -2.564 0.010342 *  
    confidence_centered:detectability_study_centered            1.176 0.239789    
    judgment:detectability_study_centered                      -3.968 7.25e-05 ***
    confidence_centered:judgment:detectability_study_centered   0.326 0.744771    
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__ cnfd_: cn_:__ jdg:__
    cnfdnc_cntr  0.022                                          
    judgment    -0.419 -0.044                                   
    dtctblty_s_ -0.001  0.017 -0.217                            
    cnfdnc_cnt: -0.024 -0.684 -0.029 -0.012                     
    cnfdnc_c:__  0.012  0.437 -0.016  0.023 -0.302              
    jdgmnt:dt__ -0.144 -0.024  0.498 -0.539 -0.040 -0.036       
    cnfdnc_::__ -0.023 -0.297 -0.048 -0.009  0.531 -0.684 -0.034
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
interactions_h6
```

    █████████████████████ While judgment (2nd moderator) = 1.00 ████████████████████ 

    JOHNSON-NEYMAN INTERVAL 

    When detectability_study_centered is INSIDE the interval [-0.23, -0.01],
    the slope of confidence_centered is p < .05.

    Note: The range of observed values of detectability_study_centered is
    [-0.06, 0.06]

    SIMPLE SLOPES ANALYSIS 

    Slope of confidence_centered when detectability_study_centered = -0.03351836: 

       Est.   S.E.   z val.      p
    ------- ------ -------- ------
      -0.18   0.06    -3.19   0.00

    Slope of confidence_centered when detectability_study_centered = -0.06444493: 

       Est.   S.E.   z val.      p
    ------- ------ -------- ------
      -0.26   0.09    -3.00   0.00

    Slope of confidence_centered when detectability_study_centered =  0.04231498: 

      Est.   S.E.   z val.      p
    ------ ------ -------- ------
      0.02   0.13     0.17   0.87

    Slope of confidence_centered when detectability_study_centered =  0.05564831: 

      Est.   S.E.   z val.      p
    ------ ------ -------- ------
      0.06   0.15     0.38   0.70

    █████████████████████ While judgment (2nd moderator) = 0.00 ████████████████████ 

    JOHNSON-NEYMAN INTERVAL 

    When detectability_study_centered is INSIDE the interval [-0.02, 0.05], the
    slope of confidence_centered is p < .05.

    Note: The range of observed values of detectability_study_centered is
    [-0.06, 0.06]

    SIMPLE SLOPES ANALYSIS 

    Slope of confidence_centered when detectability_study_centered = -0.03351836: 

      Est.   S.E.   z val.      p
    ------ ------ -------- ------
      0.09   0.06     1.37   0.17

    Slope of confidence_centered when detectability_study_centered = -0.06444493: 

      Est.   S.E.   z val.      p
    ------ ------ -------- ------
      0.03   0.10     0.30   0.76

    Slope of confidence_centered when detectability_study_centered =  0.04231498: 

      Est.   S.E.   z val.      p
    ------ ------ -------- ------
      0.23   0.11     2.05   0.04

    Slope of confidence_centered when detectability_study_centered =  0.05564831: 

      Est.   S.E.   z val.      p
    ------ ------ -------- ------
      0.26   0.13     1.95   0.05

## Robustness check: Controlling for judgments per study

``` r
lrt_h6_rc
```

    Data: judgment
    Models:
    glmer_h2_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 | receiver)
    glmer_h6_base_rc: accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered + n_judgments_study + (1 | study/sender) + (1 | receiver)
    glmer_h6_interaction_rc: accuracy ~ 1 + confidence_centered * judgment * detectability_study_centered + n_judgments_study + (1 | study/sender) + (1 | receiver)
                            npar    AIC    BIC  logLik deviance   Chisq Df
    glmer_h2_interaction       7 2058.1 2095.9 -1022.1   2044.1           
    glmer_h6_base_rc           9 2056.6 2105.2 -1019.3   2038.6  5.5168  2
    glmer_h6_interaction_rc   12 2044.4 2109.3 -1010.2   2020.4 18.1863  3
                            Pr(>Chisq)    
    glmer_h2_interaction                  
    glmer_h6_base_rc         0.0633941 .  
    glmer_h6_interaction_rc  0.0004026 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
summary(glmer_h6_base_rc)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered +  
        n_judgments_study + (1 | study/sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2056.6   2105.2  -1019.3   2038.6     1634 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.5509 -0.7749 -0.4126  0.7541  4.7412 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.02507  0.1583  
     sender:study (Intercept) 0.62314  0.7894  
     study        (Intercept) 0.00000  0.0000  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                   Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -5.715e-01  1.882e-01  -3.036 0.002397 ** 
    confidence_centered           1.151e-01  5.773e-02   1.994 0.046153 *  
    judgment                      1.159e+00  1.168e-01   9.925  < 2e-16 ***
    detectability_study_centered  6.131e+00  2.748e+00   2.231 0.025672 *  
    n_judgments_study            -6.419e-05  3.278e-04  -0.196 0.844727    
    confidence_centered:judgment -2.833e-01  7.893e-02  -3.589 0.000332 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__ n_jdg_
    cnfdnc_cntr -0.004                            
    judgment    -0.291 -0.036                     
    dtctblty_s_ -0.285  0.010  0.061              
    n_jdgmnts_s -0.649  0.015 -0.015  0.356       
    cnfdnc_cnt:  0.006 -0.730  0.011 -0.036 -0.023
    fit warnings:
    Some predictor variables are on very different scales: consider rescaling
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h6_interaction_rc)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment * detectability_study_centered +  
        n_judgments_study + (1 | study/sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2044.4   2109.3  -1010.2   2020.4     1631 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.4762 -0.7686 -0.4157  0.7493  4.7585 

    Random effects:
     Groups       Name        Variance  Std.Dev.
     receiver     (Intercept) 1.987e-02 0.140969
     sender:study (Intercept) 6.074e-01 0.779341
     study        (Intercept) 2.560e-10 0.000016
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                                                Estimate Std. Error
    (Intercept)                                               -5.000e-01  1.896e-01
    confidence_centered                                        1.434e-01  6.448e-02
    judgment                                                   8.537e-01  1.348e-01
    detectability_study_centered                               1.203e+01  3.229e+00
    n_judgments_study                                         -1.759e-05  3.265e-04
    confidence_centered:judgment                              -2.354e-01  9.403e-02
    confidence_centered:detectability_study_centered           1.698e+00  1.599e+00
    judgment:detectability_study_centered                     -1.291e+01  3.333e+00
    confidence_centered:judgment:detectability_study_centered  8.201e-01  2.354e+00
                                                              z value Pr(>|z|)    
    (Intercept)                                                -2.637 0.008371 ** 
    confidence_centered                                         2.224 0.026156 *  
    judgment                                                    6.334 2.38e-10 ***
    detectability_study_centered                                3.725 0.000195 ***
    n_judgments_study                                          -0.054 0.957043    
    confidence_centered:judgment                               -2.503 0.012300 *  
    confidence_centered:detectability_study_centered            1.062 0.288311    
    judgment:detectability_study_centered                      -3.874 0.000107 ***
    confidence_centered:judgment:detectability_study_centered   0.348 0.727545    
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__ n_jdg_ cnfd_: cn_:__ jdg:__
    cnfdnc_cntr  0.011                                                 
    judgment    -0.301 -0.045                                          
    dtctblty_s_ -0.217  0.018 -0.217                                   
    n_jdgmnts_s -0.648  0.008 -0.028  0.336                            
    cnfdnc_cnt: -0.017 -0.684 -0.028 -0.011 -0.003                     
    cnfdnc_c:__  0.015  0.436 -0.017  0.018 -0.007 -0.301              
    jdgmnt:dt__ -0.086 -0.025  0.501 -0.519 -0.038 -0.040 -0.036       
    cnfdnc_::__ -0.033 -0.296 -0.048 -0.001  0.023  0.531 -0.683 -0.034
    fit warnings:
    Some predictor variables are on very different scales: consider rescaling
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

# Hypothesis 7: Detectable Sender Specificity

*Confidence predicts deception detection accuracy, such that more
confident judgments are more accurate, to a greater extent for lie
judgments than truth judgments, specifically for more detectable
senders.*

Contrary to this hypothesis, confidence for lie judgments was
consistently negatively associated with accuracy, and confidence for
truth judgments is positively associated with accuracy for more
detectable senders.

``` r
lrt_h7
```

    Data: judgment
    Models:
    glmer_h2_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 | receiver)
    glmer_h7_base: accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered + (1 | study/sender) + (1 | receiver)
    glmer_h7_interaction: accuracy ~ 1 + confidence_centered * judgment * detectability_sender_centered + (1 | study/sender) + (1 | receiver)
                         npar    AIC    BIC   logLik deviance    Chisq Df
    glmer_h2_interaction    7 2058.1 2095.9 -1022.06   2044.1            
    glmer_h7_base           8 2054.6 2097.9 -1019.32   2038.6   5.4785  1
    glmer_h7_interaction   11 1875.6 1935.0  -926.79   1853.6 185.0590  3
                         Pr(>Chisq)    
    glmer_h2_interaction               
    glmer_h7_base           0.01925 *  
    glmer_h7_interaction    < 2e-16 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
summary(glmer_h7_base)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered +  
        (1 | study/sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2054.6   2097.9  -1019.3   2038.6     1635 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.5474 -0.7757 -0.4133  0.7539  4.7336 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.02509  0.1584  
     sender:study (Intercept) 0.62375  0.7898  
     study        (Intercept) 0.00000  0.0000  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -0.59548    0.14327  -4.156 3.23e-05 ***
    confidence_centered           0.11528    0.05772   1.997 0.045800 *  
    judgment                      1.15865    0.11677   9.923  < 2e-16 ***
    detectability_study_centered  6.32445    2.57121   2.460 0.013905 *  
    confidence_centered:judgment -0.28361    0.07891  -3.594 0.000325 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__
    cnfdnc_cntr  0.008                     
    judgment    -0.393 -0.036              
    dtctblty_s_ -0.075  0.005  0.071       
    cnfdnc_cnt: -0.011 -0.730  0.011 -0.030
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h7_interaction)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment * detectability_sender_centered +  
        (1 | study/sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      1875.6   1935.0   -926.8   1853.6     1632 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -6.6054 -0.7348 -0.2765  0.7067  3.4032 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.04008  0.2002  
     sender:study (Intercept) 0.00000  0.0000  
     study        (Intercept) 0.00000  0.0000  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                                               Estimate Std. Error
    (Intercept)                                                -0.54266    0.08009
    confidence_centered                                         0.10339    0.05665
    judgment                                                    1.23091    0.11757
    detectability_sender_centered                               2.69059    0.49667
    confidence_centered:judgment                               -0.28067    0.08382
    confidence_centered:detectability_sender_centered           1.28956    0.37502
    judgment:detectability_sender_centered                      5.28678    0.78011
    confidence_centered:judgment:detectability_sender_centered -1.34430    0.54945
                                                               z value Pr(>|z|)    
    (Intercept)                                                 -6.776 1.24e-11 ***
    confidence_centered                                          1.825 0.068025 .  
    judgment                                                    10.470  < 2e-16 ***
    detectability_sender_centered                                5.417 6.05e-08 ***
    confidence_centered:judgment                                -3.348 0.000813 ***
    confidence_centered:detectability_sender_centered            3.439 0.000585 ***
    judgment:detectability_sender_centered                       6.777 1.23e-11 ***
    confidence_centered:judgment:detectability_sender_centered  -2.447 0.014419 *  
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__ cnfd_: cn_:__ jdg:__
    cnfdnc_cntr  0.069                                          
    judgment    -0.658 -0.046                                   
    dtctblty_s_ -0.046 -0.045  0.033                            
    cnfdnc_cnt: -0.042 -0.674 -0.003  0.027                     
    cnfdnc_c:__ -0.051 -0.039  0.037  0.039  0.022              
    jdgmnt:dt__  0.023  0.035  0.162 -0.634 -0.071 -0.019       
    cnfdnc_::__  0.035  0.024 -0.062 -0.026  0.178 -0.683 -0.095
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
interactions_h7
```

    █████████████████████ While judgment (2nd moderator) = 1.00 ████████████████████ 

    JOHNSON-NEYMAN INTERVAL 

    When detectability_sender_centered is INSIDE the interval [-0.21, 0.13],
    the slope of confidence_centered is p < .05.

    Note: The range of observed values of detectability_sender_centered is
    [-0.50, 0.50]

    SIMPLE SLOPES ANALYSIS 

    Slope of confidence_centered when detectability_sender_centered = -0.1561 (Lower tercile median): 

       Est.   S.E.   z val.      p
    ------- ------ -------- ------
      -0.17   0.07    -2.39   0.02

    Slope of confidence_centered when detectability_sender_centered =  0.0306 (Middle tercile median): 

       Est.   S.E.   z val.      p
    ------- ------ -------- ------
      -0.18   0.07    -2.66   0.01

    Slope of confidence_centered when detectability_sender_centered =  0.1173 (Upper tercile median): 

       Est.   S.E.   z val.      p
    ------- ------ -------- ------
      -0.18   0.09    -2.04   0.04

    █████████████████████ While judgment (2nd moderator) = 0.00 ████████████████████ 

    JOHNSON-NEYMAN INTERVAL 

    When detectability_sender_centered is OUTSIDE the interval [-0.25, 0.01],
    the slope of confidence_centered is p < .05.

    Note: The range of observed values of detectability_sender_centered is
    [-0.50, 0.50]

    SIMPLE SLOPES ANALYSIS 

    Slope of confidence_centered when detectability_sender_centered = -0.1561 (Lower tercile median): 

       Est.   S.E.   z val.      p
    ------- ------ -------- ------
      -0.10   0.08    -1.18   0.24

    Slope of confidence_centered when detectability_sender_centered =  0.0306 (Middle tercile median): 

      Est.   S.E.   z val.      p
    ------ ------ -------- ------
      0.14   0.06     2.49   0.01

    Slope of confidence_centered when detectability_sender_centered =  0.1173 (Upper tercile median): 

      Est.   S.E.   z val.      p
    ------ ------ -------- ------
      0.25   0.07     3.62   0.00

## Robustness check: Controlling for judgments per sender

``` r
lrt_h7_rc
```

    Data: judgment
    Models:
    glmer_h2_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 | receiver)
    glmer_h7_base_rc: accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered + n_judgments_sender + (1 | study/sender) + (1 | receiver)
    glmer_h7_interaction_rc: accuracy ~ 1 + confidence_centered * judgment * detectability_sender_centered + n_judgments_sender + (1 | study/sender) + (1 | receiver)
                            npar    AIC    BIC   logLik deviance    Chisq Df
    glmer_h2_interaction       7 2058.1 2095.9 -1022.06   2044.1            
    glmer_h7_base_rc           9 2056.6 2105.2 -1019.29   2038.6   5.5259  2
    glmer_h7_interaction_rc   12 1876.2 1941.1  -926.12   1852.2 186.3429  3
                            Pr(>Chisq)    
    glmer_h2_interaction                  
    glmer_h7_base_rc           0.06311 .  
    glmer_h7_interaction_rc    < 2e-16 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
summary(glmer_h7_base_rc)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered +  
        n_judgments_sender + (1 | study/sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      2056.6   2105.2  -1019.3   2038.6     1634 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.5512 -0.7748 -0.4126  0.7542  4.7421 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.02506  0.1583  
     sender:study (Intercept) 0.62307  0.7893  
     study        (Intercept) 0.00000  0.0000  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                   Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -0.5753050  0.1703943  -3.376 0.000735 ***
    confidence_centered           0.1150857  0.0577268   1.994 0.046193 *  
    judgment                      1.1589138  0.1167647   9.925  < 2e-16 ***
    detectability_study_centered  6.1050950  2.7605325   2.212 0.026997 *  
    n_judgments_sender           -0.0005291  0.0024281  -0.218 0.827511    
    confidence_centered:judgment -0.2832173  0.0789249  -3.588 0.000333 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__ n_jdg_
    cnfdnc_cntr -0.002                            
    judgment    -0.323 -0.036                     
    dtctblty_s_ -0.256  0.010  0.061              
    n_jdgmnts_s -0.541  0.015 -0.015  0.363       
    cnfdnc_cnt:  0.003 -0.730  0.011 -0.036 -0.023
    fit warnings:
    Some predictor variables are on very different scales: consider rescaling
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h7_interaction_rc)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment * detectability_sender_centered +  
        n_judgments_sender + (1 | study/sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      1876.2   1941.1   -926.1   1852.2     1631 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -6.9807 -0.7296 -0.2766  0.7057  3.3244 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.0391   0.1977  
     sender:study (Intercept) 0.0000   0.0000  
     study        (Intercept) 0.0000   0.0000  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                                                 Estimate
    (Intercept)                                                -0.4251964
    confidence_centered                                         0.1015436
    judgment                                                    1.2330101
    detectability_sender_centered                               2.6195726
    n_judgments_sender                                         -0.0010560
    confidence_centered:judgment                               -0.2790340
    confidence_centered:detectability_sender_centered           1.2871284
    judgment:detectability_sender_centered                      5.3269218
    confidence_centered:judgment:detectability_sender_centered -1.3703438
                                                               Std. Error z value
    (Intercept)                                                 0.1264045  -3.364
    confidence_centered                                         0.0565699   1.795
    judgment                                                    0.1178312  10.464
    detectability_sender_centered                               0.4963790   5.277
    n_judgments_sender                                          0.0009092  -1.161
    confidence_centered:judgment                                0.0836586  -3.335
    confidence_centered:detectability_sender_centered           0.3737388   3.444
    judgment:detectability_sender_centered                      0.7817411   6.814
    confidence_centered:judgment:detectability_sender_centered  0.5496762  -2.493
                                                               Pr(>|z|)    
    (Intercept)                                                0.000769 ***
    confidence_centered                                        0.072652 .  
    judgment                                                    < 2e-16 ***
    detectability_sender_centered                              1.31e-07 ***
    n_judgments_sender                                         0.245456    
    confidence_centered:judgment                               0.000852 ***
    confidence_centered:detectability_sender_centered          0.000573 ***
    judgment:detectability_sender_centered                     9.48e-12 ***
    confidence_centered:judgment:detectability_sender_centered 0.012667 *  
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__ n_jdg_ cnfd_: cn_:__ jdg:__
    cnfdnc_cntr  0.030                                                 
    judgment    -0.347 -0.047                                          
    dtctblty_s_ -0.084 -0.038  0.018                                   
    n_jdgmnts_s -0.774  0.017 -0.088  0.080                            
    cnfdnc_cnt: -0.024 -0.674 -0.002  0.023 -0.002                     
    cnfdnc_c:__ -0.011 -0.033  0.035  0.039 -0.022  0.018              
    jdgmnt:dt__  0.078  0.029  0.173 -0.636 -0.087 -0.067 -0.018       
    cnfdnc_::__ -0.029  0.021 -0.063 -0.023  0.063  0.181 -0.682 -0.099
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

## Robustness check: Split groups of studies

``` r
lrt_h7_real
```

    Data: filter(judgment, study == "press_conf")
    Models:
    glmer_h2_real: accuracy ~ 1 + confidence_centered * judgment + (1 | study:sender) + (1 | sender) + (1 | receiver)
    glmer_h7_base_real: accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered + (1 | study:sender) + (1 | sender) + (1 | receiver)
    glmer_h7_interaction_real: accuracy ~ 1 + confidence_centered * judgment * detectability_sender_centered + (1 | study:sender) + (1 | sender) + (1 | receiver)
                              npar    AIC    BIC  logLik deviance  Chisq Df
    glmer_h2_real                7 1421.6 1457.3 -703.81   1407.6          
    glmer_h7_base_real           7 1421.6 1457.3 -703.81   1407.6   0.00  0
    glmer_h7_interaction_real   11 1269.9 1325.8 -623.93   1247.9 159.77  4
                              Pr(>Chisq)    
    glmer_h2_real                           
    glmer_h7_base_real                      
    glmer_h7_interaction_real  < 2.2e-16 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
summary(glmer_h2_real)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: accuracy ~ 1 + confidence_centered * judgment + (1 | study:sender) +  
        (1 | sender) + (1 | receiver)
       Data: filter(judgment, study == "press_conf")
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      1421.6   1457.3   -703.8   1407.6     1193 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.8289 -0.7008 -0.4173  0.6921  5.4479 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.00000  0.0000  
     sender       (Intercept) 0.74414  0.8626  
     study:sender (Intercept) 0.04763  0.2182  
    Number of obs: 1200, groups:  receiver, 150; sender, 8; study:sender, 8

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -1.08157    0.33123  -3.265  0.00109 ** 
    confidence_centered           0.07567    0.06964   1.086  0.27728    
    judgment                      1.55984    0.13976  11.161  < 2e-16 ***
    confidence_centered:judgment -0.25740    0.09312  -2.764  0.00570 ** 
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt
    cnfdnc_cntr  0.022              
    judgment    -0.240 -0.059       
    cnfdnc_cnt: -0.024 -0.747  0.033
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h7_base_real)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered +  
        (1 | study:sender) + (1 | sender) + (1 | receiver)
       Data: filter(judgment, study == "press_conf")
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      1421.6   1457.3   -703.8   1407.6     1193 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.8289 -0.7008 -0.4173  0.6921  5.4479 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.00000  0.0000  
     sender       (Intercept) 0.74414  0.8626  
     study:sender (Intercept) 0.04763  0.2182  
    Number of obs: 1200, groups:  receiver, 150; sender, 8; study:sender, 8

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -1.08157    0.33123  -3.265  0.00109 ** 
    confidence_centered           0.07567    0.06964   1.086  0.27728    
    judgment                      1.55984    0.13976  11.161  < 2e-16 ***
    confidence_centered:judgment -0.25740    0.09312  -2.764  0.00570 ** 
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt
    cnfdnc_cntr  0.022              
    judgment    -0.240 -0.059       
    cnfdnc_cnt: -0.024 -0.747  0.033
    fit warnings:
    fixed-effect model matrix is rank deficient so dropping 1 column / coefficient
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h7_interaction_real)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment * detectability_sender_centered +  
        (1 | study:sender) + (1 | sender) + (1 | receiver)
       Data: filter(judgment, study == "press_conf")
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      1269.9   1325.9   -623.9   1247.9     1189 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -3.1443 -0.6603 -0.2136  0.5508  3.1131 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.01979  0.1407  
     sender       (Intercept) 0.00000  0.0000  
     study:sender (Intercept) 0.00000  0.0000  
    Number of obs: 1200, groups:  receiver, 150; sender, 8; study:sender, 8

    Fixed effects:
                                                               Estimate Std. Error
    (Intercept)                                                -0.84310    0.09950
    confidence_centered                                         0.13799    0.07201
    judgment                                                    1.77553    0.14694
    detectability_sender_centered                              -1.36387    0.79592
    confidence_centered:judgment                               -0.28732    0.10387
    confidence_centered:detectability_sender_centered           2.04745    0.58290
    judgment:detectability_sender_centered                     11.10711    1.13066
    confidence_centered:judgment:detectability_sender_centered -1.68203    0.78471
                                                               z value Pr(>|z|)    
    (Intercept)                                                 -8.473  < 2e-16 ***
    confidence_centered                                          1.916 0.055316 .  
    judgment                                                    12.084  < 2e-16 ***
    detectability_sender_centered                               -1.714 0.086606 .  
    confidence_centered:judgment                                -2.766 0.005670 ** 
    confidence_centered:detectability_sender_centered            3.513 0.000444 ***
    judgment:detectability_sender_centered                       9.824  < 2e-16 ***
    confidence_centered:judgment:detectability_sender_centered  -2.144 0.032072 *  
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__ cnfd_: cn_:__ jdg:__
    cnfdnc_cntr -0.017                                          
    judgment    -0.678  0.010                                   
    dtctblty_s_  0.171 -0.094 -0.118                            
    cnfdnc_cnt:  0.028 -0.690 -0.032  0.068                     
    cnfdnc_c:__ -0.104  0.156  0.077  0.104 -0.121              
    jdgmnt:dt__ -0.137  0.065  0.267 -0.708 -0.076 -0.060       
    cnfdnc_::__  0.080 -0.116 -0.072 -0.076  0.258 -0.745 -0.001
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
lrt_h7_mock
```

    Data: filter(judgment, study != "press_conf")
    Models:
    glmer_h2_mock: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 | receiver)
    glmer_h7_base_mock: accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered + (1 | study/sender) + (1 | receiver)
    glmer_h7_interaction_mock: accuracy ~ 1 + confidence_centered * judgment * detectability_sender_centered + (1 | study/sender) + (1 | receiver)
                              npar    AIC    BIC  logLik deviance   Chisq Df
    glmer_h2_mock                7 616.68 645.34 -301.34   602.68           
    glmer_h7_base_mock           8 615.09 647.84 -299.55   599.09  3.5905  1
    glmer_h7_interaction_mock   11 522.88 567.91 -250.44   500.88 98.2154  3
                              Pr(>Chisq)    
    glmer_h2_mock                           
    glmer_h7_base_mock           0.05811 .  
    glmer_h7_interaction_mock    < 2e-16 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
summary(glmer_h2_mock)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) +  
        (1 | receiver)
       Data: filter(judgment, study != "press_conf")
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
       616.7    645.3   -301.3    602.7      436 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -1.5121 -0.9071  0.5738  0.9086  1.4753 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.000000 0.00000 
     sender:study (Intercept) 0.443127 0.66568 
     study        (Intercept) 0.006615 0.08133 
    Number of obs: 443, groups:  receiver, 150; sender:study, 59; study, 3

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)
    (Intercept)                  -0.02684    0.17181  -0.156    0.876
    confidence_centered           0.16331    0.10256   1.592    0.111
    judgment                      0.10742    0.21122   0.509    0.611
    confidence_centered:judgment -0.23339    0.14977  -1.558    0.119

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt
    cnfdnc_cntr -0.018              
    judgment    -0.572  0.013       
    cnfdnc_cnt:  0.016 -0.702 -0.039
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h7_base_mock)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment + detectability_study_centered +  
        (1 | study/sender) + (1 | receiver)
       Data: filter(judgment, study != "press_conf")
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
       615.1    647.8   -299.5    599.1      435 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -1.5509 -0.8924  0.5646  0.9079  1.6134 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.0000   0.0000  
     sender:study (Intercept) 0.3862   0.6214  
     study        (Intercept) 0.0000   0.0000  
    Number of obs: 443, groups:  receiver, 150; sender:study, 59; study, 3

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)  
    (Intercept)                  -0.09636    0.16588  -0.581   0.5613  
    confidence_centered           0.16546    0.10212   1.620   0.1052  
    judgment                      0.13338    0.20985   0.636   0.5250  
    detectability_study_centered  4.67264    2.43780   1.917   0.0553 .
    confidence_centered:judgment -0.24728    0.14882  -1.662   0.0966 .
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__
    cnfdnc_cntr -0.025                     
    judgment    -0.603  0.013              
    dtctblty_s_ -0.232  0.040  0.091       
    cnfdnc_cnt:  0.030 -0.702 -0.036 -0.093
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h7_interaction_mock)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment * detectability_sender_centered +  
        (1 | study/sender) + (1 | receiver)
       Data: filter(judgment, study != "press_conf")
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
       522.9    567.9   -250.4    500.9      432 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -2.7990 -0.7743  0.2141  0.7875  3.1368 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0        0       
     sender:study (Intercept) 0        0       
     study        (Intercept) 0        0       
    Number of obs: 443, groups:  receiver, 150; sender:study, 59; study, 3

    Fixed effects:
                                                               Estimate Std. Error
    (Intercept)                                                -0.06221    0.15658
    confidence_centered                                         0.20481    0.11040
    judgment                                                    0.19034    0.22087
    detectability_sender_centered                               5.98560    0.87018
    confidence_centered:judgment                               -0.33775    0.15745
    confidence_centered:detectability_sender_centered          -0.11745    0.62845
    judgment:detectability_sender_centered                     -1.43326    1.25633
    confidence_centered:judgment:detectability_sender_centered -0.26875    0.89282
                                                               z value Pr(>|z|)    
    (Intercept)                                                 -0.397   0.6912    
    confidence_centered                                          1.855   0.0636 .  
    judgment                                                     0.862   0.3888    
    detectability_sender_centered                                6.879 6.05e-12 ***
    confidence_centered:judgment                                -2.145   0.0319 *  
    confidence_centered:detectability_sender_centered           -0.187   0.8517    
    judgment:detectability_sender_centered                      -1.141   0.2539    
    confidence_centered:judgment:detectability_sender_centered  -0.301   0.7634    
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt dtct__ cnfd_: cn_:__ jdg:__
    cnfdnc_cntr -0.003                                          
    judgment    -0.709  0.002                                   
    dtctblty_s_ -0.036  0.172  0.026                            
    cnfdnc_cnt:  0.002 -0.701 -0.058 -0.120                     
    cnfdnc_c:__  0.147 -0.192 -0.104 -0.189  0.134              
    jdgmnt:dt__  0.025 -0.119  0.065 -0.693 -0.034  0.131       
    cnfdnc_::__ -0.103  0.135 -0.031  0.133  0.041 -0.704 -0.232
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

# Hypothesis 8: Capable Receiver Specificity

*Confidence predicts deception detection accuracy, such that more
confident judgments are more accurate, to a greater extent for lie
judgments than truth judgments, specifically for receivers who tend to
be more accurate.*

There is no evidence that more capable receivers have better
confidence-accuracy calibration.

``` r
lrt_h8
```

    Data: judgment
    Models:
    glmer_h2_interaction: accuracy ~ 1 + confidence_centered * judgment + (1 | study/sender) + (1 | receiver)
    glmer_h8_base: accuracy ~ 1 + confidence_centered * judgment + ability_receiver_centered + (1 | study/sender) + (1 | receiver)
    glmer_h8_interaction: accuracy ~ 1 + confidence_centered * judgment * ability_receiver_centered + (1 | study/sender) + (1 | receiver)
                         npar    AIC    BIC   logLik deviance    Chisq Df
    glmer_h2_interaction    7 2058.1 2095.9 -1022.06   2044.1            
    glmer_h8_base           8 1902.0 1945.2  -943.00   1886.0 158.1159  1
    glmer_h8_interaction   11 1907.0 1966.4  -942.49   1885.0   1.0197  3
                         Pr(>Chisq)    
    glmer_h2_interaction               
    glmer_h8_base            <2e-16 ***
    glmer_h8_interaction     0.7965    
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
summary(glmer_h8_base)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment + ability_receiver_centered +  
        (1 | study/sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      1902.0   1945.2   -943.0   1886.0     1635 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -3.2622 -0.7007 -0.2983  0.7202  7.7864 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.00000  0.0000  
     sender:study (Intercept) 0.64918  0.8057  
     study        (Intercept) 0.04646  0.2156  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                 Estimate Std. Error z value Pr(>|z|)    
    (Intercept)                  -0.53636    0.18230  -2.942  0.00326 ** 
    confidence_centered           0.12656    0.06010   2.106  0.03523 *  
    judgment                      1.06781    0.12071   8.846  < 2e-16 ***
    ability_receiver_centered     4.84783    0.41286  11.742  < 2e-16 ***
    confidence_centered:judgment -0.34022    0.08202  -4.148 3.35e-05 ***
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt ablt__
    cnfdnc_cntr  0.009                     
    judgment    -0.316 -0.039              
    ablty_rcvr_ -0.005  0.030  0.031       
    cnfdnc_cnt: -0.013 -0.736  0.017 -0.089
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')

``` r
summary(glmer_h8_interaction)
```

    Generalized linear mixed model fit by maximum likelihood (Laplace
      Approximation) [glmerMod]
     Family: binomial  ( logit )
    Formula: 
    accuracy ~ 1 + confidence_centered * judgment * ability_receiver_centered +  
        (1 | study/sender) + (1 | receiver)
       Data: judgment
    Control: glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 1e+05))

         AIC      BIC   logLik deviance df.resid 
      1907.0   1966.4   -942.5   1885.0     1632 

    Scaled residuals: 
        Min      1Q  Median      3Q     Max 
    -3.2091 -0.7003 -0.3094  0.7251  7.9032 

    Random effects:
     Groups       Name        Variance Std.Dev.
     receiver     (Intercept) 0.00000  0.0000  
     sender:study (Intercept) 0.64509  0.8032  
     study        (Intercept) 0.04574  0.2139  
    Number of obs: 1643, groups:  receiver, 150; sender:study, 67; study, 4

    Fixed effects:
                                                           Estimate Std. Error
    (Intercept)                                            -0.54044    0.18180
    confidence_centered                                     0.12754    0.06034
    judgment                                                1.07829    0.12136
    ability_receiver_centered                               5.00947    0.59931
    confidence_centered:judgment                           -0.34530    0.08257
    confidence_centered:ability_receiver_centered          -0.05954    0.41494
    judgment:ability_receiver_centered                     -0.24581    0.84124
    confidence_centered:judgment:ability_receiver_centered -0.30600    0.57195
                                                           z value Pr(>|z|)    
    (Intercept)                                             -2.973  0.00295 ** 
    confidence_centered                                      2.114  0.03455 *  
    judgment                                                 8.885  < 2e-16 ***
    ability_receiver_centered                                8.359  < 2e-16 ***
    confidence_centered:judgment                            -4.182 2.89e-05 ***
    confidence_centered:ability_receiver_centered           -0.143  0.88590    
    judgment:ability_receiver_centered                      -0.292  0.77014    
    confidence_centered:judgment:ability_receiver_centered  -0.535  0.59264    
    ---
    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

    Correlation of Fixed Effects:
                (Intr) cnfdn_ jdgmnt ablt__ cnfd_: cn_:__ jdg:__
    cnfdnc_cntr  0.007                                          
    judgment    -0.318 -0.036                                   
    ablty_rcvr_ -0.023  0.053  0.022                            
    cnfdnc_cnt: -0.012 -0.732  0.000 -0.033                     
    cnfdnc_c:__  0.019 -0.008 -0.024 -0.041  0.006              
    jdgmnt:bl__  0.025 -0.042  0.012 -0.722 -0.053  0.027       
    cnfdnc_::__ -0.006  0.005 -0.050  0.032  0.057 -0.725 -0.089
    optimizer (bobyqa) convergence code: 0 (OK)
    boundary (singular) fit: see help('isSingular')
