# no navbox, because it would return different results from WR.org,
# which would be confusing.
format :html do
  view :nav_bar_left, template: :haml
  view :nav_bar_right, template: :haml

  view :nav_bar_middle do
    ""
  end

  #
  #   link_to render_platform_title, href:
  # end
  #
  # view :platform_title, template: :haml
end
