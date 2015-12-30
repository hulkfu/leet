require_relative '../lib/leet'
require_relative './spec_helper'

describe Leet do
  describe 'leet' do
    it 'leet a..z' do
      ('a'..'z').to_a.each do |c|
        leet = c.leet
        puts "#{c}:   #{leet}"
        expect(c).not_to eq(leet)
      end
    end
  end

  describe 'unleet' do
    it 'unleet sample' do
      expect("| []_[]\|£ /2(_)P>Ч!".unleet).to eq("i love ruby!")
    end
  end

  describe 'leets.yml' do
    it 'LEETS values count should equal to LEETS_TO_CHAR keys count' do
      expect(Leet::LEETS.values.flatten.count).to eq(Leet::LEETS_TO_CHAR.keys.count)
    end

    it 'one leet to one char' do
      leets_to_char = {}
      Leet::LEETS.each do |key, values|
        values.each do |value|
          if leets_to_char.has_key? value
            raise "!!! #{value} duplicate on #{key} and #{leets_to_char[value]}"
          else
            leets_to_char[value] = key
          end
        end
      end
    end
  end
end
