card_accessor :image, type: :image
card_accessor :title, type: :phrase
card_accessor :body, type: :html
card_accessor :link, type: :uri

format :html do
  def edit_fields
    %i[image title body link]
  end

  view :core do
    render_box
  end

  view :box_top do
    field_nest :title, view: :core
  end

  view :box_middle do
    field_nest :image, view: :core
  end

  view :bar_left do
    [field_nest(:title, view: :core)]
  end

  view :stack, template: :haml, wrap: :slot
  view :head_and_lead, template: :haml
  view :image_left_text_right, template: :haml
  view :image_right_text_left, template: :haml
  view :action_card, template: :haml
end