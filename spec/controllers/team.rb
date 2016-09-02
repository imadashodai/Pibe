factory :team do
    name "team"
    team(:create) do |team|
        3.times do
            create(:user, team: team)
        end
    end
end