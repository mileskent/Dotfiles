static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    {"", "acpi | awk '{print $5}' | awk -F: '{printf \"%.2f\", ($1 + $2/60 + $3/3600)}'", 5, 0},
    {"", "date +'%a, %b %d'", 1, 0}, // date
    {"", "date +'%H:%M:%S'", 1, 0} // time
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "   ";
static unsigned int delimLen = 5;
