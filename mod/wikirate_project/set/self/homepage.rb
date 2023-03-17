include_set Abstract::Slider

format :html do
  %i[core animation blogs_events services endorsements contact_us].each do |view|
    view view, template: :haml
  end

  def latest_blogs
    Card.search(type: 'Blog', limit: 2, sort_by: 'create', dir: 'desc')
  end

  def latest_events
    Card.search(type: 'Event', limit: 2, sort_by: 'create', dir: 'desc')
  end

  def social_image
    @social_image = 'https://dq06ugkuram52.cloudfront.net/files/79/40132733-large.png'
  end

  def social_description
    Card.fetch(:social_description).content
  end

  def og_site_name
    'Wikirate International e.V.'
  end

  def og_title
    "#{card.name} - Wikirate International e.V."
  end

  def endorsements
    Card.fetch('Endorsements')
  end
end