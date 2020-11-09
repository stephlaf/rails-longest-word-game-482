class GamesController < ApplicationController
  def new
    @letters = []
    alph = ('A'..'Z').to_a

    9.times do
      @letters << alph.sample
    end
  end

  def in_grid?
    letters_hash = {}
    try_hash = {}

    @letters.each { |letter| letters_hash[letter] = @letters.count(letter) }
    @try.split('').each { |letter| try_hash[letter] = @try.split('').count(letter) }
    
    try_hash.all? { |char, count| try_hash[char] <= letters_hash[char] unless letters_hash[char].nil? }
  end

  def english?
  end

  def points

  end

  def score
    @letters = params[:letters].split('')
    @try = params[:try]
    if in_grid? && english

    else

    end
    session[:score] = []
    raise
  end
end
