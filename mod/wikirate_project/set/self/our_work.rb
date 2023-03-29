include_set Abstract::Breadcrumbs
include_set Abstract::SectionHeader
include_set Abstract::Slider
include_set Abstract::SocialImage

format :html do

  %i[core open_data why_open_data initiatives].each do |view|
    view view, template: :haml
  end

  def breadcrumb_title
    'Our work'
  end

end