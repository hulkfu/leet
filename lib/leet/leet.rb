require 'yaml'

module Leet
  DEBUG = false
  LEETS = YAML.load_file File.join(__dir__, 'leets.yml')
  LEETS_TO_CHAR = {}
  LEETS.each do |key, values|
    values.each do |value|
      LEETS_TO_CHAR[value] = key
    end
  end

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

  def leet2char(chars)
    LEETS_TO_CHAR.keys.each do |leet|
      if chars == leet
        puts "match #{leet} to  #{LEETS_TO_CHAR[leet]}" if DEBUG
        return LEETS_TO_CHAR[leet]
      end
    end
    nil
  end
  module_function :leet2char

  def leet2word(chars)
    return "" if chars.nil? or chars.length == 0

    result = ""
    i = 5 # leet's max length is 5

    while(i>0) do
      tmp_string = chars[0,i]
      c = leet2char tmp_string
      if c
        result << c
        result << leet2word(chars[i..-1])
        break
      else
        i -= 1
      end
    end

    result
  end
  module_function :leet2word

  def leet2str(str)
    result = ""
    str.to_s.split(" ").each do |word|
      result << leet2word(word)
      result << " "
    end
    # result = ""
    # tmp_string = ""
    # str.to_s.split("").each_with_index do |char, index|
    #   if char == ' '
    #     result << ' '
    #     tmp_string = ""
    #   else
    #     tmp_string << char
    #     c = leet2char tmp_string
    #     if c
    #       result << c
    #       tmp_string = ''
    #     end
    #   end
    # end
    result.strip
  end
  module_function :leet2str
end
