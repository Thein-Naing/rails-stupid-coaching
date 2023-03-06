class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @question = params[:ask]

    @response =
      if @question == 'I am going to work'
        'Great!'
      elsif @question.include?('?')
        'silly question, get dressed and go to work!'
      else
        'I don\'t care, get dressed and go to work!'
      end
  end
end
