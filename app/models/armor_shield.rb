class ArmorShield < ApplicationRecord
  enum ac_modifier: [
    :strength,
    :constitution,
    :dexterity,
    :intelligence,
    :wisdom,
    :charisma
  ], _instance_methods: false

  enum category: [
    :light,
    :medium,
    :heavy,
    :shield
  ], _instance_methods: false

  UNITS = [
    :action,
    :bonus_action,
    :reaction,
    :minute,
    :hour,
    :day
  ].freeze

  enum don_unit: UNITS, _instance_methods: false
  enum doff_unit: UNITS, _instance_methods: false
end
