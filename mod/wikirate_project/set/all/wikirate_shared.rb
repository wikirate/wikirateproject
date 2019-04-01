format do
  def shared_url_prefix project=true
    project ? "/" : "https://wikirate.org/"
  end
end
