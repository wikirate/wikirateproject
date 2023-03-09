card_accessor :image, type: :image
card_accessor :date, type: :date
card_accessor :start_time, type: :phrase
card_accessor :end_time, type: :phrase
card_accessor :timezone, type: :phrase
card_accessor :location, type: :phrase
card_accessor :link, type: :uri
card_accessor :event_type, type: :list

format :html do
  def edit_fields
    %i[image date start_time end_time timezone location link event_type]
  end

  def event_types
    card.fetch(:event_type).item_names
  end

  view :summary, template: :haml
  view :core, template: :haml
end