def caesar_cipher(string, shift_factor)
    safe_chars = [32, 46, 44, 33, 63]
    simp_shift_factor = (shift_factor % 26)
    split_str = string.split('')
    ords = split_str.map { |letter| letter.ord }
    shifted_ords = ords.map do |item|
      item -= 26 if ((item > 64) && (item < 91) && ((item + simp_shift_factor) >90))
      item -= 26 if ((item > 96) && (item < 123) && ((item + simp_shift_factor) >122))
      if safe_chars.include?(item)
        item
      else
        item += simp_shift_factor
      end
    end
    new_arr = shifted_ords.map { |letter| letter.chr }
    new_arr.join
  end
  
  puts caesar_cipher('Nice butt!', 492)