class PreworkQuestionsController < ApplicationController
  before_filter :get_module

  # GET /prework_questions
  # GET /prework_questions.json
  def index
    
    @prework_questions = @module.prework_questions

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prework_questions }
    end
  end

  # GET /prework_questions/1
  # GET /prework_questions/1.json
  def show
    @prework_question = @module.prework_questions.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prework_question }
    end
  end

  # GET /prework_questions/new
  # GET /prework_questions/new.json
  def new
    @prework_question = @module.prework_questions.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prework_question }
    end
  end

  # GET /prework_questions/1/edit
  def edit
    @prework_question = @module.prework_questions.find(params[:id])
  end

  # POST /prework_questions
  # POST /prework_questions.json
  def create
    @prework_question = @module.prework_questions.build(params[:prework_question])

    respond_to do |format|
      if @prework_question.save
        format.html { redirect_to prework_module_path(@module), notice: 'Prework question was successfully created.' }
        format.json { render json: @prework_question, status: :created, location: @prework_question }
      else
        format.html { render action: "new" }
        format.json { render json: @prework_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prework_questions/1
  # PUT /prework_questions/1.json
  def update
    @prework_question = @module.prework_questions.find(params[:id])

    respond_to do |format|
      if @prework_question.update_attributes(params[:prework_question])
        format.html { redirect_to prework_module_path(@module), notice: 'Prework question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prework_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prework_questions/1
  # DELETE /prework_questions/1.json
  def destroy
    @prework_question = @module.prework_questions.find(params[:id])
    @prework_question.destroy

    respond_to do |format|
      format.html { redirect_to prework_module_path(@module) }
      format.json { head :no_content }
    end
  end

  private

  def get_module
    @module = PreworkModule.find(params[:prework_module_id])
  end
end
