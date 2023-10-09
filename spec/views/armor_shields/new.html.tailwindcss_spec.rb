require 'rails_helper'

RSpec.describe "01_armor_shields.rb/new", type: :view do
  before(:each) do
    assign(:armor_shield, ArmorShield.new(
      name: "MyString",
      base_ac: 1,
      ac_modifier: 1,
      cap_ac_modifier: 1,
      strength: 1,
      stealth_disadvantage: false,
      weight: 1,
      cost_cp: 1,
      don_unit: 1,
      don_amount: 1,
      doff_unit: 1,
      doff_amount: 1,
      category: 1
    ))
  end

  it "renders new armor_shield form" do
    render

    assert_select "form[action=?][method=?]", armor_shields_path, "post" do

      assert_select "input[name=?]", "armor_shield[name]"

      assert_select "input[name=?]", "armor_shield[base_ac]"

      assert_select "input[name=?]", "armor_shield[ac_modifier]"

      assert_select "input[name=?]", "armor_shield[cap_ac_modifier]"

      assert_select "input[name=?]", "armor_shield[strength]"

      assert_select "input[name=?]", "armor_shield[stealth_disadvantage]"

      assert_select "input[name=?]", "armor_shield[weight]"

      assert_select "input[name=?]", "armor_shield[cost_cp]"

      assert_select "input[name=?]", "armor_shield[don_unit]"

      assert_select "input[name=?]", "armor_shield[don_amount]"

      assert_select "input[name=?]", "armor_shield[doff_unit]"

      assert_select "input[name=?]", "armor_shield[doff_amount]"

      assert_select "input[name=?]", "armor_shield[category]"
    end
  end
end
