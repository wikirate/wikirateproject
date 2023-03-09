card_accessor :image, type: :image
card_accessor :job_title, type: :phrase
card_accessor :quotee, type: :phrase
card_accessor :quote, type: :html
card_accessor :detailed_quote, type: :RichText

format :html do
  def edit_fields
    %i[quote detailed_quote quotee job_title image]
  end

  view :core, template: :haml
  view :endorsement, template: :haml
end