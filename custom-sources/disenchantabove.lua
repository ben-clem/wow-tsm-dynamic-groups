-- function definitions for syntax highlighting
local function check() end
local function first() end
local function max() end
local function avg() end
local function ifgt() end
local function ifgte() end
local function ifeq() end
local function convert() end

-- custom string with comments
first(
    ifgt(
        expectedahmin,
        10*VendorSell,
        ifgt(
            DBHistorical,
            max(
                10*Destroy,
                convert(DBHistorical)
            ),
            expectedahmin,
            VendorSell
        ),
        VendorSell
    ),
    VendorSell
)

-- custom string without comments
first(
    ifgt(
        expectedahmin,
        10*VendorSell,
        ifgt(
            DBHistorical,
            max(
                10*Destroy,
                convert(DBHistorical)
            ),
            expectedahmin,
            VendorSell
        ),
        VendorSell
    ),
    VendorSell
)