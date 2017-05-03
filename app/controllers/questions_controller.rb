class QuestionsController < ApplicationController
    before_action :require_user
    before_action :require_project
    
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
    
    
    def require_same_user 
        set_project
        if current_user != @project.user && !@current_user.admin?
            flash[:danger] = "Solo puedes editar tus artículos"
            redirect_to root_path
        end 
    end 
    
    def require_project
        if current_user.projects.count <1 && current_user.admin?
            redirect_to root_path
        end 
    end 
    
	private
		def pregunta_params
	    	params.require(:question).permit(:question, :value, :area)
	  	end

	
end