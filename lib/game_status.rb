# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6],
[0,3,6], [1,4,7], [2,5,8]]

def won?(board)
   match = board.size.times.select{|i| board[i] == "X" || board[i] == "O"}
   puts WIN_COMBINATIONS.include?(match)

   puts match
end

board = ["X", "X", "X", " ", " ", " ", "X", " ", " "]
won?(board)
