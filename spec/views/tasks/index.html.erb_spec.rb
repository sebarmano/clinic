require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        assignment: nil,
        name: "Name",
        description: "MyText"
      ),
      Task.create!(
        assignment: nil,
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
