def tower_of_hanoi(n, fromPeg, toPeg, auxPeg)
    if n == 1
        puts "Move disk 1 from peg #{fromPeg} to peg #{toPeg}"
    end
    
    tower_of_hanoi(n - 1, fromPeg, auxPeg, toPeg)

    puts "Move disk #{n} from peg #{fromPeg} to peg #{toPeg}"

    tower_of_hanoi(n - 1, auxPeg, toPeg, fromPeg)
end

tower_of_hanoi(4, 1, 3, 2)