class MuralsController < ApplicationController

	 before_action :find_mural, only: [:show, :edit, :update, :destroy]
	 skip_before_filter :verify_authenticity_token
	 # before_action :initialize_mural


	 # allows murals to be created on index
	# def initialize_mural 
 #    	@mural = Mural.new
 #  	end

	def index
		@murals = Mural.all

		gon.murals = Mural.all
	end

	def show

	end

	def new
		@mural = Mural.new
	end

	def edit

	end

	def create
		@mural = Mural.new(mural_params)

		 if @mural.save
      		redirect_to root_path, notice: "succesfully added new mural"
    	else
      		redirect_to root_path, notice: "Could not save Mural"
    	end
	end

	def update
		if @mural.update(mural_params)
			redirect_to root_path
		else
			render'edit'
		end
	end

	def destory
		@mural.destory
		redirect_to root_path
	end

	private

	def mural_params
		params.require(:mural).permit(:artist, :year, :long, :lat, :address, {images: []})
	end

	def find_mural
		@mural = Mural.find(params[:id])
	end
	


end
