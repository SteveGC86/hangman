# require_relative './game'
# require_relative './guess'
# require_relative './cipher'
#
# module Turn
#   def user_prompt
#     puts "Correct: #{@correct} Incorrect: #{@incorrect}"
#     puts "What letter you would like to guess?"
#   end
#
#   def user_input
#     gets.chomp.downcase.to_s
#   end
#
#   def valid_move?
#     guess = Guess.new
#     guess.letter_checker(user_input, @word)
#   end
#
#   def turn
#     user_prompt
#
#     if valid_move?
#       @correct << check unless @correct.include?(check)
#     else
#       @incorrect << check unless @incorrect.include?(check)
#     end
#   end
# end
