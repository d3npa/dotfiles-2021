static const char *fonts[]          = { "FantasqueSansMono:size=12" };
static const char dmenufont[]       = "FantasqueSansMono:size=12";
static const char col_cyan[]        = "#005577";
static const char col_bg[]          = "#1b182c";
static const char col_fg[] 	    = "#c991e1";
static const char col_gray[]        = "#cbe3e7";

static const char col_red[]         = "#ff8080";
static const char col_green[]       = "#95ffa4";
static const char col_yellow[]      = "#ffb378";


static const char *colors[][3]      = {
	/*                 fg          bg      border   */
	[SchemeNorm] =   { col_gray,   col_bg, col_bg },
	[SchemeSel]  =   { col_fg,     col_bg, col_fg },
	[SchemeWarn] =   { col_red,    col_bg, col_bg },
	[SchemeUrgent] = { col_red,    col_bg, col_bg },
                         { col_yellow, col_bg, col_bg },
			 { col_green,  col_bg, col_bg },
};

