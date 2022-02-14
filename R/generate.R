#' Generate fake data
#' @export 
fake_generate <- function(x, ...) {
  for (i in seq_len(length(x$info$name))) {
    if (isTRUE(x$info[i, ][["preserve"]])) {
      next()
    }
    vname <- x$info[i, ][["name"]]
    x$dataset[[vname]] <- faker(
      x$info[i, ][["dist"]],
      type = class(x$dataset[[vname]]),
      len = length(x$dataset[[vname]])
    )
  }
  return(x)
}

faker <- function(x, type, len) {
  if (type == "numeric") {
    return(runif(len, min = x[[1]][["Min."]], x[[1]][["Max."]]))
  }
  if (type == "integer") {
    return(
      sample(
        seq(
          from = x[[1]][["Min."]],
          to = x[[1]][["Max."]],
          by = 1
        ),
        size = len,
        replace = TRUE
      )
    )
  }
  if (type == "character" | type == "factor") {
    return(sample(names(x[[1]]), len, replace = TRUE))
  }
  stop("error!")
}

# faker <- function(x) {
#     UseMethod("faker")
# }

# faker.numeric <- function(x) {
#     browser()
#     runif(length(x))
# }

# faker.character <- function(x) {
#     browser()
# }

# faker.factor <- function(x) {
#     browser()
# }
