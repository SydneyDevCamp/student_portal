class PreworkAnswersController < ApplicationController
  # GET /prework_answers
  # GET /prework_answers.json
  def index
    @prework_answers = PreworkAnswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prework_answers }
    end
  end

  # GET /prework_answers/1
  # GET /prework_answers/1.json
  def show
    @prework_answer = PreworkAnswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prework_answer }
    end
  end

  # GET /prework_answers/new
  # GET /prework_answers/new.json
  def new
    @prework_answer = PreworkAnswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prework_answer }
    end
  end

  # GET /prework_answers/1/edit
  def edit
    @prework_answer = PreworkAnswer.find(params[:id])
  end

  # POST /prework_answers
  # POST /prework_answers.json
  def create
    @prework_answer = PreworkAnswer.new(params[:prework_answer])

    respond_to do |format|
      if @prework_answer.save
        format.html { redirect_to @prework_answer, notice: 'Prework answer was successfully created.' }
        format.json { render json: @prework_answer, status: :created, location: @prework_answer }
      else
        format.html { render action: "new" }
        format.json { render json: @prework_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prework_answers/1
  # PUT /prework_answers/1.json
  def update
    @prework_answer = PreworkAnswer.find(params[:id])

    respond_to do |format|
      if @prework_answer.update_attributes(params[:prework_answer])
        format.html { redirect_to @prework_answer, notice: 'Prework answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prework_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prework_answers/1
  # DELETE /prework_answers/1.json
  def destroy
    @prework_answer = PreworkAnswer.find(params[:id])
    @prework_answer.destroy

    respond_to do |format|
      format.html { redirect_to prework_answers_url }
      format.json { head :no_content }
    end
  end
end
