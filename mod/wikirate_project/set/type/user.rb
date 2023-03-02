include_set Abstract::Media

format :html do
  bar_cols 8, 4
  before :expanded_bar do
    # super()
    voo.hide :bar_expanded_nav
  end

  view :bar_left do
    text_with_image image: card.field(:image),
                    size: voo.size,
                    title: render_title,
                    text: field_nest(:job_title, view: :core)
  end

  view :bar_right do
    wrap_with :div, class: "w-100 text-center" do
      field_nest :public_email, view: :core
    end
  end

  view :bar_bottom do
    field_nest :bio, view: :content
  end
end
