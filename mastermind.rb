'''
* one code maker, one code guesser
* guesser gets 8 - 12 turns to guess (must be even number)
* code consists of 4 slots * 6 different possible colors [(RED), (ORA)NGE, (YEL)LOW, (GRE)EN, (BLU)E, (PUR)PLE]
* code maker gives feedback
* two different color pins, BLACK (right color, right position), WHITE (right color, wrong position)
* the feedback pins are not placed in a corresponding slot, so the guesser only knows e.g. one of his guesses was right and in the right spot, but doesnt know which one
* in this case, the computer is the code creator
'''

guess_board = ["___", "___", "___", "___"]
code_pins = ["RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "PURPLE"]
feedback_pins = ["WHITE", "BLACK"]
# the_code = ["___", "___", "___", "___"]

# main game class
class Mastermind
  def initialize(board, code_pins, feedback_pins)
    @board = board
    @code_pins = code_pins
    @feedback_pins = feedback_pins
  end

  def print_board
    print("Executing print_board\n")
    print "#{@board}\n"
  end
end

# class for guesser
class Guesser < Mastermind
  # def self.make_guess
  def make_guess
    print("<<<Executing make_guess>>>\n")
    @board[0] = gets.chomp
    @board[1] = gets.chomp
    @board[2] = gets.chomp
    @board[3] = gets.chomp
    print("New board = #{@board}\n")
  end
end

# class for codemaker
class Codemaker < Mastermind
  def generate_code
    print("<<<Executing generate_code>>>\n")
    @the_code = [@code_pins[rand(5)], @code_pins[rand(5)], @code_pins[rand(5)], @code_pins[rand(5)]]
    print "the code is: #{@the_code}\n"
  end

  def check_guess
    print("<<<Executing check_guess>>>\n")
    print "guess = #{@board}\n"
    print "code = #{@the_code}\n"
    if @board == @the_code
      puts "YOU WIN"
      exit(0)
    else
      puts "YOU DONT WIN.... YET"
      give_feedback
    end 
  end

  def give_feedback
    print("<<<Executing give_feedback>>>\n")
    feedback = []
    # check exact match (place + color)
    (0..@the_code.length-1).each do |i|
      if @board[i] == @the_code[i]
        feedback.append('BLACK')
      elsif (@the_code.include? @board[i]) && (@board[i] != @the_code[i])
        feedback.append('WHITE')
      else
        'NOPE'
      end
    end
    feedback = feedback.sort
    print feedback
  end
end

test = Mastermind.new(guess_board, code_pins, feedback_pins)
henri = Guesser.new(guess_board, code_pins, feedback_pins)
deja = Codemaker.new(guess_board, code_pins, feedback_pins)
deja.generate_code

# henri.make_guess

# game loop
amount_of_rounds = 3

i = amount_of_rounds
while i >= 1
  print "Rounds remaining: #{i}."
  henri.make_guess
  i -= 1
end