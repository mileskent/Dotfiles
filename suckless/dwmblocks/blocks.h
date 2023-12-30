static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"", "~/.suckless/dwmblocks/commands/getwifi.sh", 5, 0}, // Ssid and wifi icon
    {"", "~/.suckless/dwmblocks/commands/getvolume.sh", 0, 10}, // volume
    {"  ", "date +'%a, %b %d'", 1, 0}, // date
    {" ", "date +'%H:%M:%S'", 1, 0} // time
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "   ";
static unsigned int delimLen = 5;
