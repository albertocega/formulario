class PagesController < ApplicationController
    
    def index
        
    end 
    
    def registro
        
        @user = User.new
    
    end
    
    def formulario
        
        gon.questions = Question.all
        gon.questionsB = []
        gon.blocks = Block.all
        gon.counter = 0
        gon.counterQ = 0
        gon.answers = []
    
        
    end
    

    def create
        
        @question = Question.new(question_params)
    
        respond_to do |format|
          if @question.save
            format.html { redirect_to @question, notice: 'Question was successfully created.' }
            format.json { render :show, status: :created, location: @question }
          else
            format.html { render :new }
            format.json { render json: @question.errors, status: :unprocessable_entity }
          end
        end
    end
    
    private
    
    def question_params
      params.require(:question).permit(:text, :no_value, :yes_value)
    end
    
end