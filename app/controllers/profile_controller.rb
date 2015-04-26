class ProfileController < ApplicationController
	layout 'admin' 
	def index 
		@profiles = Profile.all 

		
	end 

	def show 
		@profile = Profile.find(params[:id])
	end 

	def new 
		@profile = Profile.new
	end 

	def edit 
		@profile = Profile.find(params[:id])
	end 
	def update
		@profile = Profile.find(params[:id])
			if @profile.save
			flash[:notice] = " Profile updated successfully"
			redirect_to(:action => 'index')
		else
			render('new')
		end
	end

	def create 
		@profile = Profile.new(profile_params)
		if @profile.save
			flash[:notice] = " Profile created successfully"
			redirect_to(:action => 'index')
		else
			render('new')
		end
	end 
	


	def delete
	@profile = Profile.find(params[:id])
end

	  def destroy
   @profile = Profile.find(params[:id])
	@profile.destroy
	redirect_to(:action => 'index')

    end
  





def profile_params
	params.require(:profile).permit(:bathshower, :kitchen, :sinks, :other)

end
end
