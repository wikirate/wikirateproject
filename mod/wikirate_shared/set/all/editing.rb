format :html do
  def absolutize_edit_fields fields
    fields.map { |cardname| [cardname, { absolute: true }] }
  end
end
