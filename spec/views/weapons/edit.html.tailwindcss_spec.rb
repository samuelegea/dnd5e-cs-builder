require 'rails_helper'

RSpec.describe "weapons/edit", type: :view do
  let(:weapon) {
    Weapon.create!(
      name: "MyString",
      cost_cp: 1,
      weight: 1.5,
      damage_dice: "MyString",
      damage_type: nil
    )
  }

  before(:each) do
    assign(:weapon, weapon)
  end

  it "renders the edit weapon form" do
    render

    assert_select "form[action=?][method=?]", weapon_path(weapon), "post" do

      assert_select "input[name=?]", "weapon[name]"

      assert_select "input[name=?]", "weapon[cost_cp]"

      assert_select "input[name=?]", "weapon[weight]"

      assert_select "input[name=?]", "weapon[damage_dice]"

      assert_select "input[name=?]", "weapon[damage_type_id]"
    end
  end
end
