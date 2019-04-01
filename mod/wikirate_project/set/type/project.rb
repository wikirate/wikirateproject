
format :html do
  bar_cols 12, 0
  before :bar do
    super()
    voo.hide :bar_nav
  end

  view :bar_left do
    text_with_image image: card.field(:image),
                    size: voo.size,
                    title: render_title_link
  end

  view :bar_right do
    ""
  end
end
