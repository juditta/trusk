class DeliveriesController < ApplicationController
  # GET /deliveries
  # GET /deliveries.json
  def confirm
    @delivery = Delivery.find(params[:id])
    
    if @delivery.state?
      respond_to do |format|
        format.html { redirect_to delivery_url } #:flash => { :error => "Ten towar już został przyjęty" }# 
        format.json { head :no_content }
      end
    else
      # add_state 
      for delivery_product in @delivery.delivery_products 
        @product = Product.find(delivery_product.product_id)
        @product.update_attributes(:state => delivery_product.add_state )
      end 
      @delivery.update_attributes(:state => '1')
      session[:delivery]= ''
      respond_to do |format|
        format.html { redirect_to delivery_url }
        format.json { head :no_content }
      end
  end
  end



  def index
    @deliveries = Delivery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deliveries }
    end
  end

  # GET /deliveries/1
  # GET /deliveries/1.json
  def show
    @delivery = Delivery.find(params[:id])
    session[:delivery]= params[:id].to_s
    @delivery_product = DeliveryProduct.new
    @delivery_products = DeliveryProduct.where(:delivery_id => session[:delivery])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delivery }
    end
  end

  # GET /deliveries/new
  # GET /deliveries/new.json
  def new
    @delivery = Delivery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delivery }
    end
  end

  # GET /deliveries/1/edit
  def edit
    @delivery = Delivery.find(params[:id])
  end

  # POST /deliveries
  # POST /deliveries.json
  def create
    @delivery = Delivery.new(params[:delivery])

    respond_to do |format|
      if @delivery.save
        format.html { redirect_to @delivery, notice: 'Delivery was successfully created.' }
        format.json { render json: @delivery, status: :created, location: @delivery }
      else
        format.html { render action: "new" }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deliveries/1
  # PUT /deliveries/1.json
  def update
    @delivery = Delivery.find(params[:id])

    respond_to do |format|
      if @delivery.update_attributes(params[:delivery])
        format.html { redirect_to @delivery, notice: 'Delivery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveries/1
  # DELETE /deliveries/1.json
  def destroy
    @delivery = Delivery.find(params[:id])
    @delivery.destroy
    session[:delivery]= ''
    respond_to do |format|
      format.html { redirect_to deliveries_url }
      format.json { head :no_content }
    end
  end
end
