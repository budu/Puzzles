
module Puzzles

  # A bunch of programming puzzles based on number theory and
  # recreational mathematics.
  module Magic

    # Returns true if the given square matrix is a magic square. A magic
    # square is a matrix where all rows, all columns, and both diagonals
    # sum result in the same constant.
    #
    # Example:
    #     saturn = [4, 9, 2, 3, 5, 7, 8, 1, 6]
    #     square? saturn     # true
    #     not_saturn = [4, 9, 2, 3, 5, 7, 8, 1, 7]
    #     square? not_saturn # false
    #
    # For more information on magic squares, see:
    #   http://en.wikipedia.org/wiki/Magic_square
    #
    # @param *square [Array] An array of numbers representing a square
    #   matrix.
    # @return [Integer] True or false.
    def square?(*square)

      # TODO: Solve it!

    end

    # Returns the number of steps needed for a natural number to achieve
    # oneness using the Collatz conjecture. The Collatz conjecture
    # propose that for any number n, if successively divided by 2 when
    # even or multiplied by 3 then added to one when odd, will
    # eventually reach 1.
    #
    # Example:
    #     collatz_step 6     # 8
    #     collatz_step 11    # 14
    #
    # For more information on the Collatz conjecture, see:
    #   http://en.wikipedia.org/wiki/Collatz_conjecture
    #
    # @param n [Integer] A natural number.
    # @return [Integer] The number of step to attain oneness.
    def collatz_step(n)

      # TODO: Solve it!

    end

    # Returns the number of steps needed for a four-digit number to
    # reach the Kaprekar constant (6174) using the Kaprekar routine. The
    # Kaprekar routine is the process arranging the digits in ascending
    # and descending order and substracting the smaller number from the
    # bigger one repeatedly.
    #
    # Example:
    #     kaprekar_step 3524  # 3
    #     kaprekar_step 9831  # 7
    #
    # For more information on the Kaprekar constant, see:
    #   http://en.wikipedia.org/wiki/6174
    #
    # @param n [Integer] A number of at most four digits that is not a
    # repdigit.
    # @return [Integer] The number of step to reach the Kaprekar constant.
    def kaprekar_step(n)

      # TODO: Solve it!

    end

  end

end
