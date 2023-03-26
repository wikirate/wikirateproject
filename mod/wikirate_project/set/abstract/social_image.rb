format do
  def social_image
    Card[:image_on_socials]&.format(:text)&.render_source
  end
end
