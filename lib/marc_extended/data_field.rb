
module MARC

  class DataField
  end #class DataField

  # The 020 field
  class Field020 < DataField

    # Returns only the ISBN number, without qualifying text
    def isbn
      whole = self.value
      dashless = whole.gsub(/-/, '')
      return dashless.sub(/^(\d*X?)\W.*$/, '\1')
    end #def isbn
  end #class Field020
end #module MARC