class MaptolinkedinsController < ApplicationController
  # GET /maptolinkedins
  # GET /maptolinkedins.json
  def index
    @maptolinkedins = Maptolinkedin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maptolinkedins }
    end
  end

  # GET /maptolinkedins/1
  # GET /maptolinkedins/1.json
  def show
    @maptolinkedin = Maptolinkedin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maptolinkedin }
    end
  end

  # GET /maptolinkedins/new
  # GET /maptolinkedins/new.json
  def new
    @maptolinkedin = Maptolinkedin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maptolinkedin }
    end
  end

  # GET /maptolinkedins/1/edit
  def edit
    @maptolinkedin = Maptolinkedin.find(params[:id])
  end

  # POST /maptolinkedins
  # POST /maptolinkedins.json
  def create
    @maptolinkedin = Maptolinkedin.new(params[:maptolinkedin])

    respond_to do |format|
      if @maptolinkedin.save
        format.html { redirect_to @maptolinkedin, notice: 'Maptolinkedin was successfully created.' }
        format.json { render json: @maptolinkedin, status: :created, location: @maptolinkedin }
      else
        format.html { render action: "new" }
        format.json { render json: @maptolinkedin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maptolinkedins/1
  # PUT /maptolinkedins/1.json
  def update
    @maptolinkedin = Maptolinkedin.find(params[:id])

    respond_to do |format|
      if @maptolinkedin.update_attributes(params[:maptolinkedin])
        format.html { redirect_to @maptolinkedin, notice: 'Maptolinkedin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maptolinkedin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maptolinkedins/1
  # DELETE /maptolinkedins/1.json
  def destroy
    @maptolinkedin = Maptolinkedin.find(params[:id])
    @maptolinkedin.destroy

    respond_to do |format|
      format.html { redirect_to maptolinkedins_url }
      format.json { head :no_content }
    end
  end

end
