require "spec_helper"
require "rails_helper"


describe TeamsController do
    #before do
    #    @teams = FactoryGirl.create(:team)
    #end
    describe 'index' do
        it "render template index" do
            @team = create(:team)
            get :index
            expect(response).to render_template :index
        end
    end
end