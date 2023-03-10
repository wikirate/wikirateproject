include_set Abstract::Media
include_set Abstract::Breadcrumbs

card_accessor :description, type: :RichText
card_accessor :fulltext, type: :RichText

format :html do
  def edit_fields
    %i[description fulltext]
  end

  view :box_middle do
    field_nest :description, view: :core
  end

  view :paging do
    policy_names = policy_list_card&.item_names
    return unless (current_index = policy_names&.index card.name)

    haml :paging, policy_names: policy_names, current_index: current_index
  end

  def policy_list_card
    Card[%i[policy list]]
  end

  def expanded?
    root.card == card
  end

  def subheaders
    # start new format so we get fully rendered html (no nest stubs)
    Nokogiri::HTML(card.fulltext_card.format.render_core).css("h2").sort
  end

  view :box_top, template: :haml
  view :box_bottom, template: :haml
  view :sidebar_nav, template: :haml, cache: :never
  view :core, template: :haml
end
