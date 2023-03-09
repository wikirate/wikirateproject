include_set Abstract::Media

card_accessor :description, type: :RichText
card_accessor :full_text, type: :RichText

format :html do
  def edit_fields
    %i[description full_text]
  end

  view :box_middle do
    field_nest :description, view: :core
  end

  view :box_top, template: :haml
  view :box_bottom, template: :haml

  view :core, template: :haml
end
