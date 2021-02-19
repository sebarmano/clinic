 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/assignments", type: :request do
  # Assignment. As you add validations to Assignment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Assignment.create! valid_attributes
      get assignments_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      assignment = Assignment.create! valid_attributes
      get assignment_url(assignment)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_assignment_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      assignment = Assignment.create! valid_attributes
      get edit_assignment_url(assignment)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Assignment" do
        expect {
          post assignments_url, params: { assignment: valid_attributes }
        }.to change(Assignment, :count).by(1)
      end

      it "redirects to the created assignment" do
        post assignments_url, params: { assignment: valid_attributes }
        expect(response).to redirect_to(assignment_url(Assignment.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Assignment" do
        expect {
          post assignments_url, params: { assignment: invalid_attributes }
        }.to change(Assignment, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post assignments_url, params: { assignment: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested assignment" do
        assignment = Assignment.create! valid_attributes
        patch assignment_url(assignment), params: { assignment: new_attributes }
        assignment.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the assignment" do
        assignment = Assignment.create! valid_attributes
        patch assignment_url(assignment), params: { assignment: new_attributes }
        assignment.reload
        expect(response).to redirect_to(assignment_url(assignment))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        assignment = Assignment.create! valid_attributes
        patch assignment_url(assignment), params: { assignment: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested assignment" do
      assignment = Assignment.create! valid_attributes
      expect {
        delete assignment_url(assignment)
      }.to change(Assignment, :count).by(-1)
    end

    it "redirects to the assignments list" do
      assignment = Assignment.create! valid_attributes
      delete assignment_url(assignment)
      expect(response).to redirect_to(assignments_url)
    end
  end
end
