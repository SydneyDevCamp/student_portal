class WeekResourcesController < ApplicationController
  # GET /week_resources
  # GET /week_resources.json
  def index
    @week_resources = WeekResource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @week_resources }
    end
  end

  # GET /week_resources/1
  # GET /week_resources/1.json
  def show
    @week_resource = WeekResource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @week_resource }
    end
  end

  # GET /week_resources/new
  # GET /week_resources/new.json
  def new
    @week_resource = WeekResource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @week_resource }
    end
  end

  # GET /week_resources/1/edit
  def edit
    @week_resource = WeekResource.find(params[:id])
  end

  # POST /week_resources
  # POST /week_resources.json
  def create
    @week_resource = WeekResource.new(params[:week_resource])
    @week_resource.user = current_user

    respond_to do |format|
      if @week_resource.save
        format.html { redirect_to @week_resource, notice: 'Week resource was successfully created.' }
        format.json { render json: @week_resource, status: :created, location: @week_resource }
      else
        format.html { render action: "new" }
        format.json { render json: @week_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /week_resources/1
  # PUT /week_resources/1.json
  def update
    @week_resource = WeekResource.find(params[:id])

    respond_to do |format|
      if @week_resource.update_attributes(params[:week_resource])
        format.html { redirect_to @week_resource, notice: 'Week resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @week_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /week_resources/1
  # DELETE /week_resources/1.json
  def destroy
    @week_resource = WeekResource.find(params[:id])
    @week_resource.destroy

    respond_to do |format|
      format.html { redirect_to week_resources_url }
      format.json { head :no_content }
    end
  end
end
