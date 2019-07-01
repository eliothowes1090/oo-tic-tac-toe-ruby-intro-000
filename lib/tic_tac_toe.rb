require 'pryx'

class TicTacToe

  def initialize(board = nil)
    @board = board || [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    position = user_input.to_i
    position = position - 1
  end

  def move(position, token = "X")
    @board[position] = token
  end

  def position_taken?(position)
    @board[position] != " " ? true : false
  end

  def valid_move?(position)
    if position >= 0 && position <9 && !position_taken?(position)
      return true
    end
    false
  end

  def turn_count
    @board.count {|position| position != " "}
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def turn

    puts "Choose your position (1-9)."

    user_input = gets.chomp
    position = input_to_index(user_input)

      if valid_move?(position)
        move(position, current_player)
        display_board
      else
        puts "Please supply a valid position (1-9)."
        user_input = gets.chomp
        position = input_to_index(user_input)
      end

  end

  def won?
     @board.each do |key, value|
binding.pry
     end
  end

end
