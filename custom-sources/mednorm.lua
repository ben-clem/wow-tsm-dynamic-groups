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
            0.75*dbmarket,
            0.75*dbhistorical,
            0.75*dbregionmarketavg,
            0.75*dbregionhistorical,
            dbregionsaleavg,
            crafting
        ),
        6*vendorsell
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
            0.75*dbmarket,
            0.75*dbhistorical,
            0.75*dbregionmarketavg,
            0.75*dbregionhistorical,
            dbregionsaleavg,
            crafting
        ),
        6*vendorsell
    )
)