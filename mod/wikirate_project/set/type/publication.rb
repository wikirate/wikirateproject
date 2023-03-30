card_accessor :uri, type: :uri
card_accessor :file, type: :file
card_accessor :year, type: :year
card_accessor :image, type: :image
card_accessor :description, type: :basic
card_accessor :participants, type: :list
card_accessor :date, type: :date

format :html do
  def edit_fields
    %i[date year image description uri file participants]
  end

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

  view :core, template: :haml
end