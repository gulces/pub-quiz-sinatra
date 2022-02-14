require "sinatra"
require "sinatra/reloader" if development?
require "better_errors"
require "json"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

file_path = "quiz.json"
quiz = JSON.parse(File.read(file_path))

get "/" do
  erb :home
end

get "/quiz" do
  erb :quiz
end

get "/quiz/:id" do
  @question = quiz[params[:id].to_i]
  if params[:id] == 0
    @score = 0
  else
    @score = params[:score].to_i
  end

  erb :quiz
end

post "/quiz/:id" do
  @question = quiz[params[:id].to_i]
 if params[:id] == 0
    @score = 0
  else
    @score = params[:score].to_i
    @answered_question = quiz[params[:id].to_i - 1]
    if @answered_question["answer"] == params[:selected_answer]
      @score += 1
    end

    case @score
    when 0
      @message = "Better luck next time!"
    when 1
      @message = "Good effort!"
    when 2
      @message = "Well done!"
    when 3
      @message = "You nailed it!"
    end
  end

  if @question
    erb :quiz
  else
    erb :results
  end
end
