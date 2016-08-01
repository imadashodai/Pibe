class TeamsController < ApplicationController
    before_action :logged_in_user, only: [:create, :edit]
    
    def index
        @teams = Team.all
    end
    
    def show
        @team = Team.find(params[:id])
        @users = User.where(team_id: @team.id)
        @user = current_user
    end
    
    def new
        @team = Team.new
    end
    
    def create
        @team = Team.new(team_params)
        if @team.save
            flash[:success] = "create team!"
            redirect_to root_path
        else
            redirect_to teams_path
        end
    end

    
    def update
        @user = current_user
        @team = @user.team
        if @team.update(team_params)
            #flash[:success] = '更新されました'
            redirect_to team_path
        else
            render 'edit'
        end
    end
    
    private
    def team_params
        params.require(:team).permit(:avatar,:name)
    end
end
