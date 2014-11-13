class AssetsController < ApplicationController
  #before_action :set_asset, only: [:show, :edit, :update, :destroy]
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

    if @asset.save
      redirect_to assets_path, notice: 'Asset added!'
    else
      flash[:notice] = 'There was an error.'
      render :new
    end
  end

  def edit
    @asset = current_user.assets.find(params[:id])
  end

  def update
    @asset = current_user.assets.find(params[:id])
  end

  def destroy
    @asset = current_user.assets.find(params[:id])
    @asset.destroy
    redirect_to assets_path, notice: 'File has been removed'

  end

  def get
    asset = current_user.assets.find_by_id(params[:id])
    if asset
      send_file asset.uploaded_file.path, type: asset.uploaded_file_content_type
    end
  end


  private
    def set_asset
      @asset = Asset.find(params[:id])
    end

    def asset_params
      params.require(:asset).permit(:user_id, :uploaded_file)
    end
end
