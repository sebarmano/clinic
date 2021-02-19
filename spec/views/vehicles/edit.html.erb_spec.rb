require 'rails_helper'

RSpec.describe "vehicles/edit", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      customer: nil,
      brand: "MyString",
      model: "MyString",
      year: "MyString",
      plate: "MyString"
    ))
  end

  it "renders the edit vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do

      assert_select "input[name=?]", "vehicle[customer_id]"

      assert_select "input[name=?]", "vehicle[brand]"

      assert_select "input[name=?]", "vehicle[model]"

      assert_select "input[name=?]", "vehicle[year]"

      assert_select "input[name=?]", "vehicle[plate]"
    end
  end
end
