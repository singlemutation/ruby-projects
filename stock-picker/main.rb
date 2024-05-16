def stock_picker(array)
    result_array = []
    array.each_with_index do |r_element, r_index|
      array.each_with_index do |f_element, f_index|
        if r_index > f_index
          if r_element > f_element
          result_array << [f_index, r_index, r_element - f_element]
          end
        end
      end
    end
    best_array = result_array.max_by {|a, b, c| c}
    best_array.shift(2)
  end  
  
  p stock_picker([5,10,8,3,14,15,1,18,0])