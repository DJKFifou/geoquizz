class QuizzhardController < ApplicationController
  def hard
    @questionhard = Questionhard.all.sample
    @answers = []
    @answers << { label: @questionhard.correct_answer, correct: true }
    @answers << { label: @questionhard.wrong_answer_1, correct: false }
    @answers << { label: @questionhard.wrong_answer_2, correct: false }
    @answers << { label: @questionhard.wrong_answer_3, correct: false }
    @answers.shuffle!
  end
end