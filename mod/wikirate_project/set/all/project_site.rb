format do
  def shared_url_prefix project=true
    project ? "/" : "https://wikirate.org/"
  end

  def nav_menus
    super.slice "About"
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