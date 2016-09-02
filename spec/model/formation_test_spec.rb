require "spec_helper"
require "model/formation"

describe Formation do
    before do
        @formation = Formation.new
    end
    #フォーメーションのカラムにデータを入れる
    it "is named 'formationhoge'" do
        expect(@formation.name).to eq 'formationhoge'
    end
    
    it "sets player1" do
        expect(@formation.player1).to eq 'hoge1'
    end
    
    it "sets player2" do
        expect(@formation.player2).to eq 'hoge2'
    end
    
    it "sets player3" do
        expect(@formation.player3).to eq 'hoge3'
    end
    
    it "sets player4" do
        expect(@formation.player4).to eq 'hoge4'
    end
    
    it "sets player5" do
        expect(@formation.player5).to eq 'hoge5'
    end
    
    it "sets player6" do
        expect(@formation.player6).to eq 'hoge6'
    end
    
    it "sets player7" do
        expect(@formation.player7).to eq 'hoge7'
    end
    
    it "sets player8" do
        expect(@formation.player8).to eq 'hoge8'
    end
    
    it "sets player9" do
        expect(@formation.player9).to eq 'hoge9'
    end
    
    it "sets player10" do
        expect(@formation.player10).to eq 'hoge10'
    end
    
    it "sets player11" do
        expect(@formation.player11).to eq 'hoge11'
    end
end