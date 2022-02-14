#' Generate fake data
#' @export
fake_generate <- function(x, ...) {
    for (i in seq_len(length(x$info$name))) {
        preserve <- x$info[i, ][["preserve"]]
        vname <- x$info[i, ][["name"]]
        fake <- faker(x$dataset[[vname]], skip = preserve)
        x$info[i, ][["dist"]] <- list(fake$dist)
        if (!isTRUE(preserve)) {
            x$dataset[[vname]] <- fake$value
        }
    }
    return(x)
}

# purrr::map(x, learn_dist)

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


faker <- function(x, skip = FALSE) {
    dist <- learn_dist(x)
    len <- length(x)
    type <- class(x)
    value <- NULL

    if (!skip && type == "numeric") {
        value <- runif(len, min = dist[["Min."]], dist[["Max."]])
    }

    if (!skip && type == "integer") {
        value <- sample(
            seq(
                from = dist[[1]][["Min."]],
                to = dist[[1]][["Max."]],
                by = 1
            ),
            size = len,
            replace = TRUE
        )
    }

    if (!skip && (type == "character" | type == "factor")) {
        value <- sample(names(dist), len, replace = TRUE)
    }

    return(
        list(
            dist = dist,
            value = value
        )
    )
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