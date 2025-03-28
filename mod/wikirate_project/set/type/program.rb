card_accessor :goal, type: :phrase
card_accessor :image, type: :image
card_accessor :current_projects, type: :basic
card_accessor :previous_projects, type: :basic

format :html do
  def edit_fields
    %i[goal image current_projects previous_projects]
  end

  view :core, template: :haml
end