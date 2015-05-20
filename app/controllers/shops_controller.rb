class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :redirect]

  def index
  end

  def show
  end

  def redirect
    current_user_id = 1
    redirect_to @shop.generate_redirect_link(current_user_id)
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

end
