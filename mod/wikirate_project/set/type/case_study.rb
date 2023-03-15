card_accessor :link, type: :uri
card_accessor :image, type: :image
card_accessor :description, type: :basic
card_accessor :participants, type: :list

format :html do
  def edit_fields
    %i[link image description participants]
  end

  view :core, template: :haml
end