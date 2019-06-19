class RouteItemsController < ApplicationController
  before_action :set_route_item, only: [:show, :edit, :update, :destroy]

  def index
    @route_items = RouteItem.all
  end

  def show; end

  def new
    @route_item = RouteItem.new
    #@user_items = choose_items
    @route = Route.find(params[:route])
    @user_items = create_list
    if @user_items.kind_of?(Array)
      @categories = UserAvailableItem.item_categories(@user_items)
      @user_items.each do |i|
        item = RouteItem.create(item_id: i.item.id, user_id: current_user.id, count: 1, route_id: @route.id)
        item.save!
      end
    else
      @user_items.each do |user, items|
        @categories = UserAvailableItem.item_categories(items)
        items.each do |i|
          item = RouteItem.create(item_id: i.item.id, user_id: user, count: 1, route_id: @route.id)
          item.save!
        end
      end
    end
  end

  def edit; end

  def create
    @route_item = RouteItem.new(route_item_params)
    @route_item.user_id = current_user.id

    respond_to do |format|
      if @route_item.save
        format.html { redirect_to @route_item, notice: 'Route item was successfully created.' }
        format.json { render :show, status: :created, location: @route_item }
      else
        format.html { render :new }
        format.json { render json: @route_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @route_item.update(route_item_params)
        format.html { redirect_to @route_item, notice: 'Route item was successfully updated.' }
        format.json { render :show, status: :ok, location: @route_item }
      else
        format.html { render :edit }
        format.json { render json: @route_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @route_item.destroy
    respond_to do |format|
      format.html { redirect_to route_items_url, notice: 'Route item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_route_item
    @route_item = RouteItem.find(params[:id])
  end

  def route_item_params
    params.require(:route_item).permit(:count, :item_id, :route_id, :user_id)
  end

  def route_part
    params.require(:route_item).permit(:participants)
  end

  def choose_items
    items_o = []
    items_i = current_user.user_available_items.all
    items_i.each do |i|
      items_o.push(i) if (i.item.season.title == 'Літо' || i.item.season.title == 'Міжсезоння')
    end
    items_o
  end

  def create_list
    # all_items = current_user.user_available_items.all
    # weights = []
    # imports = []
    # all_items.each do |i|
    #   weights.push(i.item.weight)
    #   imports.push(i.item.object_importance.value)
    # end
    # ItemsList.create_list(weights, imports, all_items.count)

    # item_list = []
    participants = params[:rp][:participants]

    puts "PARTI"
    puts participants

    participants.delete("")
    participants.map!(&:to_i)

    if participants.empty?
      ItemsList.create_list(1, current_user.user_available_items.all, current_user.profile.bpws)  # []
    else
      ItemsList.create_list_group(1, participants) # {}
    end

  end
end
