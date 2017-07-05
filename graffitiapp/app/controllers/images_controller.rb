class ImagesController < ApplicationController
  before_action :set_mural

  def create
    add_more_images(images_params[:images])
    flash[:error] = "Failed uploading images" unless @mural.save
    redirect_to :back
  end

  private

  def set_mural
    @mural = Mural.find(params[:mural_id])
  end

  def add_more_images(new_images)
    images = @mural.images # copy the old images 
    images += new_images # concat old images with new ones
    @mural.images = images # assign back
  end

  def images_params
    params.require(:mural).permit({images: []}) # allow nested params as array
  end
end