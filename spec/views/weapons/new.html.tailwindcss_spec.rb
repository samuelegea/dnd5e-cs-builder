require 'rails_helper'

RSpec.describe "weapons/new", type: :view do
  before(:each) do
    assign(:weapon, Weapon.new(
      name: "MyString",
      cost_cp: 1,
      weight: 1.5,
      damage_dice: "MyString",
      damage_type: nil
    ))
  end

  it "renders new weapon form" do
    render

    assert_select "form[action=?][method=?]", weapons_path, "post" do

      assert_select "input[name=?]", "weapon[name]"

      assert_select "input[name=?]", "weapon[cost_cp]"

      assert_select "input[name=?]", "weapon[weight]"

      assert_select "input[name=?]", "weapon[damage_dice]"

      assert_select "input[name=?]", "weapon[damage_type_id]"
    end
  end
end
