class HomeController < ApplicationController
	layout 'admin'

	def index
		@posts = Post.all
		

	end

	


	def show
		@post = Post.find(params[:id])
	end


	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			flash[:notice] = " Page created successfully"
			redirect_to(:action => 'index')
		else
			render('new')
		end
	end
	

def edit 
	@post = Post.find(params[:id])
end 

def update 
	@post = Post.find(params[:id])
	if @post.update_attributes(post_params )
		flash[:notice] = " post updated "
		redirect_to(:action => "show", :id => @post.id)
	else 

		render('edit')
	end 
end

def delete
	@post = Post.find(params[:id])
end

def destroy
	@post = Post.find(params[:id])
	@post.destroy
	redirect_to(:action => 'index')

end

 def upvote
    @up = Post.find(params[:id])
    @up.votes.create
    redirect_to(:action => 'index')
  end

  def downvote
   @down =  Post.upvote(params[:id])
  end
private 

def post_params
	params.require(:post).permit(:content)

end

end
