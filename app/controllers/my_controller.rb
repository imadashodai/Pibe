class MyController < ApplicationController
    before_action :logged_in_user

    def show
        @user = current_user
		@team = @user.team

		if @user.team != nil
        	@team_users = @team.users
		else
			flash[:warning] = "チームを登録してください！"
			redirect_to @user
		end
    end

    def edit
        @user = current_user
        @team = @user.team
    end
end
