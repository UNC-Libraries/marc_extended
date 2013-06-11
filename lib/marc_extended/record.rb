
require 'marc'

module MARC

  class Record
    include Comparable
    # call-seq:
    #   rec.countf(tag) => integer
    # Returns number of fields in the record that match the field tag given as an argument.
    # For example, in a record with two 246 fields:
    #    rec.countf(246) #=> 2
    # Regular expression syntax can be passed in. For example to find out how many subject headings:
    #    rec.countf('6..') #=> 2
    # While purely numeric tags can be passed in without quoting them, the regexp needs to be quoted.

    # creates array with all values of one or more subfields
    # in a field.
    # tag must be a string.
    # sf must be a string. one or more single character delimiters with no spaces.

    def <=>(another_record)
      self['001'].value <=> another_record['001'].value
    end

    def array_of_values(tag, sf)
      fs = self.fields(filter = tag)
      ss = sf.split(//)

      v = []
      fs.each do |f|
        ss.each {|c| v << f[c]}
      end
      v.compact
    end

    def countf(tag)
      fields = self.find_all {|f| f.tag =~ /^#{tag}/}
      return fields.size
    end #def countf(tag)

    # Returns value of 001 field
    def _001
      field = self.find {|f| f.tag =~ /^001/}
      field.value
    end #def _001

    def main_entry?
      field = self.find_all {|f| f.tag =~ /1[01][01]/}
      if field.size > 0
        return true
      else
        return false
      end
    end #main_entry?

    def count_paes
      field = self.find_all {|f| f.tag =~ /700/}
      field.size
    end #def count_paes

    def count_controlled_shs
      field = self.find_all {|f| f.tag =~ /^6(00|10|11|30|50|51)/}
      field.size
    end #def count_controlled_shs

    def count_uncontrolled_shs
      field = self.find_all {|f| f.tag =~ /^6(5[2-9]|[6-9])/}
      field.size
    end #def count_uncontrolled_shs

  end #class Record
end #module MARC