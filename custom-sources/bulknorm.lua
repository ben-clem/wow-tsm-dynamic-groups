-- function definitions for syntax highlighting
local function check() end
local function first() end
local function max() end
local function avg() end

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
            1*dbmarket,
            1*dbhistorical,
            1*dbregionmarketavg,
            1*dbregionhistorical,
            dbregionsaleavg,
            crafting
        ),
        2*vendorsell
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
            1*dbmarket,
            1*dbhistorical,
            1*dbregionmarketavg,
            1*dbregionhistorical,
            dbregionsaleavg,
            crafting
        ),
        2*vendorsell
    )
)
