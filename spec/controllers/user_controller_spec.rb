require "spec_helper"
require "rails_helper"

describe UsersController do
    #showのテスト
    describe 'GET #show' do
        before do
            @user = FactoryGirl.create(:user)
        end
        it "assigns the requested user to @user" do
            get :show, id: @user
            expect(assigns(:user)).to eq @user
        end
    end
    #createのテスト
    describe 'POST #create' do
        it 'create the user' do
            expect{
                post :create, user: FactoryGirl.attributes_for(:user)
            }.to change(User, :count).by(1)
        end
    #validationエラーのテスト
        it 'redirect to :new' do
            post :create, user: FactoryGirl.attributes_for(:user, name: nil)
            expect(response).to render_template :new
        end
        #updateのテスト
        it 'change user' do
            #@user = FactoryGirl.create(:user)
            patch :update, id: @user, user: FactoryGirl.attributes_for(:user, name: "テスト")
            user.reload
            expect(user.name).to eq("テスト")
        end
    end
end