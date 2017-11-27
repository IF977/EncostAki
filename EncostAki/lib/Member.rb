class Member 
    attr_accessor :email, :password, :provider, :uid
    def initialize
        @email = "pvls@cin.ufpe.br"
        @password = "12345678"
        @provider = "Facebook"
        @uid = "12345"
    end
end