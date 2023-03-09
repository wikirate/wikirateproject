include_set Abstract::Breadcrumbs
include_set Abstract::SectionHeader

format :html do
  view :core, template: :haml

  def breadcrumb_title
    "Policies"
  end
end