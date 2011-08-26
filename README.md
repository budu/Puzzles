# Puzzles

## Setup

First, fork the repository on Github, then clone your fork on your local
machine:

    git clone git@github.com:<github-handle>/puzzles.git

Then create a branch to solve a puzzle: 

    git checkout -b <github-handle>_<puzzle-name>

When you're ready to start, erase the TODO comment in the puzzle method
and make a commit saying 'Started working on <puzzle-name>.', like this:

    git commit -am 'Started working on my_turn_in.'

You can now start coding! To validate your solution, you can run the
tests for an individual puzzle using the test suite. To test the Snake
`my_turn_in` puzzle, for example, run:

    ruby ./test/puzzles/snake/my_turn_in_test.rb

Puzzles can be found in the files contained in the `lib/puzzles`
directory.
