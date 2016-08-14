class FormationsController < ApplicationController
    before_action :logged_in_user, only: [:edit, :update]

    def index
        @user = User.all
    end
    
    def show
        @formation = Formation.find(params[:id])
    end
    
    def new
        @formation = Formation.new
        
        @user = User.all
    end
    
    def create
        @formation = Formation.new(formation_params)
        respond_to do |format|
            if @formation.save
              format.html
              format.js
            end
        end
    end
    
    def upd_player1
        @player1 = User.find(params[:status])
    end
    
    def upd_player2
        @player2 = User.find(params[:status])
    end
    
    def upd_player3
        @player3 = User.find(params[:status])
    end
    
    def upd_player4
        @player4 = User.find(params[:status])
    end
    
    def upd_player5
        @player5 = User.find(params[:status])
    end
    
    def upd_player6
        @player6 = User.find(params[:status])
    end
    
    def upd_player7
        @player7 = User.find(params[:status])
    end
    
    def upd_player8
        @player8 = User.find(params[:status])
    end
    
    def upd_player9
        @player9 = User.find(params[:status])
    end
    
    def upd_player10
        @player10 = User.find(params[:status])
    end
    
    def upd_player11
        @player11 = User.find(params[:status])
    end
    
    private
    def formation_params
    params.require(:formation).permit(:player1_id, :player2_id, :player3_id, :player4_id, :player5_id, :player6_id, :player7_id, :player8_id, :player9_id, :player10_id, :player11_id)
    #, :player2_id, :player3_id, :player4_id, :player5_id, :player6_id, :player7_id, :player8_id, :player9_id, :player10_id, :player11_id
    end
end