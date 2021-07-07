class Person
    attr_reader :name, :hitpoint, :attack_damage, :deflect

    def initialize(name, hitpoint, attack_damage, deflect)
        @name = name
        @hitpoint = hitpoint
        @attack_damage = attack_damage
        @deflect = deflect
    end

    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
    end

    def attack(other_person)
        if other_person.name == "Jin Sakai"
            if other_person.deflecked(@deflect) < 80
                puts "#{other_person.name} deflected"
            else 
            other_person.take_damage(@attack_damage)
            puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
            end
        elsif other_person.name == "Khotun Khan"
            other_person.take_damage(@attack_damage)
        puts "#{@name} attacks #{other_person.name} with #{@attack_damage} damage"
        end
    end

    def take_damage(damage)
        @hitpoint -= damage
    end

    def deflecked(deflect)
        @deflect += 10
    end
end


    