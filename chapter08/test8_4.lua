function room1()
    local move = io.read()
    if "south" == move then
        room3()
    elseif "east" == move then
        room2()
    else
        print("INVALID MOVE, BACK TO ROOM1")
        room1()
    end
end

function room2()
    local move = io.read()
    if "south" == move then
        room4()
    elseif "west" == move then
        room1()
    else
        print("INVALID MOVE, BACK TO ROOM2")
        room2()
    end
end

function room3()
    local move = io.read()
    if "north" == move then
        room1()
    elseif "east" == move then
        room4()
    else
        print("INVALID MOVE, BACK TO ROOM3")
        room3()
    end
end

function room4()
    print("Congratulations, you won!")
end

room1()