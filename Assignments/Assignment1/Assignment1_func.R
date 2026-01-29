#' Calculate energy produced by a photovoltaic system
#'
#' @param area Solar panel area in square meters (m^2) 
#' @param radiation Annual average solar radiation in kWh/m^2 
#' @param panel_yield Panel efficiency (0-1), Default is 0.2 
#' @param performance_ratio Performance ratio accounting for losses (0-1), Default is 0.75
#'
#' @returns Energy produced in kWh
#' @export
#'
#' @examples
#' # Calculate evergy for a 20 m^2 system with 1800 kWh/m^2 annual radiation and default panel efficiency and performance ratio values
#' calc_pv_energy(area = 20, radiation = 1800)
#' 
#' # The same calculation can be done with particular panel efficiency and performance ratio values;
#' calc_pv_energy(area = 20, radiation = 1800, panel_yield = 0.25, performance_ratio = 0.8)

energy_produced <- function(area, 
                            radiation, 
                            panel_yield = 0.2,
                            performance_ratio = 0.75) {
  
  energy <- area * panel_yield * radiation * performance_ratio
  
  return(energy)
}