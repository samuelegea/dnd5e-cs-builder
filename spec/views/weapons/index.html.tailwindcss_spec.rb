require 'rails_helper'

RSpec.describe "weapons/index", type: :view do
  before(:each) do
    assign(:weapons, [
      Weapon.create!(
        name: "Name",
        cost_cp: 2,
        weight: 3.5,
        damage_dice: "Damage Dice",
        damage_type: nil
      ),
      Weapon.create!(
        name: "Name",
        cost_cp: 2,
        weight: 3.5,
        damage_dice: "Damage Dice",
        damage_type: nil
      )
    ])
  end

  it "renders a list of weapons" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Damage Dice".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
