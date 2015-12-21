require_relative './string'

module AreAnagrams

  def self.are_anagrams?(string_a, string_b)
    string_a.length == string_b.length && string_a.downcase.char_count == string_b.downcase.char_count
  end

end
