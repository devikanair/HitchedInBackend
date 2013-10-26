class RecruiterfiltersController < ApplicationController
  # GET /recruiterfilters
  # GET /recruiterfilters.json
  def index
    @recruiterfilters = Recruiterfilter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recruiterfilters }
    end
  end


  # POST /recruiterfilters
  # POST /recruiterfilters.json
  def create
    @myarray = params[:bluetooth]
    @myfilters = params[:filters]

    @arrayofbluetooths = @myarray.split(/,/)
    logger.info(@arrayofbluetooths)
    #@maptolinkedin = Maptolinkedin.new(params[:maptolinkedin])

    #No matter what the params are
    #@myarray = ['DevikasIPhone','RamyasAndroid']
    @maptolinkedins = Maptolinkedin.find_all_by_bluetooth(@arrayofbluetooths)
    @filteredmaptolinkedins = @maptolinkedins.select { |h| h.skills.include?@myfilters }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @filteredmaptolinkedins }
    end
  end

  # GET /recruiterfilters/1
  # GET /recruiterfilters/1.json
  def show
    @recruiterfilter = Recruiterfilter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recruiterfilter }
    end
  end

  # GET /recruiterfilters/new
  # GET /recruiterfilters/new.json
  def new
    @recruiterfilter = Recruiterfilter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recruiterfilter }
    end
  end

  # GET /recruiterfilters/1/edit
  def edit
    @recruiterfilter = Recruiterfilter.find(params[:id])
  end


  # PUT /recruiterfilters/1
  # PUT /recruiterfilters/1.json
  def update
    @recruiterfilter = Recruiterfilter.find(params[:id])

    respond_to do |format|
      if @recruiterfilter.update_attributes(params[:recruiterfilter])
        format.html { redirect_to @recruiterfilter, notice: 'Recruiterfilter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recruiterfilter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recruiterfilters/1
  # DELETE /recruiterfilters/1.json
  def destroy
    @recruiterfilter = Recruiterfilter.find(params[:id])
    @recruiterfilter.destroy

    respond_to do |format|
      format.html { redirect_to recruiterfilters_url }
      format.json { head :no_content }
    end
  end
end
