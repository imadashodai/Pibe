class MeetingsController < ApplicationController
    before_action :logged_in_user

    def show
        @user = current_user
        @team = @user.team
        @meeting = Meeting.new
        #チームのメッセージ一覧
        @meetings = @team.meetings
    end

    def create
        @user = current_user
        @team = @user.team
        @meeting = Meeting.new(meeting_params)
		
        if @meeting.save
            redirect_to meeting_path(@team)
        end
    end

    private
    def meeting_params
        params.require(:meeting).permit(:content, :user_id, :team_id, :name)
    end
end
