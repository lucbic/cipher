ALPHA = "abcdefghijklmnopfqrsttuvwxyz"
ALPHA_C = ALPHA.upcase

def caesar_cipher(to_cipher, shift)
  ciphered = String.new
  
  to_cipher.each_char do |i|
    if ALPHA.index(i)
      ciphered << ALPHA[ALPHA.index(i) - shift]
    elsif ALPHA_C.index(i)
      ciphered << ALPHA_C[ALPHA_C.index(i) - shift]
    else
      ciphered << i
    end
  end

return ciphered
end
