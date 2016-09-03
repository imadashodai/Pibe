require "spec_helper"
require "rails_helper"

#Getのテスト
describe UsersController do
    describe 'GET #show' do
        before do
            @user = FactoryGirl.create(:user)
        end
        it "assigns the requested user to @user" do
            get :show, id: @user
            expect(assigns(:user)).to eq @user
        end
    end
    
    describe 'POST #create' do
        it 'create the user' do
            expect{
                post :create, user: FactoryGirl.attributes_for(:user)
            }.to change(User, :count).by(1)
        end
    end
end