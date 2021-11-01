format do
  def shared_url_prefix project=true
    if project
      "/"
    elsif Env.host&.match?(/staging/)
      "https://staging.wikirate.org/"
    else
      "https://wikirate.org/"
    end
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