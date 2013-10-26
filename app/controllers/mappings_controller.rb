class MappingsController < ApplicationController
  # GET /mappings
  # GET /mappings.json
  def index
    @myarray = ['DevikasIPhone','RamyasAndroid']
    @maptolinkedins = Maptolinkedin.find_all_by_bluetooth(@myarray)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maptolinkedins }
    end
  end

# POST /mappings
# POST /mappings.json
  def create
    @myarray = params[:bluetooth]

    @arrayofbluetooths = @myarray.split(/,/)
    logger.info(@arrayofbluetooths)
    #@maptolinkedin = Maptolinkedin.new(params[:maptolinkedin])

    #No matter what the params are
    #@myarray = ['DevikasIPhone','RamyasAndroid']
    @maptolinkedins = Maptolinkedin.find_all_by_bluetooth(@arrayofbluetooths)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maptolinkedins }
    end
  end

  # GET /mappings/1
  # GET /mappings/1.json
  def show
    @mapping = Mapping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mapping }
    end
  end

  # GET /mappings/new
  # GET /mappings/new.json
  def new
    @mapping = Mapping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mapping }
    end
  end

  # GET /mappings/1/edit
  def edit
    @mapping = Mapping.find(params[:id])
  end

  # PUT /mappings/1
  # PUT /mappings/1.json
  def update
    @mapping = Mapping.find(params[:id])

    respond_to do |format|
      if @mapping.update_attributes(params[:mapping])
        format.html { redirect_to @mapping, notice: 'Mapping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mappings/1
  # DELETE /mappings/1.json
  def destroy
    @mapping = Mapping.find(params[:id])
    @mapping.destroy

    respond_to do |format|
      format.html { redirect_to mappings_url }
      format.json { head :no_content }
    end
  end
end
