#' Fake a dataset
#' @export 
fake_this <- function(x, ...) {
  checkmate::assert_data_frame(x, min.rows = 2)

  out <- list(
    dataset = tibble::as_tibble(x),
    info = tibble::tibble(
      name = names(x),
      preserve = rep(FALSE, ncol(x)),
      dist = purrr::map(x, learn_dist)
    )
  )

  structure(out, class = "fake")
}


learn_dist <- function(x) {
  if (is.numeric(x)) {
    return(summary(x))
  }

  if (is.factor(x)) {
    x <- as.character(x)
  }

  if (is.character(x)) {
    return(table(x, deparse.level = 2))
  }

  stop("Erorr!")
}
