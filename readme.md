<svg height="20" width="144" data-reactid=".32" data-react-checksum="-2051656691"><linearGradient id="a" x2="0" y2="100%" data-reactid=".32.0"><stop stop-opacity=".1" stop-color="#bbb" offset="0" data-reactid=".32.0.0"></stop><stop stop-opacity=".1" offset="1" data-reactid=".32.0.1"></stop></linearGradient><rect rx="3" fill="#555" width="144" height="20" data-reactid=".32.1"></rect><rect rx="3" fill="#cc1e24" width="51" x="93" height="20" data-reactid=".32.2"></rect><rect fill="#cc1e24" x="93" width="13" height="20" data-reactid=".32.3"></rect><rect rx="3" fill="url(#a)" width="144" height="20" data-reactid=".32.4"></rect><g font-size="11" font-family="DejaVu Sans,Verdana,Geneva,sans-serif" fill="#fff" data-reactid=".32.5"><text x="6" fill="#010101" fill-opacity=".3" y="15" data-reactid=".32.5.0">idea quality</text><text x="6" y="14" data-reactid=".32.5.1">idea quality</text><text fill="#010101" x="99" fill-opacity=".3" y="15" data-reactid=".32.5.2">terrible</text><text x="99" y="14" data-reactid=".32.5.3">terrible</text></g></svg>

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
