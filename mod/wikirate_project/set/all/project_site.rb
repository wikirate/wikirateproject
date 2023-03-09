NAV_MENU = {
  'About us' => 'About_us',
  'Our work' => 'Our_work',
  'Events' => 'Events'
}.freeze

SOCIALS = {
  'Facebook' => 'https://www.facebook.com/wikirate/',
  'Twitter' => 'https://twitter.com/WikiRate',
  'Instagram' => 'https://www.instagram.com/wikirate/',
  'LinkedIn' => 'https://www.linkedin.com/company/wikirate'
}.freeze

format :html do
  def shared_url_prefix project = true
    project ? '/' : "https://#{wr_subdomain}wikirate.org/"
  end

  def social_media_links
    SOCIALS
  end

  def nav_menu
    NAV_MENU
  end

  def nav_item_ref item_name
    NAV_MENU[item_name] || item_name
  end

  def nav_help?
    false
  end
end

format :html do
  view :count_badge_label do
    simple_count_badge_label
  end
end