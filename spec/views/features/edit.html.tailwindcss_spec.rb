require 'rails_helper'

RSpec.describe "features/edit", type: :view do
  let(:feature) {
    Feature.create!(
      name: "MyString",
      description: "MyString"
    )
  }

  before(:each) do
    assign(:feature, feature)
  end

  it "renders the edit feature form" do
    render

    assert_select "form[action=?][method=?]", feature_path(feature), "post" do

      assert_select "input[name=?]", "feature[name]"

      assert_select "input[name=?]", "feature[description]"
    end
  end
end
