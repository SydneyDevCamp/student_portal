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

describe WeekResourcesController do

  # This should return the minimal set of attributes required to create a valid
  # WeekResource. As you add validations to WeekResource, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "week" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WeekResourcesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all week_resources as @week_resources" do
      week_resource = WeekResource.create! valid_attributes
      get :index, {}, valid_session
      assigns(:week_resources).should eq([week_resource])
    end
  end

  describe "GET show" do
    it "assigns the requested week_resource as @week_resource" do
      week_resource = WeekResource.create! valid_attributes
      get :show, {:id => week_resource.to_param}, valid_session
      assigns(:week_resource).should eq(week_resource)
    end
  end

  describe "GET new" do
    it "assigns a new week_resource as @week_resource" do
      get :new, {}, valid_session
      assigns(:week_resource).should be_a_new(WeekResource)
    end
  end

  describe "GET edit" do
    it "assigns the requested week_resource as @week_resource" do
      week_resource = WeekResource.create! valid_attributes
      get :edit, {:id => week_resource.to_param}, valid_session
      assigns(:week_resource).should eq(week_resource)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new WeekResource" do
        expect {
          post :create, {:week_resource => valid_attributes}, valid_session
        }.to change(WeekResource, :count).by(1)
      end

      it "assigns a newly created week_resource as @week_resource" do
        post :create, {:week_resource => valid_attributes}, valid_session
        assigns(:week_resource).should be_a(WeekResource)
        assigns(:week_resource).should be_persisted
      end

      it "redirects to the created week_resource" do
        post :create, {:week_resource => valid_attributes}, valid_session
        response.should redirect_to(WeekResource.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved week_resource as @week_resource" do
        # Trigger the behavior that occurs when invalid params are submitted
        WeekResource.any_instance.stub(:save).and_return(false)
        post :create, {:week_resource => { "week" => "invalid value" }}, valid_session
        assigns(:week_resource).should be_a_new(WeekResource)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        WeekResource.any_instance.stub(:save).and_return(false)
        post :create, {:week_resource => { "week" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested week_resource" do
        week_resource = WeekResource.create! valid_attributes
        # Assuming there are no other week_resources in the database, this
        # specifies that the WeekResource created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        WeekResource.any_instance.should_receive(:update_attributes).with({ "week" => "" })
        put :update, {:id => week_resource.to_param, :week_resource => { "week" => "" }}, valid_session
      end

      it "assigns the requested week_resource as @week_resource" do
        week_resource = WeekResource.create! valid_attributes
        put :update, {:id => week_resource.to_param, :week_resource => valid_attributes}, valid_session
        assigns(:week_resource).should eq(week_resource)
      end

      it "redirects to the week_resource" do
        week_resource = WeekResource.create! valid_attributes
        put :update, {:id => week_resource.to_param, :week_resource => valid_attributes}, valid_session
        response.should redirect_to(week_resource)
      end
    end

    describe "with invalid params" do
      it "assigns the week_resource as @week_resource" do
        week_resource = WeekResource.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WeekResource.any_instance.stub(:save).and_return(false)
        put :update, {:id => week_resource.to_param, :week_resource => { "week" => "invalid value" }}, valid_session
        assigns(:week_resource).should eq(week_resource)
      end

      it "re-renders the 'edit' template" do
        week_resource = WeekResource.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        WeekResource.any_instance.stub(:save).and_return(false)
        put :update, {:id => week_resource.to_param, :week_resource => { "week" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested week_resource" do
      week_resource = WeekResource.create! valid_attributes
      expect {
        delete :destroy, {:id => week_resource.to_param}, valid_session
      }.to change(WeekResource, :count).by(-1)
    end

    it "redirects to the week_resources list" do
      week_resource = WeekResource.create! valid_attributes
      delete :destroy, {:id => week_resource.to_param}, valid_session
      response.should redirect_to(week_resources_url)
    end
  end

end
