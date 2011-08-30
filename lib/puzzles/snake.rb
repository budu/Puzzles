
module Puzzles

  # A draft, where there's multiple managers that must pick players to
  # make their team. Each have a turn in which they can make a pick. It
  # follows a predetermined order, so each team is assigned a position
  # from 1 to the number of team involved.
  #
  # A snake draft is a way to compensate the disavantage of being the
  # last one to pick. The manager are given a turn in the order of their
  # positions in the first pass, the this order is reversed, giving the
  # last manager two picks in a row. This is repeated as long as there
  # is an incomplete team.
  #
  # For example, in a snake draft having three teams, the positions for
  # each turn is:
  #
  #  turn:      0  1  2  3  4  5  6  7  8  9...
  #  position:  1  2  3  3  2  1  1  2  3  3...
  module Snake

    # Returns the number of turn before my next turn in a snake draft.
    #
    # Example:
    #     my_turn_in 1, 2, :forward, 5     # returns 8
    #
    # @param my_position [Integer] The position of my team.
    # @param current_position [Integer] The position of the team currently
    #   playing.
    # @param current_direction [Symbol] The direction of the team
    #   currently playing, can be one of :backward, :same or :forward.
    # @param size [Integer] The number of teams.
    # @return [Integer] The number of turn before my next turn.
    def my_turn_in(my_position,
                   current_position,
                   current_direction,
                   size)

      # TODO: Solve it!

    end

  end

end
