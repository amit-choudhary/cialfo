class String

  def char_count
    counts = Hash.new(0)
    each_char do |char|
      counts[char] += 1
    end
    counts
  end

end
