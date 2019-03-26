format :html do
  def url_prefix menu
    menu == "Org" ? "/" : "https://wikirate.org/"
  end
end
