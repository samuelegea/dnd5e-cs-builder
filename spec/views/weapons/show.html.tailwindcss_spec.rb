require 'rails_helper'

RSpec.describe "weapons/show", type: :view do
  before(:each) do
    assign(:weapon, Weapon.create!(
      name: "Name",
      cost_cp: 2,
      weight: 3.5,
      damage_dice: "Damage Dice",
      damage_type: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/Damage Dice/)
    expect(rendered).to match(//)
  end
end
