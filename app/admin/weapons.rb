ActiveAdmin.register Weapon do

  permit_params :name, :cost, :weight, :damage_dice, :damage_type_id, :weapon_type

  index do
    selectable_column
    column :name
    column :cost
    column :weight do |w| "#{w.weight} lb."; end
    column :damage do |w| "#{w.damage_dice} #{w.damage_type.name.titleize}" if w.damage_dice? ; end
    column :weapon_type do |w| w.weapon_type.titleize; end
    column :weapon_properties do |w|
      w.weapon_property_weapon.map do |wpw|
        wpw.weapon_property.name + (wpw.alternative_damage_dice.present? ? " (#{wpw.alternative_damage_dice})" : '') + (wpw.short_range.present? ? " (#{wpw.short_range}/#{wpw.long_range})" : '')
      end
    end
    actions
  end
end
