require "spec_helper"
require "model/team"

describe Team do
    #teamの名前を入れる
    it "is named 'teamhoge'" do
        team = Team.new
        expect(team.name).to eq 'teamhoge'
    end
end