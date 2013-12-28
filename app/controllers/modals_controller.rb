class ModalsController < ApplicationController
  # GET /modals
  # GET /modals.json
  def index
    @modals = Modal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @modals }
    end
  end

  # GET /modals/1
  # GET /modals/1.json
  def show
    @modal = Modal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @modal }
    end
  end

  # GET /modals/new
  # GET /modals/new.json
  def new
    @modal = Modal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @modal }
    end
  end

  # GET /modals/1/edit
  def edit
    @modal = Modal.find(params[:id])
  end

  # POST /modals
  # POST /modals.json
  def create
    @modal = Modal.new(params[:modal])

    respond_to do |format|
      if @modal.save
        format.html { redirect_to @modal, notice: 'Modal was successfully created.' }
        format.json { render json: @modal, status: :created, location: @modal }
      else
        format.html { render action: "new" }
        format.json { render json: @modal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /modals/1
  # PUT /modals/1.json
  def update
    @modal = Modal.find(params[:id])

    respond_to do |format|
      if @modal.update_attributes(params[:modal])
        format.html { redirect_to @modal, notice: 'Modal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @modal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modals/1
  # DELETE /modals/1.json
  def destroy
    @modal = Modal.find(params[:id])
    @modal.destroy

    respond_to do |format|
      format.html { redirect_to modals_url }
      format.json { head :no_content }
    end
  end
end
