class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    string = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    reps = @io.gets.chomp.to_i
    @io.puts "Here is your result:"
    @io.puts string_build(string, reps)
  end

  def string_build(str, repeats)
    s = ""
    (1..repeats).each do
      s += str
    end
    s
  end
end