#' Preserve columns
#' @param x an object of `fake` class.
#' @param ... variables to be preserved. Preserved variables
#'  won't be faked.
#' @return a list containing a fake dataset ($dataset) and
#'  info of the variables ($info).Î
#' @export
fake_preserve <- function(x, ...) {
  preserved_varnames <- rlang::exprs(...) %>% as.character()
  x$info$preserve[x$info$name %in% preserved_varnames] <- TRUE
  return(x)
}
