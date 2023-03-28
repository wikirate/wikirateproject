# ~~~~~~~~~~~~~~ slick carousel config

# data-slick should contain json slick config object
# will look for data-slick-selector, if present, within element
$(document).ready ->
  $("[data-slick]").each ->
    el = $(this)
    config = el.data "slick"
    selector = el.data "slick-selector"
    slickEl = selector && el.find(selector) || el
    slickEl.slick config

