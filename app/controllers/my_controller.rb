class MyController < ApplicationController
    before_action :logged_in_user, only: [:create]
    
    def show
        @user = current_user
        @team = @user.team
        @team_users = @team.users
    end
end
