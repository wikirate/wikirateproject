format :html do
  def absolutize_edit_fields fields
    fields.map { |cardname| [cardname, { absolute: true }] }
  end

  def material_symbol_tag symbol, opts={}
    add_class opts, "material-symbols-rounded notranslate"
    wrap_with :i, symbol, opts
  end
end
