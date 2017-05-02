class PreguntasController < ApplicationController
	def index
    	@preguntas = Pregunta.all
 	end

	def show
		@pregunta = Pregunta.find(params[:id])
	end

	def new
        @pregunta = Pregunta.new
	end

	def create
		@pregunta = Pregunta.new(pregunta_params)
		if @pregunta.save
		    redirect_to @pregunta
		else
		    render 'new'
  		end
	end
     def edit
         @pregunta = Pregunta.find(params[:id])
    end 

    def update
	  @pregunta = Pregunta.find(params[:id])
	  if @pregunta.update(pregunta_params)
	    redirect_to @pregunta
	  else
	    render 'edit'
	  end
	end
    
    
     def destroy
        @pregunta = Pregunta.find(params[:id])
        @pregunta.destroy
        flash[:danger] = "Se ha borrado la pregunta"
        redirect_to preguntas_path
    end 
    
	private
		def pregunta_params
	    	params.require(:pregunta).permit(:texto_pregunta, :valor, :area)
	  	end

	
end