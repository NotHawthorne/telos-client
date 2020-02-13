function move()
	manager:moveUnit("1", 2);
end

local clock = os.clock

function sleep(n)
	local t0 = clock()
	while clock() - t0 <= n do end
end

while (1) do
	manager:moveUnit("1", 2);
	manager:moveUnit("1", 1);
	manager:moveUnit("0", 0);
	manager:moveUnit("2", 2);
	sleep(1);
end
