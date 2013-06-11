Gem::Specification.new do |s|
  s.name = %q{marc_extended}
  s.version = "0.2.1"
  s.date = %q{2011-01-18}
  s.authors = ["Kristina M Spurgin"]
  s.email = %q{kspurgin@email.unc.edu}
  s.summary = %q{marc_extended extends the marc ruby gem classes.}
  s.homepage = %q{http://www.infomuse.org/}
  s.description = %q{marc_extended extends the marc ruby gem classes. Adds
  <=> to MARC::Record class so that records are considered equivalent if 001s are the same. Added a test.}
  s.files = [ "lib/marc_extended.rb", "lib/marc_extended/record.rb", "lib/marc_extended/data_field.rb"]
end