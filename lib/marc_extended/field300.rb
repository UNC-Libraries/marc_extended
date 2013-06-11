module Field300 
  require 'lib/mymarc'
  B_PUNCT = " :"
  C_PUNCT = " ;"
  E_PUNCT = " +"
  
      if the300.nextSubfield('a') == 'b'
      has_b += 1
      b_punct_wrong unless a =~ / :$/
    end #if the300.nextSubfield('a') == 'b'
    
        if the300.nextSubfield('a') == 'c'
      has_c += 1
      c_punct_wrong unless a =~ / ;$/
    end #if the300.nextSubfield('a') == 'b'
    
            if the300.nextSubfield('b') == 'c'
      has_c += 1
      c_punct_wrong unless b =~ / ;$/
    end #if the300.nextSubfield('a') == 'b'
    
    Field.nextSubfield(theSubfield) == 'testingSF'
    
#    def initialize(field, 
    

    
def b300_punct_correct?(preceding_sf)
  preceding_sf_value = the300.getSubfield(preceding_sf)
  if preceding_sf_value =~ / :$/
    return true
  else
    return false
  end #def check_sf_b_punct
end

  def check_sf_c_punct
  end #def check_sf_c_punct
end #module
