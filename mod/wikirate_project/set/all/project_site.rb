NAV_MENU = {
  'About us' => 'About_us',
  'Our work' => 'Our_work',
  'Events' => 'Events'
}.freeze

SOCIALS = {
  "GitHub" => "https://github.com/wikirate/wikirate",
  "Medium" => "https://wikirate.medium.com/",
  "LinkedIn" => "https://www.linkedin.com/company/wikirate",
  "Twitter" => "https://twitter.com/WikiRate",
  "Facebook" => "https://www.facebook.com/wikirate/",
  "Instagram" => "https://www.instagram.com/wikirate/"
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

  def og_title
    "#{card.name} - Wikirate International e.V."
  end
end

format :html do
  view :count_badge_label do
    simple_count_badge_label
  end

  view :favicon_tag, unknown: true, perms: :none do
    %(<link rel="shortcut icon" href="/mod/wikirate_project/favicon_original.svg" />)
  end
end

format :html do
  view :content_with_anchored_headers do
    wrap { [render_menu, render_core_with_anchored_headers] }
  end

  view :core_with_anchored_headers, cache: :never do
    # start new format so we get fully rendered html (no nest stubs)
    n = Nokogiri::HTML render_core
    n.css("h1, h2, h3, h4, h5, h6").each { |h| h.wrap header_anchor(h) }
    n.to_html
  end

  private

  def header_anchor header
    "<a class='header-anchor' name='#{header.text.to_name.key}'></a>"
  end

  view :infobox do
    wrap { wrap_with("div", class: "wr-infobox") { render_core } }
  end
end