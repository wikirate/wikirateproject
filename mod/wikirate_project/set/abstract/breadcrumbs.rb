format :html do
  view :breadcrumbs do
    breadcrumb breadcrumb_items
  end

  def breadcrumb_items
    if defined? breadcrumb_title
      [
        link_to("Home", href: "/"),
        # link_to_card(type, type.name.vary(:plural)),
        breadcrumb_title
      ]
    else
      type = card.type_card
      [
        link_to("Home", href: "/"),
        link_to_card(type, type.name.vary(:plural)),
        card.name
      ]
    end
  end
end