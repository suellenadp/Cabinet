class DocsController < ApplicationController

	before_action :find_doc, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD

=======
	
>>>>>>> ac5150945a8287e6116aa43a149d58f2b0ef392c
	def index
		@docs = Doc.where(user_id: current_user)
	end

	def show
	end

	def new
		@doc = current_user.docs.build

	end
		
	def create
		@doc = current_user.docs.build(doc_params)

		if @doc.save
<<<<<<< HEAD
			redirect_to @doc
=======
			redirect_to docs_path
>>>>>>> ac5150945a8287e6116aa43a149d58f2b0ef392c
		else
			render 'new'
		end	
					
	end

	def edit
	end

	def update
<<<<<<< HEAD
		if @doc.update(doc.params)
			redirect_to @doc
=======
		if @doc.update(doc_params)
			redirect_to docs_path
>>>>>>> ac5150945a8287e6116aa43a149d58f2b0ef392c
		else
			render 'edit'
		end
	end

	def destroy
		@doc.destroy
<<<<<<< HEAD
		redirect_to doc_path
	end

	private

		def find_doc
			@doc = Doc.find(params[:id])
		end
	    
		def doc_params
			params.require(:doc).permit(:title, :content)
		end
=======
		redirect_to docs_path
	end	

	private
	
	def find_doc
    	@doc = Doc.find(params[:id])

	end
	    
	def doc_params
	   	params.require(:doc).permit(:title, :content)
	end
>>>>>>> ac5150945a8287e6116aa43a149d58f2b0ef392c

end
