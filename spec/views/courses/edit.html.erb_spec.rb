require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  let(:course) {
    Course.create!(
      name: "MyString",
      description: "MyText",
      ends_at: "MyString"
    )
  }

  before(:each) do
    assign(:course, course)
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(course), "post" do

      assert_select "input[name=?]", "course[name]"

      assert_select "textarea[name=?]", "course[description]"

      assert_select "input[name=?]", "course[ends_at]"
    end
  end
end
