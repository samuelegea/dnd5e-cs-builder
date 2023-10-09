class Weapon < ApplicationRecord
  belongs_to :damage_type, optional: true
  has_many :weapon_property_weapon, dependent: :destroy
  has_many :weapon_properties, through: :weapon_property_weapon

  enum weapon_type: [
    :simple_melee,
    :simple_ranged,
    :martial_melee,
    :martial_ranged,
    :ammunition,
  ]

  def cost=(cost)
    self.cost_cp = cost_conversion(cost)
  end

  def cost
    # It defaults to gold pieces, since it's standard

    "#{self.cost_cp.to_f / 100} gp"
  end

  def self.ransackable_associations(auth_object = nil)
    ["damage_type", "weapon_properties", "weapon_property_weapon"]
  end

  private

  COST_MAP = {
    'cp' => 1,
    'sp' => 10,
    'ep' => 50,
    'gp' => 100,
    'pp' => 1000,
  }

  def cost_conversion(cost)
    amount, unit = cost.split(' ')

    amount.to_i * COST_MAP[unit]
  end
end
