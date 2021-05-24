class QuestionsController < ApplicationController
  def question
  end

  def answer
    @ask = params[:ask_coach]
    if @ask == 'I am going to work'
      @answer = 'Great!'
    elsif @ask.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
