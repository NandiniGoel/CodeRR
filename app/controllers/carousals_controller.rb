class CarousalsController < ApplicationController
  # GET /carousals
  # GET /carousals.json
  def index
    @carousals = Carousal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carousals }
    end
  end

  # GET /carousals/1
  # GET /carousals/1.json
  def show
    @carousal = Carousal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carousal }
    end
  end

  # GET /carousals/new
  # GET /carousals/new.json
  def new
    @carousal = Carousal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @carousal }
    end
  end

  # GET /carousals/1/edit
  def edit
    @carousal = Carousal.find(params[:id])
  end

  # POST /carousals
  # POST /carousals.json
  def create
    @carousal = Carousal.new(params[:carousal])

    respond_to do |format|
      if @carousal.save
        format.html { redirect_to @carousal, notice: 'Carousal was successfully created.' }
        format.json { render json: @carousal, status: :created, location: @carousal }
      else
        format.html { render action: "new" }
        format.json { render json: @carousal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carousals/1
  # PUT /carousals/1.json
  def update
    @carousal = Carousal.find(params[:id])

    respond_to do |format|
      if @carousal.update_attributes(params[:carousal])
        format.html { redirect_to @carousal, notice: 'Carousal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @carousal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carousals/1
  # DELETE /carousals/1.json
  def destroy
    @carousal = Carousal.find(params[:id])
    @carousal.destroy

    respond_to do |format|
      format.html { redirect_to carousals_url }
      format.json { head :no_content }
    end
  end
end
