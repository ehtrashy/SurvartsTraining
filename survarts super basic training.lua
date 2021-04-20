local rb, rbs, rw, rws, rd = memory.readbyte, memory.readbytesigned, memory.readword, memory.readwordsigned, memory.readdword
local wb, ww, wd = memory.writebyte, memory.writeword, memory.writedword

--made for Tomas as a thank you for hosting the friends of fire tourneys
--there was only 2 cheats sorry, will get to some debugging soon


function trashy()
--unlimited time
memory.writebyte(0xBB38,0x99)
--unlimited p1 health
memory.writebyte(0x839E,0x90)
--unlimited p2 health
memory.writebyte(0x8F4E,0x90)
end

emu.registerafter(function()
	trashy()
end)