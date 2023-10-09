require 'rails_helper'

RSpec.describe "01_armor_shields.rb/show", type: :view do
  before(:each) do
    assign(:armor_shield, ArmorShield.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
  end
end
