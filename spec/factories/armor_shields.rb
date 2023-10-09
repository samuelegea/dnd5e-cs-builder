FactoryBot.define do
  factory :armor_shield do
    name { "MyString" }
    base_ac { 1 }
    ac_modifier { 1 }
    cap_ac_modifier { 1 }
    strength { 1 }
    stealth_disadvantage { false }
    weight { 1 }
    cost_cp { 1 }
    don_unit { 1 }
    don_amount { 1 }
    doff_unit { 1 }
    doff_amount { 1 }
    category { 1 }
  end
end
