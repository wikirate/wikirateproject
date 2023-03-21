include_set Abstract::Breadcrumbs
include_set Abstract::SectionHeader
include_set Abstract::Slider

format :html do

  %i[core open_data why_open_data].each do |view|
    view view, template: :haml
  end

  def breadcrumb_title
    'Our work'
  end

  def social_image
    @social_image = Card[:image_on_socials]&.format(:text)&.render_source
  end

  def social_description
    Card.fetch(:advocacy)&.format(:text)&.text_description
  end
end