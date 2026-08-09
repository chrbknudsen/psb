#' Complete list of palettes
#'
#' Use [psb_palette()] to get palettes of the desired length.
#'
#' @export
psb_palettes <- list(
  Please = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Actually = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Introspective = c(
    "#eb038b", "#faec03", "#ea1e29", "#02a451", "#eb038b", "#b2208d",
    "#5d308f"
  ),
  Behaviour = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Very = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Bilingual = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Nightlife = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Release = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Fundamental = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Yes = c(
    "#94087f", "#98c105", "#e40014", "#64b9e5", "#ffcd00", "#6362a6",
    "#e50061", "#009233", "#00338c", "#f08b00", "#009cb3"
  ),
  Elysium = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Electric = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Super = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Hotspot = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF"),
  Nonetheless = c("#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF", "#FFFFFF")
)

#' Prints an example of the chosen palette
#'
#' NEEDS UPDATE
#' Use [psb_palette()] to get palettes of the desired length.
#' 
#' @param x Name of album - NEED UPDATE
#' @param ... Additional arguments, currently unused.
#'
#' @return `x`, invisibly.
#' 
#' @export
print.palette <- function(x, ...) {
  pal <- psb_palettes[[x]]
  n <- length(pal)
  graphics::plot.new()
  graphics::plot.window(
    xlim = c(0, n),
    ylim = c(0, 1),
    main = x
  )
  graphics::rect(
    xleft   = 0:(n - 1),
    ybottom = 0,
    xright  = 1:n,
    ytop    = 1,
    col     = pal,
    border  = NA
  )
  graphics::title(main = x) ## er denne faktisk nødvendig?
  invisible(x)
}
