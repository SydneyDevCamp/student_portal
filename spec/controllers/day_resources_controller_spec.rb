require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DayResourcesController do

  # This should return the minimal set of attributes required to create a valid
  # DayResource. As you add validations to DayResource, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "day" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DayResourcesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all day_resources as @day_resources" do
      day_resource = DayResource.create! valid_attributes
      get :index, {}, valid_session
      assigns(:day_resources).should eq([day_resource])
    end
  end

  describe "GET show" do
    it "assigns the requested day_resource as @day_resource" do
      day_resource = DayResource.create! valid_attributes
      get :show, {:id => day_resource.to_param}, valid_session
      assigns(:day_resource).should eq(day_resource)
    end
  end

  describe "GET new" do
    it "assigns a new day_resource as @day_resource" do
      get :new, {}, valid_session
      assigns(:day_resource).should be_a_new(DayResource)
    end
  end

  describe "GET edit" do
    it "assigns the requested day_resource as @day_resource" do
      day_resource = DayResource.create! valid_attributes
      get :edit, {:id => day_resource.to_param}, valid_session
      assigns(:day_resource).should eq(day_resource)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DayResource" do
        expect {
          post :create, {:day_resource => valid_attributes}, valid_session
        }.to change(DayResource, :count).by(1)
      end

      it "assigns a newly created day_resource as @day_resource" do
        post :create, {:day_resource => valid_attributes}, valid_session
        assigns(:day_resource).should be_a(DayResource)
        assigns(:day_resource).should be_persisted
      end

      it "redirects to the created day_resource" do
        post :create, {:day_resource => valid_attributes}, valid_session
        response.should redirect_to(DayResource.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved day_resource as @day_resource" do
        # Trigger the behavior that occurs when invalid params are submitted
        DayResource.any_instance.stub(:save).and_return(false)
        post :create, {:day_resource => { "day" => "invalid value" }}, valid_session
        assigns(:day_resource).should be_a_new(DayResource)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DayResource.any_instance.stub(:save).and_return(false)
        post :create, {:day_resource => { "day" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested day_resource" do
        day_resource = DayResource.create! valid_attributes
        # Assuming there are no other day_resources in the database, this
        # specifies that the DayResource created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DayResource.any_instance.should_receive(:update_attributes).with({ "day" => "" })
        put :update, {:id => day_resource.to_param, :day_resource => { "day" => "" }}, valid_session
      end

      it "assigns the requested day_resource as @day_resource" do
        day_resource = DayResource.create! valid_attributes
        put :update, {:id => day_resource.to_param, :day_resource => valid_attributes}, valid_session
        assigns(:day_resource).should eq(day_resource)
      end

      it "redirects to the day_resource" do
        day_resource = DayResource.create! valid_attributes
        put :update, {:id => day_resource.to_param, :day_resource => valid_attributes}, valid_session
        response.should redirect_to(day_resource)
      end
    end

    describe "with invalid params" do
      it "assigns the day_resource as @day_resource" do
        day_resource = DayResource.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DayResource.any_instance.stub(:save).and_return(false)
        put :update, {:id => day_resource.to_param, :day_resource => { "day" => "invalid value" }}, valid_session
        assigns(:day_resource).should eq(day_resource)
      end

      it "re-renders the 'edit' template" do
        day_resource = DayResource.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DayResource.any_instance.stub(:save).and_return(false)
        put :update, {:id => day_resource.to_param, :day_resource => { "day" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested day_resource" do
      day_resource = DayResource.create! valid_attributes
      expect {
        delete :destroy, {:id => day_resource.to_param}, valid_session
      }.to change(DayResource, :count).by(-1)
    end

    it "redirects to the day_resources list" do
      day_resource = DayResource.create! valid_attributes
      delete :destroy, {:id => day_resource.to_param}, valid_session
      response.should redirect_to(day_resources_url)
    end
  end

end
