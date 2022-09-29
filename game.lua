math.randomseed(os.time())
number = math.random(1,100)

player = {}
player.guess = 0

print(number) --debug

while ( player.guess ~= number ) do
    print("Guess a number between 1 and 100")
    player.answer = io.read()
    player.guess = tonumber(player.answer)
    if ( player.guess > number ) then
        print("Too High")
    elseif ( player.guess < number ) then
        print("Too Low")
    else
        print("That's right!")
        os.exit()
    end
end
