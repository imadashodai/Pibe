class MyController < ApplicationController
    before_action :logged_in_user
    
    def show
        @user = current_user
        @team = @user.team
        @team_users = @team.users
    end
    
    def edit
        @user = current_user
        @team = @user.team
    end
end
