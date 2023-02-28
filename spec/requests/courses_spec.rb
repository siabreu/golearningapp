require 'rails_helper'

RSpec.describe "CoursesController", type: :request do

  context "login" do
    let(:student) { create :student }
    let(:course) { create :course }

    before do
      login_as student
      course
    end

    context "GET #index" do
      it "success and render index page" do
        get "/courses"

        expect(response).to have_http_status(200)
        expect(response).to render_template(:index)
      end

      it "have one course" do
        get "/courses"

        expect(assigns(:courses)).to_not be_empty
      end
    end

    context "GET #show" do
      it "success and render show page" do
        get "/courses/#{course.id}"

        expect(response).to have_http_status(200)
        expect(response).to render_template(:show)
      end

      it "where have id" do
        get "/courses/#{course.id}"

        expect(assigns(:course)).to be_a(Course)
      end
    end

    context "GET #new" do
      it "success and render new page" do
        get "/courses/new"

        expect(response).to have_http_status(200)
        expect(response).to render_template(:new)
      end

      it "new course" do
        get "/courses/new"

        expect(assigns(:course)).to be_a_new(Course)
      end
    end
  end
end
