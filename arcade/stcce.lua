require("model2");	-- Import model2 machine globals
function Init()
end
function Frame()
	Model2_SetWideScreen(1)
	Model2_SetStretchALow(1)
	Model2_SetStretchBLow(1)
	Model2_SetStretchAHigh(1)
	Model2_SetStretchBHigh(1)
end

function timecheatfunc(value)
	I960_WriteWord(RAM2BASE+0x22EC,99*64); -- 99 seconds always
end
Options =
{
	timecheat={name="Infinite Time",values={"Off","On"},runfunc=timecheatfunc}
}
