# exercise_9.rb

Owner: #<Class:Psych>
Visibility: public
Signature: load_file(filename, fallback=?)
Number of lines: 9

Load the document contained in filename.  Returns the yaml contained in
filename as a Ruby object, or if the file is empty, it returns
the specified default return value, which defaults to an empty Hash

def self.load_file filename, fallback = false
  File.open(filename, 'r:bom|utf-8') { |f|
    self.load f, filename, FALLBACK.new(fallback)
  }
end
