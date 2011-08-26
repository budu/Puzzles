# Snake Puzzle

## Setup

First, clone the repository:

    git clone git@github.com:codegenome/snake_puzzle.git

Then create a branch to solve a puzzle: 

    git checkout -b <your-github-nickname>_<puzzle-name>

For example, if your Github nickname is `john` and you want to try the
Snake `my_turn_in` puzzle do:

    git checkout -b john_my_turn_in

When you're ready to start, erase the TODO comment in the puzzle method
and make a commit saying 'Started working on <puzzle-name>.', like this:

    git commit -am 'Started working on my_turn_in.'

You can now start coding! To validate your solution, you can run the
tests for an individual puzzle using the test suite. To the Snake
`my_turn_in` puzzle for example run:

    ruby test/puzzles/snake/my_turn_in_test.rb
