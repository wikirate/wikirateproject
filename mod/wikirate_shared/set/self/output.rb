include_set Abstract::Search
include_set Abstract::SearchViews

OUTPUT_TYPE_OPTIONS = %i[publication dashboard case_study].freeze

def item_type_id
  OutputID
end

# needed to avoid name sorting
def cql_content
  { type_id: id }
end

format do
  def filter_cql_class
    OutputFilterCql
  end

  def filter_map
    %i[output_type]
  end

  def default_filter_hash
    { output_type: "" }
  end

  def sort_cql
    { sort: { right: :date.cardname, return: :db_content }, dir: "desc" }
  end
end

format :html do
  view :filter_chips, template: :haml, cache: :never

  view :filtered_content do
    wrap true, class: "_filtered-content nodblclick" do
      [render_filter_chips,
       render_content(home_view: :content, hide: :menu, items: { view: :box })]
    end
  end

  def filter_output_type_options
    OUTPUT_TYPE_OPTIONS - [:case_study]
  end

  def selected_output_types
    Array.wrap(filter_hash[:output_type]).map &:to_name
  end

  def option_selected? option
    selected_output_types.include? option.to_name
  end

  # following not used yet...

  # def export_formats
  #   []
  # end
  #
  # def filter_output_type_type
  #   :radio
  # end
  #
  # def quick_filter_list
  #   filter_output_type_options.map do |otype|
  #     { output_type: otype }
  #   end
  # end
  #
end

# class for managing custom filters for outputs
class OutputFilterCql < Card::FilterCql
  def output_type_cql value
    return unless value.present?

    value = [:in] + value if value.is_a? Array
    add_to_cql :right_plus, [:output_type, { refer_to: value }]
  end
end
