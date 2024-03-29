---
title: "Intro to Propensity Score Analysis"
author: "Jason Bryer"
#featured_image: "/images/2021-11-30-Intro_to_Shiny.png"
date: 2019-02-28
categories: ["Meetup"]
tags: ["R", "PSA"]
---


The use of propensity score methods (Rosenbaum & Rubin, 1983) for estimating causal eff
ects in observational studies or certain kinds of quasi-experiments has been increasing in the social sciences (Thoemmes & Kim, 2011) and in medical research (Austin, 2008) in the last decade. Propensity score analysis (PSA) attempts to adjust selection bias that occurs due to the lack of randomization. Analysis is typically conducted in two phases where in phase I, the probability of placement in the treatment is estimated to identify matched pairs or clusters so that in phase II, comparisons on the dependent variable can be made between matched pairs or within clusters. R (R Core Team, 2012) is ideal for conducting PSA given its wide availability of the most current statistical methods vis-à-vis add-on packages as well as its superior graphics capabilities.

This talk will provide a theoretical overview of propensity score methods as well as illustrations and discussion of PSA applications. Methods used in phase I of PSA (i.e. models or methods for estimating propensity scores) include logistic regression, classification trees, and matching. Discussions on appropriate comparisons and estimations of effect size and confidence intervals in phase II will also be covered. The use of graphics for diagnosing covariate balance as well as summarizing overall results will be emphasized.

Meetup page: https://www.meetup.com/Albany-R-Users-Group/events/258674208/

Slides: https://albanyrusers.org/slides/2021-11-30-Intro_to_Shiny
