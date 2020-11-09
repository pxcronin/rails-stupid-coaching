class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @question = params[:question]
    case
    when @question == 'I am going to work'
      @answer = 'Great!'
    when @question.last == '?'
      @answer = 'Silly question, get dressed and go to work!'      
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
