class ApplicationController < ActionController::Base
    include Pundit
    protect_from_forgery with: :exception
    rescue_from Pundit::NotAuthorizedError, with: :member_not_authorized
    private
        def member_not_authorized
            flash[:notice] = "Você não tem autorização para isso!"
            redirect_to(request.referrer || root_path)
        end
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password] )
        devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :email, :password, :current_password] )
    end
    
    def update
        @member = Member.find(params[:id])
        @member.update_attribute(:avatar, params[:member][:avatar])
    end
end
