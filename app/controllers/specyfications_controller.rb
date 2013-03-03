class SpecyficationsController < ApplicationController
  # GET /specyfications
  # GET /specyfications.json
  def index
    @specyfications = Specyfication.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @specyfications }
    end
  end

  # GET /specyfications/1
  # GET /specyfications/1.json
  def show
    @specyfication = Specyfication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @specyfication }
    end
  end

  # GET /specyfications/new
  # GET /specyfications/new.json
  def new
    @specyfication = Specyfication.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @specyfication }
    end
  end

  # GET /specyfications/1/edit
  def edit
    @specyfication = Specyfication.find(params[:id])
    

    respond_to do |format|

     if @specyfication.update_attributes(params[:specyfication])
      format.html { redirect_to product_url(@specyfication.product_id), notice: 'Specyfication was successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @specyfication.errors, status: :unprocessable_entity }
    end
    end
  end

  # POST /specyfications
  # POST /specyfications.json
  def create
    @specyfication = Specyfication.new(params[:specyfication])

    respond_to do |format|  
      if @specyfication.save 
        format.html { redirect_to edit_specyfication_url(@specyfication), notice: 'Specyfication was successfully created.' }
        format.json { render json: @specyfication, status: :created, location: @specyfication }
      else
        format.html { render action: "new" }
        format.json { render json: @specyfication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /specyfications/1
  # PUT /specyfications/1.json
  def update
    @specyfication = Specyfication.find(params[:id])

    respond_to do |format|
      if @specyfication.update_attributes(params[:specyfication])
        format.html { redirect_to product_url(@specyfication.product_id) }
        format.json { head :no_content }
      else
        format.html { redirect_to edit_specyfication_url(@specyfication) }
      end
    end
  end

  # DELETE /specyfications/1
  # DELETE /specyfications/1.json
  def destroy
    @specyfication = Specyfication.find(params[:id])
    @specyfication.destroy

    respond_to do |format|
      format.html { redirect_to product_url(session[:product])}
      format.json { head :no_content }
    end
  end
end
