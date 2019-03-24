# -*- encoding : utf-8 -*-

class FixinMixins < Card::Migration
  def up
    ensure_card "style: mixins and variables", codename: "style_mixins_and_variables"
  end
end
