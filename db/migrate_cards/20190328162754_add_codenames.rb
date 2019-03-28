# -*- encoding : utf-8 -*-

class AddCodenames < Card::Migration
  def up
    %w[description overview bio
       Partner Project Program Publication].each do |name|
      ensure_card! name, codename: name.downcase
    end
    ensure_card! "title", codename: "job_title"
    ensure_card! "email", codename: "public_email"
  end
end
