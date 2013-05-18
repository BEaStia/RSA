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
    crypt message,e,n
  end
  def crypt(message,e,n)

  end
  def decrypt(message,d,n)

  end
end

def modul_pow(a,e,n)
  a1=a % n
  (a1**e)%n
end
def gcd(a, b)
  return a if b.eql? 0
  gcd(b, a % b)
end

rsa=Rsa::new
rsa.init
p rsa.shifr("ОЛОЛОЕВ К ДОСКЕ",3,1021)
#p modul_pow 100000,10000000,3213
#p gcd(5,23)