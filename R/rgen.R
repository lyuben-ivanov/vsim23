#' Plot `R` Genealogy
#'
#' `rgen()` creates a timeline plot that shows the origins of `R`.
#'
#' @return a plot object
#' @export
#'
#' @examples
#'
#' rgen()
#'
#' @importFrom graphics arrows
#' @importFrom graphics axis
#' @importFrom graphics lines
#' @importFrom graphics par
#' @importFrom graphics strwidth
#' @importFrom graphics text
rgen <- function() {
  def.par = par(no.readonly = TRUE) # save current par() settings

  par(
    cex.axis = 0.86
  )

  scheme_timeline <- c(1958, 1960, 1975)
  names(scheme_timeline) <- c("ALGOL", "Lisp", "Scheme")

  s_timeline <- c(1955, 1966, 1972, 1976)
  names(s_timeline) <- c("FORTRAN", "APL", "C", "S")

  timeline <- c(1955, 1993)

  plot(x = timeline,
       type = "n",
       bty = "n",
       xaxt = "n",
       yaxt = "n",
       ylab = "",
       xlab = "",
       xlim = timeline,
       ylim = c(1, 24)
  )

  # Scheme scheme

  text(
    x = scheme_timeline,
    y = c(5, 11, 8),
    labels = names(scheme_timeline),
    pos = 4,
    xpd = TRUE
  )

  # vertical line

  lines(
    x = rep(dplyr::last(scheme_timeline) - 1, 2),
    y = c(5, 11)
  )

  # horizontal lines

  lines(
    x = c(
      scheme_timeline[1] + strwidth(names(scheme_timeline[1])) + 1,
      dplyr::last(scheme_timeline) - 1
    ),
    y = rep(5, 2)
  )

  lines(
    x = c(
      scheme_timeline[2] + strwidth(names(scheme_timeline[2])) + 1,
      scheme_timeline[length(scheme_timeline)] - 1
    ),
    y = rep(11, 2)
  )

  # arrows

  arrows(
    x0 = dplyr::last(scheme_timeline) - 1,
    x1 = dplyr::last(scheme_timeline),
    y0 = 8,
    y1 = 8,
    angle = 20,
    length = 0.09
  )

  # S scheme

  text(
    x = s_timeline,
    y = c(21, 18, 24, 21),
    labels = names(s_timeline),
    pos = 4,
    xpd = TRUE
  )

  # vertical line
  lines(
    x = rep(s_timeline[length(s_timeline)] - 1, 2),
    y = c(18, 24)
  )

  # horizontal lines

  lines(
    x = c(
      s_timeline[1] + strwidth(names(s_timeline[1])) + 1,
      s_timeline[length(s_timeline)] - 1
    ),
    y = rep(21, 2)
  )

  lines(
    x = c(
      s_timeline[2] + strwidth(names(s_timeline[2])) + 1,
      s_timeline[length(s_timeline)] - 1
    ),
    y = rep(18, 2)
  )

  lines(
    x = c(
      s_timeline[3] + strwidth(names(s_timeline[3])) + 1,
      s_timeline[length(s_timeline)] - 1
    ),
    y = rep(24, 2)
  )

  # arrows

  arrows(
    x0 = dplyr::last(s_timeline) - 1,
    x1 = dplyr::last(s_timeline),
    y0 = 21,
    y1 = 21,
    angle = 20,
    length = 0.09
  )

  # R scheme

  text(
    x = timeline[2],
    y = 14.5,
    labels = "R",
    pos = 4,
    xpd = TRUE
  )

  # vertical line

  lines(
    x = rep(timeline[length(timeline)] - 1, 2),
    y = c(8, 21)
  )

  # horizontal lines

  lines(
    x = c(
      scheme_timeline[length(scheme_timeline)] + strwidth(names(scheme_timeline[length(scheme_timeline)])) + 1,
      timeline[length(timeline)] - 1
    ),
    y = rep(8, 2)
  )

  lines(
    x = c(
      s_timeline[length(s_timeline)] + strwidth(names(s_timeline[length(s_timeline)])) + 1,
      timeline[length(timeline)] - 1
    ),
    y = rep(21, 2)
  )

  # arrows

  arrows(
    x0 = dplyr::last(timeline) - 1,
    x1 = dplyr::last(timeline),
    y0 = 14.5,
    y1 = 14.5,
    angle = 20,
    length = 0.09
  )

# timeline axes

  axis(
    side = 1,
    tick = TRUE,
    at = scheme_timeline,
    labels = scheme_timeline,
    tcl = 0.3,
    mgp = c(-3, -1.5, 0)
  )

  axis(
    side = 1,
    tick = TRUE,
    at = s_timeline,
    labels = s_timeline,
    tcl = -0.3,
    mgp = c(3, 0.5, 0)
  )

  axis(
    side = 1,
    tick = TRUE,
    at = timeline,
    labels = timeline,
    tcl = -0.3,
    mgp = c(3, 0.5, 0)
  )

  par(def.par)
}
