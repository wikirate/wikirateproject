include_set Abstract::Breadcrumbs
include_set Abstract::InfoPages
include_set Abstract::Slider

format :html do
  view :core, template: :haml

  def breadcrumb_title
    "Policies"
  end
end