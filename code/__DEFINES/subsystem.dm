
#define INITIALIZATION_INSSATOMS     0   // New should not call atom_init
#define INITIALIZATION_INNEW_MAPLOAD 1   // New should call atom_init(TRUE)
#define INITIALIZATION_INNEW_REGULAR 2   // New should call atom_init(FALSE)

#define INITIALIZE_HINT_NORMAL   0       // Nothing happens
#define INITIALIZE_HINT_LATELOAD 1       // Call atom_init_late
#define INITIALIZE_HINT_QDEL     2       // Call qdel on the atom

//type and all subtypes should always call atom_init in New()
#define INITIALIZE_IMMEDIATE(X) ##X/New(loc, ...){\
    ..();\
    if(!initialized) {\
        args[1] = TRUE;\
        SSatoms.InitAtom(src, args);\
    }\
}

// Subsystem init_order, from highest priority to lowest priority
// The numbers just define the ordering, they are meaningless otherwise.

#define SS_INIT_INPUT         85
#define SS_INIT_EVENTS        13
#define SS_INIT_FLUIDS        12
#define SS_INIT_HOLIDAY       11
#define SS_INIT_JOBS          10
#define SS_INIT_QUIRKS         9
#define SS_INIT_MAPPING        8
#define SS_INIT_ENVIRONMENT    7
#define SS_INIT_XENOARCH       7
#define SS_INIT_ATOMS          6
#define SS_INIT_MACHINES       5
#define SS_INIT_SHUTTLES       4
#define SS_INIT_SUN            3
#define SS_INIT_NIGHTSHIFT     2
#define SS_INIT_LIGHTING       1
#define SS_INIT_DEFAULT        0
#define SS_INIT_AIR           -1
#define SS_INIT_ASSETS        -2
#define SS_INIT_ICON_SMOOTH   -5
#define SS_INIT_ORDER_OVERLAY -6
#define SS_INIT_STICKY_BAN    -7
#define SS_INIT_HOLOMAPS      -8
#define SS_INIT_QUALITIES     -93
#define SS_INIT_DEMO          -94 // To avoid a bunch of changes related to initialization being written, do this last
#define SS_INIT_CHAT          -95 //Should be last to ensure chat remains smooth during init.
#define SS_INIT_UNIT_TESTS    -100


#define SS_PRIORITY_INPUT       1000  // This must always always be the max highest priority. Player input must never be lost.
#define SS_PRIORITY_TIMER        700
#define SS_PRIORITY_OVERLAYS     500
#define SS_PRIORITY_RUNECHAT     410
#define SS_PRIORITY_CHAT         400
#define SS_PRIORITY_TICKER       200
#define SS_PRIORITY_NANOUI       110
#define SS_PRIORITY_TGUI         110
#define SS_PRIORITY_MOBS         100
#define SS_PRIORITY_PARALLAX      65
#define SS_PRIORITY_DEFAULT       50
#define SS_PRIORITY_OBJECTS       40
#define SS_PRIORITY_QUIRKS        40
#define SS_PRIORITY_DEMO          40
#define SS_PRIORITY_ORBIT         35
#define SS_PRIOTITY_ICON_SMOOTH   35
#define SS_PRIORITY_SPACEDRIFT    30
#define SS_PRIORITY_THROWING      25
#define SS_PRIORITY_FASTPROCESS   25
#define SS_PRIORITY_PROCESS       25
#define SS_PRIORITY_AIR           20
#define SS_PRIORITY_FLUIDS        20
#define SS_PRIORITY_GARBAGE       15
#define SS_PRIORITY_HOLOMAPS      10
#define SS_PRIORITY_SUN            3
#define SS_PRIORITY_NIGHTSHIFT     3
#define SS_PRIORITY_LOW            1


#define SS_WAIT_INPUT         1
#define SS_WAIT_DEMO          1
#define SS_WAIT_OVERLAYS      1
#define SS_WAIT_CHAT          1
#define SS_WAIT_THROWING      1
#define SS_WAIT_TIMER         1
#define SS_WAIT_ICON_SMOOTH   1
#define SS_WAIT_LIGHTING      2
#define SS_WAIT_PARALLAX      2
#define SS_WAIT_ORBIT         2
#define SS_WAIT_FASTPROCESS   2
#define SS_WAIT_FLUIDS        3
#define SS_WAIT_GARBAGE       5
#define SS_WAIT_SPACEDRIFT    5
#define SS_WAIT_TGUI          9
#define SS_WAIT_NANOUI       10
#define SS_WAIT_SHUTTLES     10
#define SS_WAIT_VOTE         10
#define SS_WAIT_AIR          10
#define SS_WAIT_QUIRKS       10
#define SS_WAIT_DCS          10
#define SS_WAIT_PROCESSING   10
#define SS_WAIT_MOOD         10
#define SS_WAIT_HOLOMAPS     15
#define SS_WAIT_GNAW         20
#define SS_WAIT_DEFAULT      20
#define SS_WAIT_UNIT_TESTS   20
#define SS_WAIT_SUN         600
#define SS_WAIT_NIGHTSHIFT  600

// SS runlevels

#define RUNLEVEL_INIT 0
#define RUNLEVEL_LOBBY 1
#define RUNLEVEL_SETUP 2
#define RUNLEVEL_GAME 4
#define RUNLEVEL_POSTGAME 8

#define RUNLEVELS_DEFAULT (RUNLEVEL_SETUP | RUNLEVEL_GAME | RUNLEVEL_POSTGAME)
