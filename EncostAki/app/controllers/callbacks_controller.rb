class CallbacksController < Devise::OmniauthCallbacksController 
    def facebook 
        @member = Member.from_omniauth(request.env["omniauth.auth"]) 
        if @member.persisted? 
            sign_in_and_redirect @member, :event => :authentication
        else
            redirect_to new_member_registration_url
        end
    end
    def failure
        redirect_to root_path
    end
end
