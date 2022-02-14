#' Preserve columns
#' @export 
fake_preserve <- function(x, ...) {
  preserved_varnames <- rlang::exprs(...) %>% as.character()
  x$info$preserve[x$info$name %in% preserved_varnames] <- TRUE
  return(x)
}
