class AnswersController < ApplicationController
    def show 
        @respuesta = Answer.find(params[:id])
        @pregunta = Question.find(16)
    end 
    
    def new 
      @respuesta = Answer.new
        @preguntas = Question.all
  end 
    
    def create 
        @respuesta = Answer.new(respuesta_params)
        @respuesta.question_id = 1
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