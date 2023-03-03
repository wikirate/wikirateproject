include_set Abstract::Breadcrumbs
include_set Abstract::InfoPages
include_set Abstract::Slider

format :html do

  %i[core open_data why_open_data].each do |view|
    view view, template: :haml
  end

  def breadcrumb_title
    "Our work"
  end
end