class ChangetypesController < ApplicationController
  # GET /changetypes
  # GET /changetypes.json
  def index
    @maptolinkedins = Maptolinkedin.all #find_all_by_bluetooth(@myarray)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maptolinkedins }
    end
  end

# POST /changetypes
# POST /changetypes.json
  def create
    @profile = params[:profile]
    logger.info(@profile)
    @type = params[:comment]
    logger.info(@type)

    @maptolinkedins = Maptolinkedin.find_by_linkedinprofile(@profile)
    @maptolinkedins.comment = @type
    @maptolinkedins.save
    #@maptolinkedin = Maptolinkedin.new(params[:maptolinkedin])

    #No matter what the params are
    #@myarray = ['DevikasIPhone','RamyasAndroid']


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maptolinkedins }
    end
  end
    # GET /changetypes/1
  # GET /changetypes/1.json
  def show
    @changetype = Changetype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @changetype }
    end
  end

  # GET /changetypes/new
  # GET /changetypes/new.json
  def new
    @changetype = Changetype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @changetype }
    end
  end

  # GET /changetypes/1/edit
  def edit
    @changetype = Changetype.find(params[:id])
  end



  # PUT /changetypes/1
  # PUT /changetypes/1.json
  def update
    @changetype = Changetype.find(params[:id])

    respond_to do |format|
      if @changetype.update_attributes(params[:changetype])
        format.html { redirect_to @changetype, notice: 'Changetype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @changetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /changetypes/1
  # DELETE /changetypes/1.json
  def destroy
    @changetype = Changetype.find(params[:id])
    @changetype.destroy

    respond_to do |format|
      format.html { redirect_to changetypes_url }
      format.json { head :no_content }
    end
  end
end
