# class TicTacToe 
  
#   def initialize(board = nil) 
#     @board = board || Array.new(9," ")
#   end
  
#   WIN_COMBINATIONS = [
#     [0,1,2],
#     [3,4,5],
#     [6,7,8],
#     [0,3,6],
#     [1,4,7],
#     [2,5,8],
#     [0,4,8],
#     [2,4,6]
    
#     ]
  
  
#   def display_board
#     puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
#     puts "-----------"
#     puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
#     puts "-----------"
#     puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
#   end
  
#   def input_to_index(input)
    
#     input = input.to_i
#     index = input -1
#     index
#   end 
    
#   def move (position, token)
#     @board[position] = token
#   end 
  
#   def position_taken?(index) 
#     (@board[index] == "X") || (@board[index] == "O")
    
#   end 
  
#   def valid_move?(position)
#     position.between?(0,8) && !position_taken?(position)
#   end 
  
#   def turn_count 
#     num_turns = 0
    
#     @board.each do |space| 
#       if space == "X" || space == "O"
#         num_turns +=1 
#       end 
#     end 
#     num_turns 
#   end 
  
#   def current_player
#     if turn_count % 2 == 0
#       "X"
#     else 
#       "O"
#     end 
#   end 
  
#   def won? 
#     WIN_COMBINATIONS.detect do |combo|
#       if (@board[combo[0]]) == "X" && (@board[combo[1]]) == "X" && (@board[combo[2]]) == "X"
#         return combo 
#       elseif (@board[combo[0]]) == "O" && (@board[combo[1]]) == "O" && (@board[combo[2]]) == "O"
#         return combo 
#       end
#       false
#     end
#   end 
  
#   def full? 
#     @board.all? {|occupied| occupied != " "}
#   end
  
#   def draw? 
#     full? && !(won?)
#   end 
  
#   def over?
#     draw? || won? || full?
#   end 
  
#   def winner 
#     WIN_COMBINATIONS.detect do |combo|
#       if (@board[combo[0]]) == "X" && (@board[combo[1]]) == "X" && (@board[combo[2]]) == "X"
#         return "X"
#       elseif (@board[combo[0]]) == "O" && (@board[combo[1]]) == "O" && (@board[combo[2]]) == "O"
#         return "O"
#       else
#         nil
#       end 
#     end
#   end
  
#   def turn
#     puts "Please enter 1-9:"
#     input = gets.strip
#     index = input_to_index(input)
#     char = current_player
#     if valid_move?(index)
#       move(index, char)
#       display_board
#     else
#       turn
#     end
#   end
  
# end 











class TicTacToe 

  def initialize 
    @board = Array.new(9," ")
    @board
  end 
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
    ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input = (input.to_i)-1
  end 
  
  def move(index, token)
    @board[index] = token
  end 
    
  def position_taken?(index)  
    if @board[index] == "X" || @board[index] == "O"
      true 
    else 
      false
    end 
  end 
  
  def valid_move?(position)
    if position.between?(0,8) && !position_taken?(position)
      true
    else false 
    end 
  end 
  
  def turn_count
    turns = 0
    @board.each do |x| 
      if x == "X" || x == "O"
        turns += 1 
      end 
    end 
    turns
  end
  
  def current_player
    if turn_count % 2 == 0 
      "X"
    else 
      "O"
    end 
  end 
  
  def turn 
    puts "input location"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index) 
      move(index,current_player)
      display_board
    else 
      puts "input location"
      input = gets.strip
    end 
  end 
  
  def won? 
    win_combo = nil
    WIN_COMBINATIONS.each do |combo|
      if @board[combo[0]] == "X" && @board[combo[1]] == "X" && @board[combo[2]] == "X"
        true
        win_combo=combo
      elsif @board[combo[0]] == "O" && @board[combo[1]] == "O" && @board[combo[2]] == "O"
        true
        win_combo=combo
      else 
        nil
      end 
    end 
    win_combo
  end 
  
  def full? 
    @board.all? {|occupied| occupied != " "} 
  end 
  
  def draw? 
    if full? || !(won?) 
  end
  
  def over? 
    
  
end 






















