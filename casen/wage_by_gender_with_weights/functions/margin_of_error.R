# these function may look awkward but it is the best way to plug them into ddply()

##########
# Median #
##########

lb_weighted_median <- function(data) {
  set.seed(1234)
  x <- data[,"ingreso_pc"]
  v <- data[,"exp_region"]
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMedian(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.025), 0)
}

lb_weighted_median_dplyr <- function(x,v) {
  set.seed(1234)
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMedian(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.025), 0)
}

ub_weighted_median <- function(data) {
  set.seed(1234)
  x <- data[,"ingreso_pc"]
  v <- data[,"exp_region"]
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMedian(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.975), 0)
}

ub_weighted_median_dplyr <- function(x,v) {
  set.seed(1234)
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMedian(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.975), 0)
}

########
# Mean #
########

lb_weighted_mean <- function(data) {
  set.seed(1234)
  x <- data[,"ingreso_pc"]
  v <- data[,"exp_region"]
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMean(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.025), 0)
}

lb_weighted_mean_dplyr <- function(x,v) {
  set.seed(1234)
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMean(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.025), 0)
}

ub_weighted_mean <- function(data) {
  set.seed(1234)
  x <- data[,"ingreso_pc"]
  v <- data[,"exp_region"]
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMean(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.975), 0)
}

ub_weighted_mean_dplyr <- function(x,v) {
  set.seed(1234)
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMean(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.975), 0)
}

########
# Gini #
########

lb_weighted_gini <- function(data) {
  set.seed(1234)
  x <- data[,"ingreso_pc"]
  v <- data[,"exp_region"]
  b <- one.boot(x, weights = v, FUN = function(x,weights) SciencesPo::Gini(x, weights = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.025), 3)
}

lb_weighted_gini_dplyr <- function(x,v) {
  set.seed(1234)
  b <- one.boot(x, weights = v, FUN = function(x,w) SciencesPo::Gini(x, weights = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.025), 3)
}

ub_weighted_gini <- function(data) {
  set.seed(1234)
  x <- data[,"ingreso_pc"]
  v <- data[,"exp_region"]
  b <- one.boot(x, weights = v, FUN = function(x,weights) SciencesPo::Gini(x, weights = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.975), 3)
}

ub_weighted_gini_dplyr <- function(x,v) {
  set.seed(1234)
  b <- one.boot(x, weights = v, FUN = function(x,w) SciencesPo::Gini(x, weights = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.975), 3)
}
