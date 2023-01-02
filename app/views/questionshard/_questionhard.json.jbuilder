json.extract! question, :id, :text, :correct_answer, :wrong_answer_1, :wrong_answer_2, :wrong_answer_3, :created_at, :updated_at
json.url question_url(question, format: :json)
