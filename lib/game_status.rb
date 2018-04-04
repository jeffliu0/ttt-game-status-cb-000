# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6],
[0,3,6], [1,4,7], [2,5,8]]

def won?(board)
   match = board.size.times.select{|i| board[i] == "X"}
   match2 = board.size.times.select{|i| board[i] == "O"}

   if !board.include?("X") || !board.include?("O")
     return nil
   end

   if match.length >= 3 &&
   WIN_COMBINATIONS.any?{|combo| (combo && match == match)}
     return match
   elsif match2.length >= 3 &&
     WIN_COMBINATIONS.any?{|combo| (combo && match2 == match2)}
     return match2
   end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
puts won?(board)
