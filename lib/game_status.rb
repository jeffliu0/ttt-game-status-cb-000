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
   puts match
   if(match.length == 3 || match2.length == 3)
     return WIN_COMBINATIONS.any?{|combo| (combo && match == match) ||
       combo && match2 == match2}
     end
end

board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
puts won?(board)
