#'#' Apply a useful root
#'
#'
#'@param x the vector for which you want the root
#'@param y the integer root that you want to take (ie square root = 2, cube root = 3, etc)
#'@param plot_it Display a plot of \code{x} vs the output? Use logical.
#' \code{FALSE} by default.
#'
#'@return A vector that is the:
#' \itemize{
#'      \item root (for \code{root})
#'}
#'  of \code{x}.
#'
#'
#'@rdname root
#'@export
root <- function(x, y, plot_it = FALSE) pow(x, a=1/y, plot_it=plot_it)

