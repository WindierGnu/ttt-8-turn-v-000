


 def display_board(board)
    
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def valid_move?(board, index)
   
   if index.between?(0, 8) && position_taken?(board, index) == false
     true
     
   else
     false
   end
 end
 
 def position_taken?(board, index)

       if board[index] == " " || board[index] == "" || board[index] == nil
         false

       else  board[index] == "X" || board[index] == "O"
         true
       end  
     end

 def move(board, index, token="X")

  board[index] = token
  
 end

 def input_to_index(input)

  input = input.to_i - 1

 end

 def turn(board)
   
   puts "Please enter 1-9:"

   input = gets

   if valid_move?(board, input_to_index(input) ) == true
     move(board, input_to_index(input))
     display_board(board)
     
   else turn(board)

  end
 end

 