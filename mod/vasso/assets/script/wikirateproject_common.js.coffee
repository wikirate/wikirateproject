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

# This is implemented narrowly and will only work on the our work page

$(document).ready ->
# add new output type filter
  $("body").on "click", "._output-filter-option", (e) ->
    e.preventDefault()
    option = $(this).data "option"
    restrictTo [option].concat(currentOptions())

  # remove output type filter
  $("body").on "click", "._remove-output-filter", (e) ->
    e.preventDefault()
    restrictTo currentOptions($(this).parent()[0])

currentOptions = (except)->
  curr = []
  $("._current-output-filter").each ->
    curr.push $(this).data("option") unless this == except
  curr

restrictTo = (types) ->
  url = decko.path "Our_work" + "?" + $.param(filter: {output_type: types})
  window.location = url
