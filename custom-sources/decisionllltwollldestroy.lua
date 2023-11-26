-- function definitions for syntax highlighting
local function check() end
local function first() end
local function max() end
local function avg() end
local function ifgt() end
local function ifgte() end
local function ifeq() end

-- custom string with comments
ifeq( -- if auctioning
    first(
        decisionlllonelllauction,
        0
    ),
    1111111111111111,
    0, -- then return null
    ifgt( -- else, if Destroy > 1.5*VendorSell
        destroy,
        1.5*vendorsell,
        2222222222222222, -- then destroy
        0 -- else, return null
    )
)

-- custom string without comments
ifeq(
    first(
        decisionlllonelllauction,
        0
    ),
    1111111111111111,
    0,
    ifgt(
        destroy,
        1.5*vendorsell,
        2222222222222222,
        0
    )
)