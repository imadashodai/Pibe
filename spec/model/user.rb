class User
    attr_accessor :name, :email, :password, :age
    
    def initialize(name="hoge")
        @name = name
        @email = "hoge@email.com"
        @password = "Geh0"
        @age = 25
    end
    
    def show
        @user = User.find(params[:id])
    end
end