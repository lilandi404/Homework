require_relative 'person'

jin = Person.new("Jin Sakai", 100, 50, 0)
puts jin

khotun = Person.new("Khotun Khan", 500, 50, 0)
puts khotun



while jin.hitpoint > 0 && khotun.hitpoint > 0
    jin.attack(khotun)
    puts khotun

    khotun.attack(jin)
    puts jin
end

if jin.hitpoint <= 0
    puts "#{jin.name} die"
elsif khotun.hitpoint <= 0
    puts "#{khotun.name} die"
end


