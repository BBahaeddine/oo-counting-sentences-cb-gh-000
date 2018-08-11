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
    if self.split(/[?.!]/).size == 0
      return 0 
    else
      if self.split(/[?.!]/).empty?
        return self.split(/[?.!]/).reject!{|item| item.empty?}.size
      else
        return self.split(/[?.!]/).size
      end
    end

  end
  "This is a string! It has three sentences. Right?".count_sentences
end