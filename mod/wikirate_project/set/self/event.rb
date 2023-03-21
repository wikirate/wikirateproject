include_set Abstract::Breadcrumbs
include_set Abstract::SectionHeader

format :html do
  view :core, template: :haml

  def breadcrumb_title
    "Events"
  end

  def social_image
    @social_image = Card[:image_on_socials]&.format(:text)&.render_source
  end

  def social_description
    Card.fetch(:events_description)&.format(:text)&.text_description
  end
end