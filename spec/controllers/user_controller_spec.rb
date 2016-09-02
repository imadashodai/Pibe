require "spec_helper"
require "rails_helper"
require "model/user"

#Getのテスト
describe UsersController do
    describe 'show' do
        it "assigns the requested user to @user" do
            @user = create(:user)
            get :show, id: user
            expect(assigns(:user)).to eq user
        end
    end
    describe 'create' do
        it "save succcess" do
            expect{
                post :create, user: attributes_for(:user)
            }.to change(User, :count).by(1)
        end
    end
end