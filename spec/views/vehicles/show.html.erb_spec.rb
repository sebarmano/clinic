require 'rails_helper'

RSpec.describe "vehicles/show", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      customer: nil,
      brand: "Brand",
      model: "Model",
      year: "Year",
      plate: "Plate"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Plate/)
  end
end
