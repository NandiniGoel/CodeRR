class TextmarqueesController < ApplicationController
  # GET /textmarquees
  # GET /textmarquees.json
  def index
    @textmarquees = Textmarquee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @textmarquees }
    end
  end

  # GET /textmarquees/1
  # GET /textmarquees/1.json
  def show
    @textmarquee = Textmarquee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @textmarquee }
    end
  end

  # GET /textmarquees/new
  # GET /textmarquees/new.json
  def new
    @textmarquee = Textmarquee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @textmarquee }
    end
  end

  # GET /textmarquees/1/edit
  def edit
    @textmarquee = Textmarquee.find(params[:id])
  end

  # POST /textmarquees
  # POST /textmarquees.json
  def create
    @textmarquee = Textmarquee.new(params[:textmarquee])

    respond_to do |format|
      if @textmarquee.save
        format.html { redirect_to @textmarquee, notice: 'Textmarquee was successfully created.' }
        format.json { render json: @textmarquee, status: :created, location: @textmarquee }
      else
        format.html { render action: "new" }
        format.json { render json: @textmarquee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /textmarquees/1
  # PUT /textmarquees/1.json
  def update
    @textmarquee = Textmarquee.find(params[:id])

    respond_to do |format|
      if @textmarquee.update_attributes(params[:textmarquee])
        format.html { redirect_to @textmarquee, notice: 'Textmarquee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @textmarquee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textmarquees/1
  # DELETE /textmarquees/1.json
  def destroy
    @textmarquee = Textmarquee.find(params[:id])
    @textmarquee.destroy

    respond_to do |format|
      format.html { redirect_to textmarquees_url }
      format.json { head :no_content }
    end
  end
end
