-- ----------------------------------------------------------------------------
-- C O N F I G
-- ----------------------------------------------------------------------------
set RATES_DOCUMENT_PATH to "path/to/your/document.numbers"
set RATES_DOCUMENT to "Your Document Name"
set RATES_SHEET to "Your Sheet Nmae"
set RATES_TABLE to "Your Table Name"


-- ----------------------------------------------------------------------------
-- A C T I O N S
-- ----------------------------------------------------------------------------
-- Fetch rates
set RATE_USDT_RUB to getRateFromCoingate("USDT/RUB")
set RATE_ETH_USDT to getRateFromCoingate("ETH/USDT")

tell application "Numbers"
    activate
    try
        open (RATES_DOCUMENT_PATH)
    end try

    tell document RATES_DOCUMENT
        tell sheet RATES_SHEET
            tell table RATES_TABLE
                -- Save rates to Numbers
                set value of cell "B2" to RATE_USDT_RUB
                set value of cell "C3" to RATE_ETH_USDT
            end tell
        end tell
    end tell

    display dialog "Currency rates have been successfully updated"
end tell



-- ----------------------------------------------------------------------------
-- H E L P E R S
-- ----------------------------------------------------------------------------
on getRateFromCoingate(market)
    set shellCmd to "curl -s https://api.coingate.com/v2/rates/merchant/" & market
    set rawData to do shell script shellCmd
    set rate to replaceText(rawData, ".", ",") as number
    return rate
end getRateFromCoingate


on replaceText(theString, searchString, replaceString)
    set AppleScript's text item delimiters to searchString
    set theStringItems to every text item of theString
    set AppleScript's text item delimiters to replaceString
    set theString to theStringItems as string
    set AppleScript's text item delimiters to ""
    return theString
end replaceText
