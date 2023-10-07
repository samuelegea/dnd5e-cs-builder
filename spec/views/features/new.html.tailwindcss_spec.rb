require 'rails_helper'

RSpec.describe "features/new", type: :view do
  before(:each) do
    assign(:feature, Feature.new(
      name: "MyString",
      description: "MyString"
    ))
  end

  it "renders new feature form" do
    render

    assert_select "form[action=?][method=?]", features_path, "post" do

      assert_select "input[name=?]", "feature[name]"

      assert_select "input[name=?]", "feature[description]"
    end
  end
end
