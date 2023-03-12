format :html do
  def section_header blurb, button: {}, header_size: "h2"
    haml :section_header,
         blurb: blurb,
         button: button,
         header_size: header_size,
         yielded: (yield if block_given?)
  end
end
