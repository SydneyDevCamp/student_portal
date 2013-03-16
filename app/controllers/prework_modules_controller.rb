class PreworkModulesController < ApplicationController
  # GET /prework_modules
  # GET /prework_modules.json
  def index
    @prework_modules = PreworkModule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prework_modules }
    end
  end

  # GET /prework_modules/1
  # GET /prework_modules/1.json
  def show
    @prework_module = PreworkModule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prework_module }
    end
  end

  # GET /prework_modules/new
  # GET /prework_modules/new.json
  def new
    @prework_module = PreworkModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prework_module }
    end
  end

  # GET /prework_modules/1/edit
  def edit
    @prework_module = PreworkModule.find(params[:id])
  end

  # POST /prework_modules
  # POST /prework_modules.json
  def create
    @prework_module = PreworkModule.new(params[:prework_module])

    respond_to do |format|
      if @prework_module.save
        format.html { redirect_to prework_path, notice: 'Prework module was successfully created.' }
        format.json { render json: @prework_module, status: :created, location: @prework_module }
      else
        format.html { render action: "new" }
        format.json { render json: @prework_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prework_modules/1
  # PUT /prework_modules/1.json
  def update
    @prework_module = PreworkModule.find(params[:id])

    respond_to do |format|
      if @prework_module.update_attributes(params[:prework_module])
        format.html { redirect_to @prework_module, notice: 'Prework module was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @prework_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prework_modules/1
  # DELETE /prework_modules/1.json
  def destroy
    @prework_module = PreworkModule.find(params[:id])
    @prework_module.destroy

    respond_to do |format|
      format.html { redirect_to prework_modules_url }
      format.json { head :no_content }
    end
  end
end
