include_set Abstract::Breadcrumbs
include_set Abstract::SectionHeader
include_set Abstract::Slider

format :html do

  %i[core donate].each do |view|
    view view, template: :haml
  end

  def breadcrumb_title
    "Funding"
  end

  def social_image
    @social_image = Card[:image_on_socials]&.format(:text)&.render_source
  end

  def social_description
    Card.fetch(:funding_introduction)&.format(:text)&.text_description
  end
end