set value to do shell script "curl https://api.kraken.com/0/public/Ticker?pair=ETHEUR | /usr/local/bin/jq -r '.result.XETHZEUR.a[0][0:-3], .result.XETHZEUR.o[0:-3]'"
set valueArray to words of value
set trend to "null"
set current to item 1 of valueArray
set opening to item 2 of valueArray
if current > opening then
	set trend to "▲"
else
	set trend to "▼"
end if

return "€" & current & " " & trend