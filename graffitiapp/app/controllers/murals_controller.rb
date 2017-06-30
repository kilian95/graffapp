class MuralsController < ApplicationController

	 before_action :find_mural, only: [:show, :edit, :update, :destroy]


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
      		redirect_to @mural, notice: "succesfully added new mural"
    	else
      		render 'new'
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
		params.require(:mural).permit(:artist, :year, :long, :lat, {images: []})
	end

	def find_mural
		@mural = Mural.find(params[:id])
	end
	


end
