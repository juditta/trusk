class SpreePrototypesController < ApplicationController
  # GET /spree_prototypes
  # GET /spree_prototypes.json
  def index
    @spree_prototypes = SpreePrototype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spree_prototypes }
    end
  end

  # GET /spree_prototypes/1
  # GET /spree_prototypes/1.json
  def show
    @spree_prototype = SpreePrototype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spree_prototype }
    end
  end

  # GET /spree_prototypes/new
  # GET /spree_prototypes/new.json
  def new
    @spree_prototype = SpreePrototype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spree_prototype }
    end
  end

  # GET /spree_prototypes/1/edit
  def edit
    @spree_prototype = SpreePrototype.find(params[:id])
  end

  # POST /spree_prototypes
  # POST /spree_prototypes.json
  def create
    @spree_prototype = SpreePrototype.new(params[:spree_prototype])

    respond_to do |format|
      if @spree_prototype.save
        format.html { redirect_to @spree_prototype, notice: 'Spree prototype was successfully created.' }
        format.json { render json: @spree_prototype, status: :created, location: @spree_prototype }
      else
        format.html { render action: "new" }
        format.json { render json: @spree_prototype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spree_prototypes/1
  # PUT /spree_prototypes/1.json
  def update
    @spree_prototype = SpreePrototype.find(params[:id])

    respond_to do |format|
      if @spree_prototype.update_attributes(params[:spree_prototype])
        format.html { redirect_to @spree_prototype, notice: 'Spree prototype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spree_prototype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spree_prototypes/1
  # DELETE /spree_prototypes/1.json
  def destroy
    @spree_prototype = SpreePrototype.find(params[:id])
    @spree_prototype.destroy

    respond_to do |format|
      format.html { redirect_to spree_prototypes_url }
      format.json { head :no_content }
    end
  end
end
