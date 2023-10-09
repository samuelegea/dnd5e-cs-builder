ActiveAdmin.register ArmorShield do

  permit_params :name, :description, :base_ac, :ac_modifier, :cap_ac_modifier, :strength, :stealth_disadvantage, :weight, :cost_cp, :don_unit, :don_amount, :doff_unit, :doff_amount, :category

  index do
    id_column
    column :name
    column :description
    column :ac do |armor_shield|
      "#{armor_shield.base_ac} #{armor_shield.ac_modifier? ? '+' : ''}
       #{armor_shield.ac_modifier&.titleize}" +
        (armor_shield.cap_ac_modifier ? " (max #{armor_shield.cap_ac_modifier})" : '')
    end
    column :category do |armor_shield| armor_shield.category.titleize; end
    column :strength
    column :stealth_disadvantage
    column :weight do |armor_shield| "#{armor_shield.weight} lb."; end
    column :cost do |armor_shield| "#{armor_shield.cost_cp/100} gp"; end
    column :don do |armor_shield| "#{armor_shield.don_amount} #{armor_shield.don_unit.pluralize(armor_shield.don_amount)}"; end
    column :doff do |armor_shield| "#{armor_shield.doff_amount} #{armor_shield.doff_unit.pluralize(armor_shield.doff_amount)}"; end
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :category, as: :select, collection: ArmorShield.categories.keys.map { |category| [category.titleize, category] }
      f.input :stealth_disadvantage, as: :boolean, input_html: { checked: false }
      f.input :description
      f.input :strength
      f.input :weight, label: 'Weight (lb)'
      f.input :cost_cp, label: 'Cost (cp)'

      f.inputs 'Armor Class' do
        f.input :base_ac
        f.input :ac_modifier
        f.input :cap_ac_modifier
      end

      f.inputs 'Don/Doff' do
        f.input :don_unit, as: :select, collection: ArmorShield.don_units.keys.map { |unit| [unit.titleize, unit] }
        f.input :don_amount
        f.input :doff_unit, as: :select, collection: ArmorShield.doff_units.keys.map { |unit| [unit.titleize, unit] }
        f.input :doff_amount
      end

    end
    f.actions
  end
end
