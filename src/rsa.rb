class Rsa
  @letters
  @indices
  def init
    @letters=("А".."Я").to_a.push(" ")
    @indices=(10..41).to_a.push(99)
  end
  def encode_symbol(symbol)
    @indices[@letters.index(symbol).to_i]
  end
  def decode_symbol(number)
    @letters[@indices.index(number)]
  end
  def create_array_from_message message
    message.chars.to_a.map{|item| encode_symbol(item)}
  end
  def shifr message,e,n
    array=create_array_from_message message
    crypt array,e,n
  end
  def crypt(message,e,n)

  end
  def decrypt(message,d,n)

  end
end