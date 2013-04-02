class DayResourcesController < ApplicationController
  # GET /day_resources
  # GET /day_resources.json
  def index
    @day_resources = DayResource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @day_resources }
    end
  end

  # GET /day_resources/1
  # GET /day_resources/1.json
  def show
    @day_resource = DayResource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @day_resource }
    end
  end

  # GET /day_resources/new
  # GET /day_resources/new.json
  def new
    @day_resource = DayResource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @day_resource }
    end
  end

  # GET /day_resources/1/edit
  def edit
    @day_resource = DayResource.find(params[:id])
  end

  # POST /day_resources
  # POST /day_resources.json
  def create
    @day_resource = DayResource.new(params[:day_resource])

    respond_to do |format|
      if @day_resource.save
        format.html { redirect_to @day_resource, notice: 'Day resource was successfully created.' }
        format.json { render json: @day_resource, status: :created, location: @day_resource }
      else
        format.html { render action: "new" }
        format.json { render json: @day_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /day_resources/1
  # PUT /day_resources/1.json
  def update
    @day_resource = DayResource.find(params[:id])

    respond_to do |format|
      if @day_resource.update_attributes(params[:day_resource])
        format.html { redirect_to @day_resource, notice: 'Day resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @day_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_resources/1
  # DELETE /day_resources/1.json
  def destroy
    @day_resource = DayResource.find(params[:id])
    @day_resource.destroy

    respond_to do |format|
      format.html { redirect_to day_resources_url }
      format.json { head :no_content }
    end
  end
end
