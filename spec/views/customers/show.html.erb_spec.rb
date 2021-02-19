require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      first_name: "First Name",
      last_name: "Last Name",
      phone: "Phone",
      email: "Email",
      address: "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Address/)
  end
end
