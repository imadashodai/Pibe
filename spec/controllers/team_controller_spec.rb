require "spec_helper"
require "rails_helper"


RSpec.describe TeamsController,:type => :controller do
    #indexのテスト
    describe 'GET #index' do
        it "responds successfully with an HTTP 200 status code"do
            expect(response).to be_success
            expect(response).to have_http_status(200)
        end
        
        it "renders the inex template" do
            get :index
            expect(response).to render_template("index")
        end
    end
    #createのテスト
    describe 'POST #create' do
        it "save success" do
            expect{
                post :create, team: FactoryGirl.attributes_for(:team)
            }.to change(Team, :count).by(1)
        end
    end
    
end