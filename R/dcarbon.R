dcarbon <- function(Time, C, params) {
  
  if (C < params$threshold) {
    dC <- params$r * C
  } else {
    dC <- params$g * (1 - C / params$K)
  }
  
  return(list(dC))
}