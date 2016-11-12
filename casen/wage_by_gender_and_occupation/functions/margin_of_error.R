# these function may look awkward but it is the best way to plug them into aggregate()

##########
# Median #
##########

lb_median <- function(x) {
  set.seed(1234)
  statistic <- median
  repetitions <- 100
  decimals <- 0
  lb <- 0.025
  n <- length(na.omit(x))
  boot_samples <- matrix(sample(x, size = repetitions * n, replace = TRUE), repetitions, n)
  boot_statistics <- apply(boot_samples, 1, statistic, na.rm = TRUE)
  lower_bound <- quantile(boot_statistics, lb)
  lower_bound <- round(as.vector(lower_bound), decimals)
}

ub_median <- function(x) {
  set.seed(1234)
  statistic <- median
  repetitions <- 100
  decimals <- 0
  lb <- 0.975
  n <- length(na.omit(x))
  boot_samples <- matrix(sample(x, size = repetitions * n, replace = TRUE), repetitions, n)
  boot_statistics <- apply(boot_samples, 1, statistic, na.rm = TRUE)
  upper_bound <- quantile(boot_statistics, lb)
  upper_bound <- round(as.vector(upper_bound), decimals)
}

########
# Mean #
########

lb_mean <- function(x) {
  set.seed(1234)
  statistic <- mean
  repetitions <- 100
  decimals <- 0
  lb <- 0.025
  n <- length(na.omit(x))
  boot_samples <- matrix(sample(x, size = repetitions * n, replace = TRUE), repetitions, n)
  boot_statistics <- apply(boot_samples, 1, statistic, na.rm = TRUE)
  lower_bound <- quantile(boot_statistics, lb)
  lower_bound <- round(as.vector(lower_bound), decimals)
}

ub_mean <- function(x) {
  set.seed(1234)
  statistic <- mean
  repetitions <- 100
  decimals <- 0
  lb <- 0.975
  n <- length(na.omit(x))
  boot_samples <- matrix(sample(x, size = repetitions * n, replace = TRUE), repetitions, n)
  boot_statistics <- apply(boot_samples, 1, statistic, na.rm = TRUE)
  upper_bound <- quantile(boot_statistics, lb)
  upper_bound <- round(as.vector(upper_bound), decimals)
}
