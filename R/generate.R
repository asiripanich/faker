#' Generate fake data
#' @param x an object of `fake` class.
#' @return a list containing a fake dataset ($dataset) and
#'  info of the variables ($info).
#' @export
fake_generate <- function(x, ...) {
    for (i in seq_len(length(x$info$name))) {
        vname <- x$info[i, ][["name"]]
        message("Var: ", vname)
        preserve <- x$info[i, ][["preserve"]]
        fake <- faker(x$dataset[[vname]], skip = preserve)
        x$info[i, ][["dist"]] <- list(fake$dist)
        if (!isTRUE(preserve)) {
            x$dataset[[vname]] <- fake$value
        }
    }
    return(x)
}

learn_dist <- function(x) {
    if (is.numeric(x)) {
        return(summary(x))
    }

    if (is.factor(x)) {
        x <- as.character(x)
    }

    if (is.character(x)) {
        return(table(x, deparse.level = 0))
    }

    stop("Erorr!")
}

#' Returns new values and its distribution.
faker <- function(x, skip = FALSE) {
    if (isTRUE(skip)) {
        return(list(
            dist = NULL,
            value = NULL
        ))
    }

    dist <- learn_dist(x)
    len <- length(x)
    value <- NULL

    if (!checkmate::test_integerish(x) & checkmate::test_numeric(x)) {
      value <- runif(len, min = dist[["Min."]], dist[["Max."]])
    }

    if (checkmate::test_integerish(x)) {
      value <- sample(
        seq(
          from = dist[["Min."]],
          to = dist[["Max."]],
          by = 1
        ),
        size = len,
        replace = TRUE
      )
    }

    if (checkmate::test_character(x) | class(x) == "factor") {
        value <- sample(names(dist), len, replace = TRUE)
    }


    return(
        list(
            dist = dist,
            value = value
        )
    )
}
