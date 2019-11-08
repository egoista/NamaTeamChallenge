# frozen_string_literal: true

# Class to print the challenge
class NamaTeam
  class << self
    def print
      puts with_map
    end

    def with_temp_variable
      result = ''
      (1..100).each do |n|
        result += ' Nama' if (n % 5).zero?
        result += ' Team' if (n % 7).zero?
        result += " #{n}" unless (n % 5).zero? || (n % 7).zero?

        result += ',' unless n == 100
      end

      result.strip
    end

    def with_map
      (1..100).map do |n|
        result = []
        result << 'Nama' if (n % 5).zero?
        result << 'Team' if (n % 7).zero?
        result << n if result.empty?

        result.join(' ')
      end.join(', ')
    end
  end
end
