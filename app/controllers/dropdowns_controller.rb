class DropdownsController < ApplicationController
  # GET /dropdowns
  # GET /dropdowns.json
  def index
    @dropdowns = Dropdown.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dropdowns }
    end
  end

  # GET /dropdowns/1
  # GET /dropdowns/1.json
  def show
    @dropdown = Dropdown.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dropdown }
    end
  end

  # GET /dropdowns/new
  # GET /dropdowns/new.json
  def new
    @dropdown = Dropdown.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dropdown }
    end
  end

  # GET /dropdowns/1/edit
  def edit
    @dropdown = Dropdown.find(params[:id])
  end

  # POST /dropdowns
  # POST /dropdowns.json
  def create
    @dropdown = Dropdown.new(params[:dropdown])

    respond_to do |format|
      if @dropdown.save
        format.html { redirect_to @dropdown, notice: 'Dropdown was successfully created.' }
        format.json { render json: @dropdown, status: :created, location: @dropdown }
      else
        format.html { render action: "new" }
        format.json { render json: @dropdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dropdowns/1
  # PUT /dropdowns/1.json
  def update
    @dropdown = Dropdown.find(params[:id])

    respond_to do |format|
      if @dropdown.update_attributes(params[:dropdown])
        format.html { redirect_to @dropdown, notice: 'Dropdown was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dropdown.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dropdowns/1
  # DELETE /dropdowns/1.json
  def destroy
    @dropdown = Dropdown.find(params[:id])
    @dropdown.destroy

    respond_to do |format|
      format.html { redirect_to dropdowns_url }
      format.json { head :no_content }
    end
  end
end
