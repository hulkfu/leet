require_relative '../lib/leet'
require_relative './spec_helper'

describe Leet do
  describe 'a..z' do
    ('a'..'z').to_a.each do |c|
      leet = c.leet
      puts "#{c}:   #{leet}"
      it "char should not be it self" do
        expect(c).not_to eq(leet)
      end
    end
  end
end
