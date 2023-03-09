format :html do
  def section_header blurb, button={}
    haml :section_header, blurb: blurb, button: button
  end
end
