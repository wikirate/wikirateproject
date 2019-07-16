# no navbox, because it would return different results from WR.org,
# which would be confusing.
format :html do
  view :nav_bar_left, template: :haml

  view :nav_bar_middle do
    ""
  end

  view :nav_bar_right do
    link_to render_platform_title, href: shared_url_prefix(project=false)
  end

  view :platform_title, template: :haml
end
