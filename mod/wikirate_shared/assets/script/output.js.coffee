# TODO: generalize

# This is implemented narrowly and will only work on the impacts page, but the
# pattern could be improved to be more reusable and to use AJAX

$(document).ready ->
# add new output type filter
  $("body").on "click", "._output-filter-option", (e) ->
    e.preventDefault()
    option = $(this).data "option"
    restrictTo this, [option].concat(currentOptions())

  # remove output type filter
  $("body").on "click", "._remove-output-filter", (e) ->
    e.preventDefault()
    restrictTo this, currentOptions($(this).parent()[0])

  # remove output type filter
  $("body").on "click", "._output-filter-clear", (e) ->
    e.preventDefault()
    restrictTo this, []


currentOptions = (except)->
  curr = []
  $("._current-output-filter").each ->
    curr.push $(this).data("option") unless this == except
  curr

restrictTo = (el, types) ->
  s = $(el).slot()
  s.slotReload(s.slotUrl() + $.param(filter: { output_type: types }))

