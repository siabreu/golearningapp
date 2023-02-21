require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      name: "MyString",
      description: "MyText",
      ends_at: "MyString"
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input[name=?]", "course[name]"

      assert_select "textarea[name=?]", "course[description]"

      assert_select "input[name=?]", "course[ends_at]"
    end
  end
end
