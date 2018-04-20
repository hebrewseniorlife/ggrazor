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
#   seq_gradient_pal(low = "#96CA4E", high = "#6AB6B5")(seq(0, 1, length.out = 172)),
#   seq_gradient_pal(low = "#6AB6B5", high = "#2D82C9")(seq(0, 1, length.out = 84))
# )
#
# show_col(ifar_cont)
#
# writeLines(ifar_cont, "inst/ifar_cont.txt")
