card_accessor :partner, type: :pointer

format :html do
  def edit_fields
    %i[image output_type uri file date description partner]
  end

  def date_to_str
    if !card.date.nil? && card.date != ''
      date = ::Date.parse(card.date)
      month = ::Date::ABBR_MONTHNAMES[date.month]
      day = date.day <= 9 ? "0#{date.day.to_s}" : date.day.to_s
      year = date.year
      "#{day} #{month} #{year}"
    else
      nil
    end
  end
  view :box_bottom, template: :haml
  view :core, template: :haml
end
