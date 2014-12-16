Playing with [`ruby-fann`](https://github.com/tangledpath/ruby-fann).

- Implement the game [Set](http://www.setgame.com/) in Ruby
  - Cards have 4 attributes: color, number, fill and shape
  - A valid set is 3 cards where, for each attribute, they're:
    - all the same value; or
    - all different values
  - A deck has one of each possible combination (3^4, 81 cards)

- Can you teach it to the computer just with examples?
  - No
  - This is stupid anyways, you should just give it the rules

- How do you model a Set card (or cards) as meaningful inputs? (See `Set#to_a`)
  - I don't really understand how this works
  - I tried making each attribute 1 or 0. Awful
  - I tried making each attribute one decimal place. Awful
  - It works if you provide it the `same_or_different` result, but that's too easy.

- `$ ruby robot.rb`