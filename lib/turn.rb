def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, character = "X")
    display_board(board)
  else
    until valid_move?(board, index) == true
      puts "Please enter 1-9:"
      user_input = gets.strip
    end
  end
end




def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, position, character = "X")
  board[position] = character
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  elsif position_taken?(board, index) == true
    return false
  end
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] != " "
    return true
  end
end
