@board = ["___", "___", "___", "___"]


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

make_guess