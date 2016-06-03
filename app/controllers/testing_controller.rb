class TestingController < ApplicationController
      def index
      	  @testings = Testing.all
	  end

      def show
      	  @testing = Testing.find(params[:id])
	  end

      def new
      	  end

      def create
      	  @testing = Testing.new(params[:testing])

	  @testing.save
	  redirect_to @testing
	  
	  end

    private
	def testing_params
	    params.require(:testing).permit(:users, :emailaddy)
	    end
end