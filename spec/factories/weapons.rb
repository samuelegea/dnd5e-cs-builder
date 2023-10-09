FactoryBot.define do
  factory :weapon do
    name { "MyString" }
    cost_cp { 1 }
    weight { 1.5 }
    damage_dice { "MyString" }
    damage_type { nil }
  end
end
