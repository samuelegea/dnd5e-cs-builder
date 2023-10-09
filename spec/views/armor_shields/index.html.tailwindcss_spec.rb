require 'rails_helper'

RSpec.describe "01_armor_shields.rb/index", type: :view do
  before(:each) do
    assign(:armor_shields, [
      ArmorShield.create!(
        name: "Name",
        base_ac: 2,
        ac_modifier: 3,
        cap_ac_modifier: 4,
        strength: 5,
        stealth_disadvantage: false,
        weight: 6,
        cost_cp: 7,
        don_unit: 8,
        don_amount: 9,
        doff_unit: 10,
        doff_amount: 11,
        category: 12
      ),
      ArmorShield.create!(
        name: "Name",
        base_ac: 2,
        ac_modifier: 3,
        cap_ac_modifier: 4,
        strength: 5,
        stealth_disadvantage: false,
        weight: 6,
        cost_cp: 7,
        don_unit: 8,
        don_amount: 9,
        doff_unit: 10,
        doff_amount: 11,
        category: 12
      )
    ])
  end

  it "renders a list of 01_armor_shields.rb" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(6.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(7.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(8.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(9.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(10.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(11.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(12.to_s), count: 2
  end
end
