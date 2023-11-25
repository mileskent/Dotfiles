//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"dwm", "", 0, 0},
    {"", "./commands/gettemp.sh", 15*60, 0}, // temp in F and thermon icon
    {"", "./commands/getwifi.sh", 5, 0}, // Ssid and wifi icon
    {"", "./commands/getvolume.sh", 1, 0}, // volume
    {" ", "date +'%a, %b %d'", 1, 0}, // date
    {" ", "date +'%H:%M:%S'", 1, 0}, // time
    {"", "", 0, 0}
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
