require_relative 'connection_basic.rb'

class FastModulation
  attr_accessor :a, :x, :p, :result

  def init_func(mode, rander)
    if rander == 1
      @a = rand(mode)
      @x = rand(mode)
      @p = rand(mode)
    elsif rander == 2
      puts "\e[32mPuts A = \e[0m".chomp()
      @a = gets.chomp().to_i
      puts "\e[32mPuts X = \e[0m".chomp()
      @x = gets.chomp().to_i
      puts "\e[32mPuts P = \e[0m".chomp()
      @p = gets.chomp().to_i
    else
      return -1
    end
    @result = func_mod(@a, @x, @p)
  end

  def fmod(a, x, p)
    result = 1
    x_binary = to_binary(x)
    semi_res = a % p
    for i in (0..x_binary.length)
      if (x_binary[i] == 1)
        result = (result * semi_res) % p
      end
      semi_res = (semi_res * semi_res) % p
    end
    return result
  end
end
