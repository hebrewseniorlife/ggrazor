#' Razor: Another minimalist ggplot theme
#'
#' @inheritParams ggplot2::theme_classic
#' @param stripe_background T/F for whether facet stripes should be colored.
#' It also take color codes.Default is `F`.
#' @param axis_y_title T/F for the display of y axis title as the y axis title
#' is usually displayed through other mechanism in this design. Default is `F`.
#'
#' @export
theme_razor <- function(base_size = 11, base_family = "",
                        stripe_background = FALSE, axis_y_title = FALSE) {
  half_line <- base_size/2
  if (stripe_background == FALSE) {
    stripe_background <- element_blank()
  } else if (stripe_background == TRUE) {
    stripe_background <- element_rect(fill = "#EEEEEE", color = NA)
  } else {
    stripe_background <- element_rect(fill = stripe_background, color = NA)
  }
  if (axis_y_title) {
    axis_y_title <- element_text(color = "#7F7F7F")
  } else {
    axis_y_title <- element_blank()
  }
  theme_classic(base_size = base_size, base_family = base_family) %+replace%
    theme(
      axis.line = element_line(color = "#7F7F7F", size = 0.5),
      axis.text = element_text(color = "#7F7F7F"),
      axis.text.x = element_text(margin = margin(base_size, base_size, base_size, base_size)),
      axis.text.y = element_text(margin = margin(base_size, base_size, base_size, base_size)),
      axis.ticks = element_line(color = "#7F7F7F"),
      axis.ticks.length = unit(-half_line/2, "pt"),
      axis.title = element_text(color = "#7F7F7F"),
      axis.title.y = element_blank(),
      axis.title.x = element_text(hjust = 1),
      plot.subtitle = element_text(color = "#7F7F7F", hjust = 0,
                                   margin = margin(b = half_line)),
      strip.background = stripe_background,
      strip.placement = "outside",
      strip.text = element_text(face = "italic", color = "#7F7F7F",
                                hjust = 0, size = rel(0.8)),
      legend.position = "top",
      legend.title = element_blank(),
      legend.justification = c(1, 1),
      legend.margin = margin(0, 0, 0, 0)
    )
}
