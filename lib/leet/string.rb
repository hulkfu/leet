require_relative './leet'

module Leet
  module String
    def leet
      Leet::str2leet self
    end

    def unleet
      Leet::leet2str self
    end
  end
end
