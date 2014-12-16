class Card
  SHAPES = %i(squiggle circle diamond)
  FILLS = %i(empty half full)
  NUMBERS = %i(one two three)
  COLORS = %i(red green purple)

  ATTRIBUTES = %i(shape fill number color)

  attr_accessor *ATTRIBUTES

  def initialize(*attrs)
    attrs.each do |value|
      if SHAPES.include?(value)
        self.shape = value
      elsif COLORS.include?(value)
        self.color = value
      elsif NUMBERS.include?(value)
        self.number = value
      elsif FILLS.include?(value)
        self.fill = value
      end
    end
  end

  def to_s
    "#{number} #{fill} #{color} #{shape}s"
  end

  def to_a
    a = []
    [SHAPES, COLORS, NUMBERS, FILLS].each do |attr_set|
      attr_set.each do |attr_name|
        a << (has_attr?(attr_name) ? 1 : 0)
      end
    end
    a
  end

  def self.random
    new(SHAPES.sample, FILLS.sample, NUMBERS.sample, COLORS.sample)
  end

  def has_attr?(attr_name)
    shape == attr_name || fill == attr_name || color == attr_name || number == attr_name
  end

  def index_float
    "0.#{attr_index(:shape)+1}#{attr_index(:fill)+1}#{attr_index(:number)+1}#{attr_index(:color)+1}".to_f
  end

  def attr_index(attr_name)
    collection = Card.const_get(attr_name.to_s.upcase + "S")
    collection.find_index(self.send(attr_name))
  end
end

class Set
  attr_accessor :cards
  def initialize(cards)
    self.cards = cards
  end

  def valid?
    return false unless cards.length == 3
    Card::ATTRIBUTES.each do |card_attr|
      return false unless same_or_different(card_attr)
    end
    true
  end

  def self.valid?(cards)
    new(cards).valid?
  end

  def to_a
    # different attempts to turn a set into meaningful inputs:

    Card::ATTRIBUTES.map { |a| same_or_different(a) ? 1 : 0 }
    # cards.map(&:to_a).flatten
    # cards.map(&:index_float)
  end

  def to_s
    "----\n  " + cards.map(&:to_s).join("\n  ") + "\nValid: #{valid?} #{to_a}" + "\n----"
  end

  private

  def same_or_different(card_attr)
    cards.map(&card_attr).uniq.length != 2
  end
end

class Deck
  include Enumerable
  attr_reader :cards

  def initialize
    @cards = []
    Card::COLORS.each do |color|
      Card::NUMBERS.each do |number|
        Card::FILLS.each do |fill|
          Card::SHAPES.each do |shape|
            @cards << Card.new(color, number, fill, shape)
          end
        end
      end
    end
    @cards.shuffle!
  end

  def each(&block)
    cards.each(&block)
  end

  def deal(number)
    cards.pop(number)
  end
end
