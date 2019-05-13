# frozen_string_literal: true

# this controller controls the questions actions
class QuestionsController < ApplicationController
  def ask
    # ask action
  end

  def answer
    @question = params[:question]

    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                'I don\'t care, get dressed and go to work!'
              end
  end
end
