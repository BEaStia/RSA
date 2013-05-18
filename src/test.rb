require_relative("rsa.rb")
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