require "spec_helper"
require "rails_helper"


RSpec.describe TeamsController,:type => :controller do
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
end