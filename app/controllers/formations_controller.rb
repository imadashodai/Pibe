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
        #puts "=================================================="
        #puts "upd_player1======================================="

        #render
    end
    
    private
    def formation_params
    params.require(:formation).permit(:player1_id)
    #, :player2_id, :player3_id, :player4_id, :player5_id, :player6_id, :player7_id, :player8_id, :player9_id, :player10_id, :player11_id
    end
end