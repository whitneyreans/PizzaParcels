class Parcel
  define_method(:initialize) do |length, width, depth, weight|
    @length = length
    @width = width
    @depth = depth
    @weight = weight
  end

  define_method(:volume) do
    @volume = @length.*(@width.*(@depth))
    @volume
  end

  define_method(:cost_to_ship) do
    cost = 0
    if @weight <= 10
      cost = 1
    elsif @weight > 10 && @weight <= 40
      cost = 2
    else
      cost = 3
    end
  end

end
