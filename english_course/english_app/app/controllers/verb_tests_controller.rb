class VerbTestsController < ApplicationController
  # GET /verb_tests/new
  # GET /verb_tests/new.json
  def new
    session[:verb_test] = {correct_answers: 0, wrong_answers: 0, verbs: IrregularVerb.all.to_a.shuffle!}
    redirect_to verb_test_url(1)
  end

  # GET /verb_tests/1
  # GET /verb_tests/1.json
  def show
    puts ">>>>>>>>>>>>>>> #{session[:verb_test]}"
    @current_verb = session[:verb_test][:verbs].shift
    @user_answer = IrregularVerb.new :italiano => @current_verb.italiano
    render :index; return unless @current_verb

    
  end

  # GET /verb_tests
  # GET /verb_tests.json
  def index
  end



end
