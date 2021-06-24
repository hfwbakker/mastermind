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
    print("Input colors, seperated by a space. \n> ")
    code_input = gets.chomp.upcase
    input_arguments = code_input.split(' ')
  
    if input_arguments.length != 4
      print("Invalid input. Try again.\n")
      make_guess
    else
      # print input_arguments
      (0..input_arguments.length-1).each do |i|
        @board[i] = input_arguments[i]
      end
      print(@board)
    end
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
    feedback = []
    the_code_copy = @the_code.dup
    board_copy = @board.dup
    print("BLACK TEST\n")
    print("the code:#{the_code_copy}\n")
    print("the board #{board_copy}\n")
    (0..@the_code.length-1).each do |i|
      if @the_code[i] == @board[i]
        print("#{@the_code[i]} matches #{@board[i]}\n")
        feedback.append("BLACK")
        the_code_copy.delete(@the_code[i])
        board_copy.delete(@board[i])
      end
    end
  
    print("WHITE TEST\n")
    print("the code:#{the_code_copy}\n")
    print("the board #{board_copy}\n")
    for i in board_copy
      for j in the_code_copy
        if i == j
          print("i:#{i} matches j:#{j}\n")
          the_code_copy.delete(i)
          feedback.append("WHITE")
        end
      end
    end
    print("code = #{@the_code}\n")
    print("guess = #{@board}\n")
    print ("feedback: #{feedback}\n")
  end

end

test = Mastermind.new(guess_board, code_pins, feedback_pins)
henri = Guesser.new(guess_board, code_pins, feedback_pins)
deja = Codemaker.new(guess_board, code_pins, feedback_pins)
deja.generate_code

# game loop
amount_of_rounds = 10

i = amount_of_rounds
while i >= 1
  print "Rounds remaining: #{i}.\n"
  henri.make_guess
  deja.check_guess
  # deja.give_feedback
  i -= 1
end
