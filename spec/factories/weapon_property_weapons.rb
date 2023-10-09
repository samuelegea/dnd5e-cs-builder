FactoryBot.define do
  factory :weapon_property_weapon do
    weapon { nil }
    weapon_property { nil }
    short_range { 1 }
    long_rage { 1 }
    alternative_damage_dice { "MyString" }
  end
end
