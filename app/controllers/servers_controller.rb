class ServersController < ApplicationController


	def index
		@servers = Server.all.order("created_at DESC")
	end

	def new
		@server = Server.new
	end

	def create
		@server = Server.new(server_params)
		if @server.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

		def server_params
			params.require(:server).permit(:name)
		end

end
