class TeamsController < ApplicationController
    before_action :logged_in_user, only: [:new, :create, :edit]
    
    def index
        @teams = Team.all
        @user = current_user
    end
    
    def show
        @team = Team.find(params[:id])
        @users = User.where(team_id: @team.id)
        @user = current_user
        @team_users = @team.users
    end
    
    def new
        @team = Team.new
        @user = current_user
    end
    
    def create
        @team = Team.new(team_params)
        if @team.save
            flash[:success] = "チーム作成完了!"
            redirect_to root_path
        else
            flash[:notice] = "失敗しました。"
            redirect_to team_path
        end
    end

    
    def update
        @user = current_user
        @team = @user.team
        if @team.update(team_params)
            #flash[:success] = '更新されました'
            redirect_to my_path(@team)
        else
            render 'edit'
        end
    end
    
    private
    def team_params
        params.require(:team).permit(:avatar,:name)
    end
end
