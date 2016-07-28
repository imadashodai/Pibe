class TeamsController < ApplicationController
    before_action :logged_in_user, only: [:create]
    
    def index
        @teams = Team.all
    end
    
    def show
        @team = Team.find(params[:id])
        @member = User.find_by(team_id: @team.id).all
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
    
    private
    def team_params
        params.require(:team).permit(:name)
    end
end
