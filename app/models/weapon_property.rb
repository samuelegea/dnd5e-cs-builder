class WeaponProperty < ApplicationRecord
  has_many :weapon_property_weapon
  has_many :weapons, through: :weapon_property_weapon
end
