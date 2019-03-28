format :html do
  view :box_middle do
    field_nest :image, view: :content
  end

  view :box_bottom do
    field_nest :file, view: :core, title: "File"
  end
end