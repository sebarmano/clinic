require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      assignment: nil,
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input[name=?]", "task[assignment_id]"

      assert_select "input[name=?]", "task[name]"

      assert_select "textarea[name=?]", "task[description]"
    end
  end
end
