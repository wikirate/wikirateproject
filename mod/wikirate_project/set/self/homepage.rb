include_set Abstract::Slider
include_set Abstract::SocialImage

format :html do
  %i[core animation blogs_events services endorsements contact_us].each do |view|
    view view, template: :haml
  end

  def latest_blogs
    Card.search(type: 'Blog', limit: 2, sort_by: 'create', dir: 'desc')
  end

  def latest_events
    events = Card.search(type: 'Event', limit: 2, sort_by: 'create', dir: 'desc')
    events.delete_if { |event| Date.parse(event.date) < Time.now}
  end

  def endorsements
    Card.fetch('Endorsements')
  end

end