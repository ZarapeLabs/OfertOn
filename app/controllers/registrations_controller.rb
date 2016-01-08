class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_devise_params, if: :devise_controller?

  protected

  def after_sign_up_path_for(resource)
    resource.clave = resource.get_clave
    resource.save
    incomplete_company_path(resource.id)
    #'/an/example/path' # Or :prefix_to_your_route
  end

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation)
    end
  end

end
