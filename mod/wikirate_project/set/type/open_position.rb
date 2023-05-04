card_accessor :title, type: :phrase
card_accessor :file, type: :file
card_accessor :date, type: :date
card_accessor :list, type: :list
card_accessor :description, type: :basic

format :html do
  def edit_fields
    %i[title date file description list]
  end

  view :core, template: :haml
end