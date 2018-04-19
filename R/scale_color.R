#' IFAR scale color
#' @export
scale_color_ifar <- function(..., discrete = FALSE, direction = 1,
                             na.value = "grey50", guide = "colourbar") {
  if (discrete) {
    scale_color_manual(values = c(
      "#ffbf55", "#6a737d", "#cf0630", "#241f20"
    ))
  } else {
    ifar_cont <- readLines(system.file("ifar_cont.txt", package = "ggrazor"))
    if (direction == -1) ifar_cont <- rev(ifar_cont)
    scale_color_gradientn(colours = ifar_cont)
  }
}

#' IFAR scale fill
#' @export
scale_fill_ifar <- function(..., discrete = FALSE, direction = 1,
                            na.value = "grey50", guide = "colourbar") {
  if (discrete) {
    scale_fill_manual(values = c(
      "#ffbf55", "#6a737d", "#cf0630", "#241f20"
    ))
  } else {
    ifar_cont <- readLines(system.file("ifar_cont.txt", package = "ggrazor"))
    if (direction == -1) ifar_cont <- rev(ifar_cont)
    scale_fill_gradientn(colours = ifar_cont)
  }
}

# library(scales)
#
# ifar_cont <- c(
#   seq_gradient_pal(low = "#2A1809", high = "#ce0630")(seq(0, 1, length.out = 172)),
#   seq_gradient_pal(low = "#ce0630", high = "#ffbf55")(seq(0, 1, length.out = 84))
# )
#
# writeLines(ifar_cont, "inst/ifar_cont.txt")
