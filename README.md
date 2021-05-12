ASSIGNMENT & RESOURCES:
Build a Mastermind game from the command line where you have 12 turns to guess the secret code, starting with you guessing the computer’s random code.

* Think about how you would set this problem up!
* Build the game assuming the computer randomly selects the secret colors and the human player must guess them. Remember that you need to give the proper feedback on how good the guess was each turn!
* Now refactor your code to allow the human player to choose whether they want to be the creator of the secret code or the guesser.
* Build it out so that the computer will guess if you decide to choose your own secret colors. You may choose to implement a computer strategy that follows the rules of the game or you can modify these rules.
* If you choose to modify the rules, you can provide the computer additional information about each guess. For example, you can start by having the computer guess randomly, but keep the ones that match exactly. You can add a little bit more intelligence to the computer player so that, if the computer has guessed the right color but the wrong position, its next guess will need to include that color somewhere.
* If you want to follow the rules of the game, you’ll need to research strategies for solving Mastermind, such as this post.

NEXT UP:
- "give_feedback" *might* just report to many "BLACK"s due to *@the_code.include @guess[i]* returning true even if a color has already been reported as BLACK. Meaning: if the code is ["RED", "BLUE", "BLUE", "BLUE"] and guess is ["RED", "RED", "RED", "RED"] it will return ["WHITE", "BLACK", "BLACK", "BLACK"], while it should return ["WHITE"].
- Write rest of the basic logic
- Class it up

LOG:
--- Wednesday May 12th ---
Day 1 of Mastermind
- Figured out how the game works
- Wrote the logic for some of the basic functions like checking win condition, giving feedback etc.