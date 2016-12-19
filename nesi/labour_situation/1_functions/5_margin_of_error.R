# these function may look awkward but it is the best way to plug them into ddply()

##########
# Median #
##########

lb_weighted_median <- function(data) {
  set.seed(1234)
  x <- data[,"wage"]
  v <- data[,"weight"]
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMedian(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.025), 0)
}

lb_weighted_median_plyr <- function(x,v) {
  set.seed(1234)
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMedian(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.025), 0)
}

ub_weighted_median <- function(data) {
  set.seed(1234)
  x <- data[,"wage"]
  v <- data[,"weight"]
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMedian(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.975), 0)
}

ub_weighted_median_plyr <- function(x,v) {
  set.seed(1234)
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMedian(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.975), 0)
}

########
# Mean #
########

lb_weighted_mean <- function(data) {
  set.seed(1234)
  x <- data[,"wage"]
  v <- data[,"weight"]
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMean(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.025), 0)
}

lb_weighted_mean_plyr <- function(x,v) {
  set.seed(1234)
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMean(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.025), 0)
}

ub_weighted_mean <- function(data) {
  set.seed(1234)
  x <- data[,"wage"]
  v <- data[,"weight"]
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMean(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.975), 0)
}

ub_weighted_mean_plyr <- function(x,v) {
  set.seed(1234)
  b <- one.boot(x, weights = v, FUN = function(x,w) matrixStats::weightedMean(x, w = v, na.rm = TRUE), R = 100, student = FALSE)
  round(perc(b, 0.975), 0)
}
