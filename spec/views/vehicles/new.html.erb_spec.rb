require 'rails_helper'

RSpec.describe "vehicles/new", type: :view do
  before(:each) do
    assign(:vehicle, Vehicle.new(
      customer: nil,
      brand: "MyString",
      model: "MyString",
      year: "MyString",
      plate: "MyString"
    ))
  end

  it "renders new vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicles_path, "post" do

      assert_select "input[name=?]", "vehicle[customer_id]"

      assert_select "input[name=?]", "vehicle[brand]"

      assert_select "input[name=?]", "vehicle[model]"

      assert_select "input[name=?]", "vehicle[year]"

      assert_select "input[name=?]", "vehicle[plate]"
    end
  end
end
