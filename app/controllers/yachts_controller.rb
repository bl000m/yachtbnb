class YachtsController < ApplicationController
  before_action :set_yacht, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @yachts = Yacht.all
  end

  def edit
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    @yacht.save!
  end

  def updated
  end

  private

  def set_yacht
    @yacht = Yacht.find(params[:id])
  end

  def yacht_params
    params.require(:yacht).permit(:name, :address, :price)
  end
end
