class CalendarItemsController < ApplicationController
  # GET /calendar_items
  # GET /calendar_items.json
  def index
    @calendar_items = CalendarItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calendar_items }
    end
  end

  # GET /calendar_items/1
  # GET /calendar_items/1.json
  def show
    @calendar_item = CalendarItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @calendar_item }
    end
  end

  # GET /calendar_items/new
  # GET /calendar_items/new.json
  def new
    @calendar_item = CalendarItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @calendar_item }
    end
  end

  # GET /calendar_items/1/edit
  def edit
    @calendar_item = CalendarItem.find(params[:id])
  end

  # POST /calendar_items
  # POST /calendar_items.json
  def create
    @calendar_item = CalendarItem.new(params[:calendar_item])

    respond_to do |format|
      if @calendar_item.save
        format.html { redirect_to calendar_path, notice: 'Calendar item was successfully created.' }
        format.json { render json: @calendar_item, status: :created, location: @calendar_item }
      else
        format.html { render action: "new" }
        format.json { render json: @calendar_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /calendar_items/1
  # PUT /calendar_items/1.json
  def update
    @calendar_item = CalendarItem.find(params[:id])

    respond_to do |format|
      if @calendar_item.update_attributes(params[:calendar_item])
        format.html { redirect_to calendar_path, notice: 'Calendar item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @calendar_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_items/1
  # DELETE /calendar_items/1.json
  def destroy
    @calendar_item = CalendarItem.find(params[:id])
    @calendar_item.destroy

    respond_to do |format|
      format.html { redirect_to calendar_items_url }
      format.json { head :no_content }
    end
  end
end
