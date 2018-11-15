#' Take the root of a numeric
#'@description The Root function will take the root (square, cube, etc, as specified) of a numeric input.
#'
#'@param x the vector or numeric input for which you want to take a root
#'@param y the integer (or non-integer, as long as it's numeric) root that you want to take (ie square root = 2, cube root = 3, etc)
#'@param plot_it Display a plot of \code{x} vs the output? Use logical.
#' \code{FALSE} by default.
#'
#'@return A vector that is the:
#' \itemize{
#'      \item root of the first input (\code{x}.)
#'      \item will default to square root, though specific root can be specified in second argument with a numeric input such as y = 3, 4, 5, 6, etc..
#'}
#'
#'@examples
#'root(27,3)
#'root(c(0.01,1,4,9))
#'root(c(TRUE, FALSE, TRUE), 5)
#'
#'@rdname root
#'@export
#'@details This function was developped as part of homework for STAT547 class. hopefully it is of some use to you!
#'For more details see vignette named powers-vignette
root <- function(x, y = 2, plot_it = FALSE) pow(x, a=1/y, plot_it=plot_it)
