require './game'
require 'ruby-fann'

input = []
output = []

100.times do
  deck = Deck.new
  27.times do
    set = Set.new(deck.deal(3))
    input <<  set.to_a
    output << [set.valid? ? 1 : 0]
  end
end

fann = RubyFann::Standard.new(
  num_inputs: input.first.length,
  hidden_neurons: [8,8],
  num_outputs: output.first.length
)

training_data = RubyFann::TrainData.new(
  inputs: input,
  desired_outputs: output
)

fann.train_on_data(training_data, 1000, 1, 0.001)

10.times do
  deck = Deck.new
  27.times do
    set = Set.new(deck.deal(3))
    guess_num = fann.run(set.to_a)[0]
    guess = guess_num > 0.5

    if guess || set.valid?
      puts set.to_s
      puts "#{set.valid?}, guess: #{guess}, #{guess_num}"
    end
  end
end
