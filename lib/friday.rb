class Friday
  def seat_the_peeps(people)
    chunked = people.each_slice(5).to_a

    if people.size <= 5 || people.size % 5 == 0
      chunked
    else
      by_fives = chunked[0..-3]
      remaining = chunked[-2] + chunked[-1]

      reslice_by =
        case remaining.size
        when 6 then 3
        when 7 then 4
        else 5
        end

      by_fives + remaining.each_slice(reslice_by).to_a
    end
  end
end