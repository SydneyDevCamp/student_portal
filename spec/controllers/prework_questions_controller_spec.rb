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

describe PreworkQuestionsController do

  # This should return the minimal set of attributes required to create a valid
  # PreworkQuestion. As you add validations to PreworkQuestion, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "order" => "1" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PreworkQuestionsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all prework_questions as @prework_questions" do
      prework_question = PreworkQuestion.create! valid_attributes
      get :index, {}, valid_session
      assigns(:prework_questions).should eq([prework_question])
    end
  end

  describe "GET show" do
    it "assigns the requested prework_question as @prework_question" do
      prework_question = PreworkQuestion.create! valid_attributes
      get :show, {:id => prework_question.to_param}, valid_session
      assigns(:prework_question).should eq(prework_question)
    end
  end

  describe "GET new" do
    it "assigns a new prework_question as @prework_question" do
      get :new, {}, valid_session
      assigns(:prework_question).should be_a_new(PreworkQuestion)
    end
  end

  describe "GET edit" do
    it "assigns the requested prework_question as @prework_question" do
      prework_question = PreworkQuestion.create! valid_attributes
      get :edit, {:id => prework_question.to_param}, valid_session
      assigns(:prework_question).should eq(prework_question)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PreworkQuestion" do
        expect {
          post :create, {:prework_question => valid_attributes}, valid_session
        }.to change(PreworkQuestion, :count).by(1)
      end

      it "assigns a newly created prework_question as @prework_question" do
        post :create, {:prework_question => valid_attributes}, valid_session
        assigns(:prework_question).should be_a(PreworkQuestion)
        assigns(:prework_question).should be_persisted
      end

      it "redirects to the created prework_question" do
        post :create, {:prework_question => valid_attributes}, valid_session
        response.should redirect_to(PreworkQuestion.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved prework_question as @prework_question" do
        # Trigger the behavior that occurs when invalid params are submitted
        PreworkQuestion.any_instance.stub(:save).and_return(false)
        post :create, {:prework_question => { "order" => "invalid value" }}, valid_session
        assigns(:prework_question).should be_a_new(PreworkQuestion)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PreworkQuestion.any_instance.stub(:save).and_return(false)
        post :create, {:prework_question => { "order" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested prework_question" do
        prework_question = PreworkQuestion.create! valid_attributes
        # Assuming there are no other prework_questions in the database, this
        # specifies that the PreworkQuestion created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PreworkQuestion.any_instance.should_receive(:update_attributes).with({ "order" => "1" })
        put :update, {:id => prework_question.to_param, :prework_question => { "order" => "1" }}, valid_session
      end

      it "assigns the requested prework_question as @prework_question" do
        prework_question = PreworkQuestion.create! valid_attributes
        put :update, {:id => prework_question.to_param, :prework_question => valid_attributes}, valid_session
        assigns(:prework_question).should eq(prework_question)
      end

      it "redirects to the prework_question" do
        prework_question = PreworkQuestion.create! valid_attributes
        put :update, {:id => prework_question.to_param, :prework_question => valid_attributes}, valid_session
        response.should redirect_to(prework_question)
      end
    end

    describe "with invalid params" do
      it "assigns the prework_question as @prework_question" do
        prework_question = PreworkQuestion.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PreworkQuestion.any_instance.stub(:save).and_return(false)
        put :update, {:id => prework_question.to_param, :prework_question => { "order" => "invalid value" }}, valid_session
        assigns(:prework_question).should eq(prework_question)
      end

      it "re-renders the 'edit' template" do
        prework_question = PreworkQuestion.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PreworkQuestion.any_instance.stub(:save).and_return(false)
        put :update, {:id => prework_question.to_param, :prework_question => { "order" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested prework_question" do
      prework_question = PreworkQuestion.create! valid_attributes
      expect {
        delete :destroy, {:id => prework_question.to_param}, valid_session
      }.to change(PreworkQuestion, :count).by(-1)
    end

    it "redirects to the prework_questions list" do
      prework_question = PreworkQuestion.create! valid_attributes
      delete :destroy, {:id => prework_question.to_param}, valid_session
      response.should redirect_to(prework_questions_url)
    end
  end

end
