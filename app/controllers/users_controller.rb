class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  
  def show
    @user = User.find(params[:id])
    @team = @user.team
    if @team != nil
      @team_users = @team.users
    end
  end
  
  def new
    @user = User.new
    @teams = Team.all
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "let' login!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update(user_params)
      flash[:success] = '更新されました'
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def member
    @team = Team.find(params[:id])
    @user = User.find_by(team_id: @team.id)
    @member = User.find_by(id: @user.team_id)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:avatar, :name, :age, :email, :password, :password_confirmation, :team_id)
  end
end
