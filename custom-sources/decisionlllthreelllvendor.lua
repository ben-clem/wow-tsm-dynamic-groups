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
    ifeq( -- else, if destroying
        first(
            decisionllltwollldestroy,
            0
        ),
        2222222222222222,
        0, -- then return null
        3333333333333333 -- else, vendor
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
    ifeq(
        first(
            decisionllltwollldestroy,
            0
        ),
        2222222222222222,
        0,
        3333333333333333
    )
)