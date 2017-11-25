module MembersHelper
    def showName
        @membername = ''
        str = (current_member.email).scan(/./)
        for i in str
            if i == '@'
                break
            else @membername = @membername + i
            end
        end
    end
    def logged_in_using_omniauth?
      session[:logged_in_using_omniauth].present?
    end
end
