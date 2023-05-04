include_set Abstract::Breadcrumbs
include_set Abstract::SectionHeader
include_set Abstract::Slider
include_set Abstract::SocialImage

format :html do
  view :core, template: :haml

  def breadcrumb_title
    'Work with us'
  end

end