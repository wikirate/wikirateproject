# include_set Abstract::Media

format :html do
  view :profile do
    build_profile
  end

  view(:profile_pic, unknown: true) { field_nest(:image, view: :core) }
  view(:user_name, unknown: true) { render_title }
  view(:job_description, unknown: :blank) { field_nest(:job_title, view: :core) }

  def build_profile
    wrap { haml :profile }
  end
end