include_set Abstract::Thumbnail
include_set Abstract::Media

card_accessor :project, type: :pointer

format :html do
  # before :expanded_bar do
  #   super()
  #   voo.hide :bar_collapse_link
  # end

  view :bar_left do
    text_with_image image: card.field(:image),
                    size: voo.size,
                    title: render_title_link
  end

  # view :bar_right do
  #   count_badges :project, :partner
  # end

  view :bar_bottom do
    field_nest :overview, view: :core
  end
end
