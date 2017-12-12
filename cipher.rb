ALPHA = "abcdefghijklmnopfqrstuvwxyz"
ALPHA_C = ALPHA.upcase

def caesar_cipher(to_cipher, shift, direction)
  ciphered = String.new

  to_cipher.each_char do |i|
    if ALPHA.index(i)
      ciphered << increment(false, direction, i, shift)
    elsif ALPHA_C.index(i)
      ciphered << increment(true, direction, i, shift)
    else
      ciphered << i
    end
  end

  ciphered
end

def increment(upcase, direction, char, shift)
  if upcase && direction
    ALPHA_C[ALPHA_C.index(char) + shift]
  elsif upcase && !direction
    ALPHA_C[ALPHA_C.index(char) - shift]
  elsif !upcase && direction
    ALPHA[ALPHA.index(char) + shift]
  elsif !upcase && !direction
    ALPHA[ALPHA.index(char) - shift]
  else
    nil
  end
end

def to_b(value)
  if value == 'true'
    true
  elsif value == 'false'
    false
  end
end
