include_set Abstract::Breadcrumbs
include_set Abstract::InfoPages
include_set Abstract::Slider

format :html do

  %i[core donate].each do |view|
    view view, template: :haml
  end

  def breadcrumb_title
    "Funding"
  end
end