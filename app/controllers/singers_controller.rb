class SingersController < ApplicationController

	def index
		@singers = Singer.all
	end

	def new
		@singer = Singer.new
	end

	def create
		@singer = Singer.new(singers_params)
		if @singer.save
			redirect_to @singer
		else
			render 'new'
		end
	end

	def show
		@singer = Singer.find(params[:id])
	end

	def edit
		@singer = Singer.find(params[:id])
	end

	def update
		@singer = Singer.find(params[:id])
		if @singer.update(singers_params)
			redirect_to @singer
		else
			render 'edit'
		end
	end

	def destroy
		@singer = Singer.find(params[:id])
		@singer.destroy
		redirect_to root_path

	end

	private

	def singers_params
		params.require(:singer).permit(:title, :body)
	end

end