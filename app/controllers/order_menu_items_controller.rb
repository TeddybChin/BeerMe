class OrderMenuItemsController < ApplicationController
  # GET /order_menu_items
  # GET /order_menu_items.json
  def index
    @order_menu_items = OrderMenuItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @order_menu_items }
    end
  end

  # GET /order_menu_items/1
  # GET /order_menu_items/1.json
  def show
    @order_menu_item = OrderMenuItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order_menu_item }
    end
  end

  # GET /order_menu_items/new
  # GET /order_menu_items/new.json
  def new
    @order_menu_item = OrderMenuItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order_menu_item }
    end
  end

  # GET /order_menu_items/1/edit
  def edit
    @order_menu_item = OrderMenuItem.find(params[:id])
  end

  # POST /order_menu_items
  # POST /order_menu_items.json
  def create
    @order_menu_item = OrderMenuItem.new(params[:order_menu_item])

    respond_to do |format|
      if @order_menu_item.save
        format.html { redirect_to @order_menu_item, notice: 'Order menu item was successfully created.' }
        format.json { render json: @order_menu_item, status: :created, location: @order_menu_item }
      else
        format.html { render action: "new" }
        format.json { render json: @order_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /order_menu_items/1
  # PUT /order_menu_items/1.json
  def update
    @order_menu_item = OrderMenuItem.find(params[:id])

    respond_to do |format|
      if @order_menu_item.update_attributes(params[:order_menu_item])
        format.html { redirect_to @order_menu_item, notice: 'Order menu item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_menu_items/1
  # DELETE /order_menu_items/1.json
  def destroy
    @order_menu_item = OrderMenuItem.find(params[:id])
    @order_menu_item.destroy

    respond_to do |format|
      format.html { redirect_to order_menu_items_url }
      format.json { head :no_content }
    end
  end
end
