'''
* one code maker, one code guesser
* guesser gets 8 - 12 turns to guess (must be even number)
* code consists of 4 slots * 6 different possible colors [(RED), (ORA)NGE, (YEL)LOW, (GRE)EN, (BLU)E, (PUR)PLE]
* code maker gives feedback
* two different color pins, BLACK (right color, right position), WHITE (right color, wrong position)
* the feedback pins are not placed in a corresponding slot, so the guesser only knows e.g. one of his guesses was right and in the right spot, but doesnt know which one
* in this case, the computer is the code creator
'''


feedback_pins = ["WHITE", "BLACK"]
the_code = ["___", "___", "___", "___"]
guess_board = ["___", "___", "___", "___"]

# 1 - Computer randomly generates a code
def code_generator
  @code_pins = ["RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "PURPLE"]
  # @the_code = [code_pins[rand(5)], code_pins[rand(5)], code_pins[rand(5)], code_pins[rand(5)]]
  @the_code = ["RED", "BLUE", "BLUE", "BLUE"]
  # print @the_code
end
# 2 - Computer (or player) declares round (12 as standard)
# 3 - Player makes a guess
def make_guess
  @guess = ["RED", "RED", "RED", "RED"]
end
# 4 - Computer checks guess and gives feedback or declares win
def give_feedback
  feedback = []
  # check exact match (place + color)
  (0..@the_code.length-1).each do |i|
    if @guess[i] == @the_code[i]
      feedback.append("WHITE")
    elsif @the_code.include? @guess[i]
      feedback.append("BLACK")
    else
      "NOPE"
    end
  end
  print feedback
end

def check_guess
  print "guess = #{@guess}\n"
  print "code = #{@the_code}\n"
  if @guess == @the_code
    puts "YOU WIN"
  else
    puts "YOU DONT WIN"
    give_feedback
  end
end
# 5 - Player guesses again
# 6 - Computer gives feedback again
# . - /\/\/\/\/\/\/\/\/\/\/\/\/\/\/
# 8 - Player wins when he gets it right OR player loses when turns expire.


code_generator
make_guess
check_guess
give_feedback
