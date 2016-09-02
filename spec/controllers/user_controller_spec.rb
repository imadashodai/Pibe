require "spec_helper"
require "rails_helper"
require "model/user"

#Getのテスト
describe UsersController do
    describe 'get' do
=begin
        it "render template new" do
            get :new
            expect(response).to render_template :new
        end
=end
        it "save success" do
            expect{
                post :create, user: attributes_for(:user)
            }.to change(User, :count).by(1)
        end
    end
end