# no navbox, because it would return different results from WR.org,
# which would be confusing.
format :html do
  view :nav_bar_middle do
    ""
  end

  view :nav_bar_right, template: :haml
end
