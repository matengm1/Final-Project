class Question
  attr_reader :question
  attr_accessor :answer_yes, :answer_no
  def initialize(question)
    @question = question
    @answer_yes = 0
    @answer_no = 0
  end
  
  def add_yes
    @answer_yes += 1
  end
  
  def add_no
    @answer_no += 1
  end
end