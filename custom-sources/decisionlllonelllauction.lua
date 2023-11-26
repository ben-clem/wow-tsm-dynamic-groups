-- function definitions for syntax highlighting
local function check() end
local function first() end
local function max() end
local function avg() end
local function ifgt() end
local function ifgte() end
local function ifeq() end

-- custom string with comments
ifgte( -- if DailySold ≥ 1,000
    first(
        dbregionsoldperday,
        0.1
    ),
    1000,
    ifgt( -- && MinAH > 1.1*VendorSell
        expectedahmin,
        1.1*first(
            vendorsell,
            0
        ),
        ifgt( -- && Historical > 0.5*Destroy
            dbhistorical,
            0.5*first(
                destroy,
                0
            ),
            1111111111111111, -- DECISION = AUCTION
            0 -- else (Historical ≤ 0.5*Destroy): DECISION = DO NOT AUCTION
        ),
        0 -- else (MinAH ≤ 1.1*VendorSell): DECISION = DO NOT AUCTION
    ),
    ifgte( -- else if DailySold ≥ 100
        first(
            dbregionsoldperday,
            0.1
        ),
        100,
        ifgt( -- && MinAH > 2*VendorSell
            expectedahmin,
            2*first(
                vendorsell,
                0
            ),
            ifgt( -- && Historical > 0.75*Destroy
                dbhistorical,
                0.75*first(
                    destroy,
                    0
                ),
                1111111111111111, -- DECISION = AUCTION
                0 -- else (Historical ≤ 2*Destroy): DECISION = DO NOT AUCTION
            ),
            0 -- else (MinAH ≤ 2*VendorSell): DECISION = DO NOT AUCTION
        ),
        ifgte( -- else if DailySold ≥ 10
            first(
                dbregionsoldperday,
                0.1
            ),
            10,
            ifgt( -- && MinAH > 3*VendorSell
                expectedahmin,
                3*first(
                    vendorsell,
                    0
                ),
                ifgt( -- && Historical > 2.5*Destroy
                    dbhistorical,
                    2.5*first(
                        destroy,
                        0
                    ),
                    1111111111111111, -- DECISION = AUCTION
                    0 -- else (Historical ≤ 3*Destroy): DECISION = DO NOT AUCTION
                ),
                0 -- else (MinAH ≤ 3*VendorSell): DECISION = DO NOT AUCTION
            ),
            ifgte( -- else if DailySold ≥ 1
                first(
                    dbregionsoldperday,
                    0.1
                ),
                1,
                ifgt( -- && MinAH > 5*VendorSell
                    expectedahmin,
                    5*first(
                        vendorsell,
                        0
                    ),
                    ifgt( -- && Historical > 5*Destroy
                        dbhistorical,
                        5*first(
                            destroy,
                            0
                        ),
                        1111111111111111, -- DECISION = AUCTION
                        0 -- else (Historical ≤ 5*Destroy): DECISION = DO NOT AUCTION
                    ),
                    0 -- else (MinAH ≤ 5*VendorSell): DECISION = DO NOT AUCTION
                ),
                ifgt( -- else (DailySold < 1) if MinAH > 10*VendorSell
                    expectedahmin,
                    10*first(
                        vendorsell,
                        0
                    ),
                    ifgt( -- && Historical > 10*Destroy
                        dbhistorical,
                        10*first(
                            destroy,
                            0
                        ),
                        1111111111111111, -- DECISION = AUCTION
                        0 -- else (Historical ≤ 10*Destroy): DECISION = DO NOT AUCTION
                    ),
                    0 -- else (MinAH ≤ 10*VendorSell): DECISION = DO NOT AUCTION
                )
            )
        )
    )
)

-- custom string without comments
ifgte(
    first(
        dbregionsoldperday,
        0.1
    ),
    1000,
    ifgt(
        expectedahmin,
        1.1*first(
            vendorsell,
            0
        ),
        ifgt(
            dbhistorical,
            0.5*first(
                destroy,
                0
            ),
            1111111111111111,
            0
        ),
        0
    ),
    ifgte(
        first(
            dbregionsoldperday,
            0.1
        ),
        100,
        ifgt(
            expectedahmin,
            2*first(
                vendorsell,
                0
            ),
            ifgt(
                dbhistorical,
                0.75*first(
                    destroy,
                    0
                ),
                1111111111111111,
                0
            ),
            0
        ),
        ifgte(
            first(
                dbregionsoldperday,
                0.1
            ),
            10,
            ifgt(
                expectedahmin,
                3*first(
                    vendorsell,
                    0
                ),
                ifgt(
                    dbhistorical,
                    2.5*first(
                        destroy,
                        0
                    ),
                    1111111111111111,
                    0
                ),
                0
            ),
            ifgte(
                first(
                    dbregionsoldperday,
                    0.1
                ),
                1,
                ifgt(
                    expectedahmin,
                    5*first(
                        vendorsell,
                        0
                    ),
                    ifgt(
                        dbhistorical,
                        5*first(
                            destroy,
                            0
                        ),
                        1111111111111111,
                        0
                    ),
                    0
                ),
                ifgt(
                    expectedahmin,
                    10*first(
                        vendorsell,
                        0
                    ),
                    ifgt(
                        dbhistorical,
                        10*first(
                            destroy,
                            0
                        ),
                        1111111111111111,
                        0
                    ),
                    0
                )
            )
        )
    )
)