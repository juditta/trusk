class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.json
  def confirm
    @order = Order.find(params[:id])
    
    if @order.state?
      respond_to do |format|
        format.html { redirect_to order_url } #:flash => { :error => "Ten towar już został wydany" }# 
        format.json { head :no_content }
      end
    else
      # remove_state 
      for order_item in @order.order_items 
        @product = Product.find(order_item.product_id)
        @product.update_attributes(:state => order_item.remove_state )
      end 
      @order.update_attributes(:state => '1')
      session[:order]= ''
      respond_to do |format|
        format.html { redirect_to order_url }
        format.json { head :no_content }
      end
    end
  end
  
  def index
    @orders = Order.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
    session[:order]= params[:id].to_s
    @order_item = OrderItem.new
    @order_items = OrderItem.where(:order_id => session[:order])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    session[:delivery]= ''
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end
end
