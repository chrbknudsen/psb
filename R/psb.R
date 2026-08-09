#' Generate PSB themed palette
#'
#' Use [psb_palette()] to get palettes of the desired length.
#'
#' @export
psb_palette <- function(x){
  psb_palettes[[x]]
}