card_accessor :partner, type: :pointer

format :html do
  def edit_fields
    %i[image output_type uri file date description partner]
  end

  view :core do
    render_page
  end

  view :page, template: :haml
  view :titled, :page
  view :box_bottom, template: :haml
  view :core, template: :haml
end
