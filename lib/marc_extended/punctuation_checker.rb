#$punctuation_rules = [['245', ['b', ' :'], ['c', ' /'], ['e', ' +']], 
#                     ['260', ['b', ' :'], ['c', '\w,']],
#                     ['300', ['b', ' :'], ['c', ' ;'], ['e', ' +']]]


class PunctuationChecker
  def initialize(fieldtag)
    rules = $punctuation_rules.select {|a| a[0] == fieldtag}
  end #def initialize(fieldtag)

  def check_punct
  end #def check_punct
end