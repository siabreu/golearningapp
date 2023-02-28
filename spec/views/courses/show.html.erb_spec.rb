require 'rails_helper'

RSpec.describe "courses/show", type: :view do
  before(:each) do
    assign(:course, Course.create!(
      name: "Name",
      description: "MyText",
      starts_at: 2.days.ago,
      ends_at: 20.days.after
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Starts At/)
    expect(rendered).to match(/Ends At/)
  end
end
