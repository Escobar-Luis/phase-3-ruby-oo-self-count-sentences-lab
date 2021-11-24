require 'pry'

# I dont even have to initialize with a variable to use a method
class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
  end

end

complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
puts complex_string.count_sentences