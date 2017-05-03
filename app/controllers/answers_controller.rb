class AnswersController < ApplicationController
   @@id = 3
    def show 
        @respuesta = Answer.find(params[:id])
        @pregunta = Question.find(@respuesta.question_id)
    end 
    
    def new 
      @respuesta = Answer.new
        @preguntas = Question.all
        @@id = request.original_url.split('.').last
        
  end 
    
    def create 
        @preguntas = Question.all
        @respuesta = Answer.new(respuesta_params)
        @respuesta.question_id = @@id
        @respuesta.value = 1
        if @respuesta.save
            redirect_to @respuesta
        else render 'new'
        end
    end 

    def index
        @respuestas = Answer.all
        @pregunta = Question.all
    end 
    
    def edit
        @preguntas = Question.all
        @respuesta = Answer.find(params[:id])
    end 
 
    def update
      @respuesta = Answer.find(params[:id])

      if @respuesta.update(respuesta_params)
        redirect_to @respuesta
      else
        render 'edit'
      end
    end

    
    private
    def respuesta_params
        params.require(:answer).permit(:answer)
    end 
end