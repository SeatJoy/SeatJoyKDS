#https://github.com/plataformatec/devise#configuring-views

class Admins::SessionsController < Devise::SessionsController

  layout "admin"

  def after_sign_in_path_for(resource)
    admin_url
  end
end
