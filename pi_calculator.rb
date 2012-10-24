class PiCalculator

  def calculate
    # calculate pi in terms of the area of a unit square and the circle
    # inscribed within
    square_area = 1
    # circle radius is 0.5
    # circle diameter is 1.0

    points_in_circle = 0
    num_points = 10000000
    origin = {:x => 0.5, :y => 0.5}

    num_points.times do
      # this is where we a draw a point

      point = {:x => rand, :y => rand}

      # what do we want to know about this point?
      # we want to know if it's in the circle
      # IE we want know if the distance of the point from the origin is
      # less than the radius of the circle
      distance = Math.sqrt((point[:x] - origin[:x])**2 + (point[:y] - origin[:y])**2)

      if distance < 0.5
        points_in_circle += 1
      end
    end
    circle_area = points_in_circle.to_f / num_points
    pi = 4 * (circle_area / square_area)
  end

end
