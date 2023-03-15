include_set Abstract::Slider

card_accessor :list, type: :list
card_accessor :description, type: :RichText

format :html do
  def edit_fields
    %i[description list]
  end

  view :core, template: :haml
  view :slider, template: :haml
  view :grid, template: :haml
end