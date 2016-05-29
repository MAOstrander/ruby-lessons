class Hamming
  VERSION = 2.freeze

  def self.compute(strand_one, strand_two)
    return 0 if strand_one == strand_two
    raise ArgumentError if strand_one.length != strand_two.length

    strand_one = strand_one.chars
    strand_two = strand_two.chars

    comparison = strand_one.zip(strand_two)

    comparison.reduce(0) do |acc, pair|
      acc += 1 unless pair.first == pair.last
      acc
    end

  end

end
