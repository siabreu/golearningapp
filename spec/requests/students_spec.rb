require 'rails_helper'

RSpec.describe "StudentsController", type: :request do

  context "login" do
    let(:student) { create :student }

    before do
      login_as student
    end

    context "GET #index" do
      it "success and render index page" do
        get "/students"

        expect(response).to have_http_status(200)
        expect(response).to render_template(:index)
      end

      it "have one student" do
        get "/students"

        expect(assigns(:students)).to_not be_empty
      end
    end

    context "GET #show" do
      it "success and render show page" do
        get "/students/#{student.id}"

        expect(response).to have_http_status(200)
        expect(response).to render_template(:show)
      end

      it "where have id" do
        get "/students/#{student.id}"

        expect(assigns(:student)).to be_a(Student)
      end
    end

    context "GET #new" do
      it "success and render new page" do
        get "/students/new"

        expect(response).to have_http_status(200)
        expect(response).to render_template(:new)
      end

      it "new student" do
        get "/students/new"

        expect(assigns(:student)).to be_a_new(Student)
      end
    end
  end
end
