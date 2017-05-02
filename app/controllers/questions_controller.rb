class QuestionsController < ApplicationController
	def index
    	@preguntas = Question.all
 	end

	def show
		@pregunta = Question.find(params[:id])
	end

	def new
        @pregunta = Question.new
	end

	def create
		@pregunta = Question.new(pregunta_params)
		if @pregunta.save
		    redirect_to @pregunta
		else
		    render 'new'
  		end
	end
     def edit
         @pregunta = Question.find(params[:id])
    end 

    def update
	  @pregunta = Question.find(params[:id])
	  if @pregunta.update(pregunta_params)
	    redirect_to @pregunta
	  else
	    render 'edit'
	  end
	end
    
    
     def destroy
        @pregunta = Question.find(params[:id])
        @pregunta.destroy
        flash[:danger] = "Se ha borrado la pregunta"
        redirect_to preguntas_path
    end 
    
	private
		def pregunta_params
	    	params.require(:question).permit(:question, :value, :area)
	  	end

	
end