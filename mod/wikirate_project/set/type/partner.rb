include_set Abstract::Media

card_accessor :website
card_accessor :image

format :html do
  bar_cols 12, 0
  before :bar do
    # super()
    # voo.hide :bar_nav
  end

  view :bar_left do
    text_with_image image: card.field(:image),
                    size: voo.size,
                    title: link_to_website
  end

  def link_to_website
    link_to render_title, href: card.website
  end

  view :bar_right do
    ""
  end

  view :core, template: :haml
  view :reference, template: :haml
end
