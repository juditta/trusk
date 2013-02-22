class DeliveryProductsController < ApplicationController
  # GET /delivery_products
  # GET /delivery_products.json
  def index
    @delivery_products = DeliveryProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @delivery_products }
    end
  end

  # GET /delivery_products/1
  # GET /delivery_products/1.json
  def show
    @delivery_product = DeliveryProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delivery_product }
    end
  end

  # GET /delivery_products/new
  # GET /delivery_products/new.json
  def new
    @delivery_product = DeliveryProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delivery_product }
    end
  end

  # GET /delivery_products/1/edit
  def edit
    @delivery_product = DeliveryProduct.find(params[:id])
  end

  # POST /delivery_products
  # POST /delivery_products.json
  def create
    @delivery_product = DeliveryProduct.new(params[:delivery_product])

    respond_to do |format|
      if @delivery_product.save
        format.html { redirect_to @delivery_product, notice: 'Delivery product was successfully created.' }
        format.json { render json: @delivery_product, status: :created, location: @delivery_product }
      else
        format.html { render action: "new" }
        format.json { render json: @delivery_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /delivery_products/1
  # PUT /delivery_products/1.json
  def update
    @delivery_product = DeliveryProduct.find(params[:id])

    respond_to do |format|
      if @delivery_product.update_attributes(params[:delivery_product])
        format.html { redirect_to @delivery_product, notice: 'Delivery product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @delivery_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_products/1
  # DELETE /delivery_products/1.json
  def destroy
    @delivery_product = DeliveryProduct.find(params[:id])
    @delivery_product.destroy

    respond_to do |format|
      format.html { redirect_to delivery_products_url }
      format.json { head :no_content }
    end
  end
end
