-- function definitions for syntax highlighting
local function check() end
local function first() end
local function min() end
local function max() end
local function avg() end
local function ifgt() end
local function ifgte() end
local function ifeq() end

-- custom string with comments
check(
    first(
        dbminbuyout,
        dbmarket,
        dbhistorical,
        dbregionmarketavg,
        dbregionhistorical,
        dbregionsaleavg,
        crafting,
        vendorsell
    ),
    max(
        2*avg(
            dbminbuyout,
            0.875*dbmarket,
            0.875*dbhistorical,
            0.875*dbregionmarketavg,
            0.875*dbregionhistorical,
            dbregionsaleavg,
            crafting
        ),
        4*vendorsell
    )
)

-- custom string without comments
check(
    first(
        dbminbuyout,
        dbmarket,
        dbhistorical,
        dbregionmarketavg,
        dbregionhistorical,
        dbregionsaleavg,
        crafting,
        vendorsell
    ),
    max(
        2*avg(
            dbminbuyout,
            0.875*dbmarket,
            0.875*dbhistorical,
            0.875*dbregionmarketavg,
            0.875*dbregionhistorical,
            dbregionsaleavg,
            crafting
        ),
        4*vendorsell
    )
)