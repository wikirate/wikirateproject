card_accessor :uri
card_accessor :file

format :html do
  view :box_middle do
    field_nest :image, view: :content
  end

  view :box_bottom do
    if card.file.present?
      field_nest :file, view: :core, title: " File"
    else
      link_to "Go to Page", href: card.uri
    end
  end
end