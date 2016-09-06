require "spec_helper"
require "model/user"

describe User do
    before do
        @user = User.new
    end
    #userのカラムにデータを入れる
    it "is named 'hoge'" do
        expect(@user.name).to eq 'hoge'
    end

    it "has email" do
        expect(@user.email).to eq 'hoge@email.com'
    end

    it "has password" do
        expect(@user.password).to eq 'Geh0'
    end

    it "is age" do
        expect(@user.age).to eq 25
    end
end
