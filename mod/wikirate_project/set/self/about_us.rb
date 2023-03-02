include_set Abstract::Breadcrumbs
include_set Abstract::InfoPages

format :html do
  view :core, template: :haml

  def breadcrumb_title
    "About us"
  end
end