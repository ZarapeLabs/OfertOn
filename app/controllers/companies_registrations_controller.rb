class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    edit_company_path(resource.id)
    #'/an/example/path' # Or :prefix_to_your_route
  end
end
