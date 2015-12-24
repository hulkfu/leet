require 'yaml'

module Leet
  LEETS = YAML.load_file File.join(__dir__, 'leets.yml')

  def str2leet(str)
    result = ""
    str.to_s.each_char do |char|
      leet = char
      tmp =  LEETS[char.downcase]
      leet = tmp.sample if tmp != nil
      result << leet
    end
    result
  end
  module_function :str2leet

  def leet2str(leet)
    "TODO..."
  end
  module_function :leet2str
end
