#' Generate PSB themed palette
#'
#' Use [psb_palette()] to get palettes of the desired length.
#'
#' @param x name of psb album NEED UPDATE
#' 
#' @export
psb_palette <- function(x){
  psb_palettes[[x]]
}