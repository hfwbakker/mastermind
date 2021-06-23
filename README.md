ASSIGNMENT & RESOURCES:
https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/mastermind
Build a Mastermind game from the command line where you have 12 turns to guess the secret code, starting with you guessing the computer’s random code.

* Think about how you would set this problem up!
* Build the game assuming the computer randomly selects the secret colors and the human player must guess them. Remember that you need to give the proper feedback on how good the guess was each turn!
* Now refactor your code to allow the human player to choose whether they want to be the creator of the secret code or the guesser.
* Build it out so that the computer will guess if you decide to choose your own secret colors. You may choose to implement a computer strategy that follows the rules of the game or you can modify these rules.
* If you choose to modify the rules, you can provide the computer additional information about each guess. For example, you can start by having the computer guess randomly, but keep the ones that match exactly. You can add a little bit more intelligence to the computer player so that, if the computer has guessed the right color but the wrong position, its next guess will need to include that color somewhere.
* If you want to follow the rules of the game, you’ll need to research strategies for solving Mastermind, such as this post.
* Basic game flow:
    # 1 - Computer randomly generates a code
    # 2 - Computer (or player) declares round (12 as standard)
    # 3 - Player makes a guess
    # 4 - Computer checks guess and gives feedback or declares win
    # 5 - Player guesses again
    # 6 - Computer gives feedback again
    # . - /\/\/\/\/\/\/\/\/\/\/\/\/\/\/
    # 8 - Player wins when he gets it right OR player loses when turns expire.

NEXT UP:
- gets.chomp take more than one value? -> maybe something like scanf?
- Need to add some sort of input validation.
- figure out game loop -> maybe with a simple while loop taking amount of rounds as an argument that breaks if a win condition is met?
- Check out the questions in test.rb

LOG:
--- Wednesday June 23rd ---
- Back in the saddle after more than a month, need to review things a bit.
- self.make_guess in "Guesser" didn't work so turned it into a function. Will have to determine what the consequences, if any, are.
- Will likely do game loop with a while loop.

--- Tuesday May 18th ---
Day 2 of Mastermind
- Created main class (Mastermind) and two sub classes (Guesser, Codemaker). All three can succesfully read into the same board info.
- All class methods are now implemented correctly and seem to interact correctly.
- give_feedback now gives feedback correctly... i think?
- Some things I clearly don't yet get about classes lol.

--- Wednesday May 12th ---
Day 1 of Mastermind
- Figured out how the game works
- Wrote the logic for some of the basic functions like checking win condition, giving feedback etc.