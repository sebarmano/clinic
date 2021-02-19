require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        customer: nil,
        brand: "Brand",
        model: "Model",
        year: "Year",
        plate: "Plate"
      ),
      Vehicle.create!(
        customer: nil,
        brand: "Brand",
        model: "Model",
        year: "Year",
        plate: "Plate"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Brand".to_s, count: 2
    assert_select "tr>td", text: "Model".to_s, count: 2
    assert_select "tr>td", text: "Year".to_s, count: 2
    assert_select "tr>td", text: "Plate".to_s, count: 2
  end
end
