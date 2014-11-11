class AssetsController < ApplicationController
  before_action :set_asset, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!  #authenticate for users before any methods

  def index
    @assets = current_user.assets
  end

  def show
    @asset = current_user.assets.find(params[:id])
  end

  def new
    @asset = current_user.assets.new
  end

  def create
    @asset = current_user.assets.new(asset_params)
  end

  def edit
    @asset = current_user.assets.find(asset_params)
  end

  def update
    @asset = current_user.assets.find(asset_params)
  end

  def destroy
    @asset = current_user.assets.find(asset_params)
  end

  private
    def set_asset
      @asset = Asset.find(params[:id])
    end

    def asset_params
      params.require(:asset).permit(:user_id, :uploaded_file)
    end
end
