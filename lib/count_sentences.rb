require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else 
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true 
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    # sentencesCount = self.split(/[?.!]/).reject!{|item| item.empty?}.size
    puts self.split(/[?.!]/).reject!{|item| item.empty?}.size
    # if sentencesCount == 0
    #   return 0 
    # else
    #   return sentencesCount
    # end

  end
  "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
end