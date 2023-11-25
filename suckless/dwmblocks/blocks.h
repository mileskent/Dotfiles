static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"dwm", "", 0, 0},
    {"", "~/.suckless/dwmblocks/commands/gettemp.sh", 15*60, 0}, // temp in F and thermon icon
    {"", "~/.suckless/dwmblocks/commands/getwifi.sh", 5, 0}, // Ssid and wifi icon
    {"", "~/.suckless/dwmblocks/commands/getvolume.sh", 1, 0}, // volume
    {"  ", "date +'%a, %b %d'", 1, 0}, // date
    {" ", "date +'%H:%M:%S'", 1, 0} // time
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
