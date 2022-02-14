#' Fake a dataset
#' @export 
fake_this <- function(x, ...) {
  checkmate::assert_data_frame(x, min.rows = 2)

  out <- list(
    dataset = tibble::as_tibble(x),
    info = tibble::tibble(
      name = names(x),
      preserve = rep(FALSE, ncol(x)),
      dist = list(NULL)
    )
  )

  structure(out, class = "fake")
}
