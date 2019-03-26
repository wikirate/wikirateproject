format :html do
  def url_prefix menu
    menu == "About" ? "/" : "https://wikirate.org/"
  end
end
