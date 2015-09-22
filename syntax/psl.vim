" Vim syntax file
" Language: TradingView Pine Script Language
" Maintainer: Bruno Morgado
" Latest Revision: 21 September 2015

if exists("b:current_syntax")
    finish
endif

" Keywords
" -----------------------------------------------------------------------------
" comments
syn match pslComment "\v//.*$"

" strings
syn region pslString start=/\v"/ skip=/v\\./ end=/\v"/
syn region pslString start=/\v'/ skip=/v\\./ end=/\v'/

" operators
syn match pslOperator "\v\="
syn match pslOperator "\v\!\="
syn match pslOperator "\v\%"
syn match pslOperator "\v\*"
syn match pslOperator "\v\+"
syn match pslOperator "\v\-"
syn match pslOperator "\v[^/]/[^/]"
syn match pslOperator "\v\<"
syn match pslOperator "\v\<\="
syn match pslOperator "\v\=\="
syn match pslOperator "\v\>"
syn match pslOperator "\v\>\="
syn match pslOperator "\v\?\:"
syn match pslOperator "\v\["
syn match pslOperator "\v\]"
syn keyword pslOperator and
syn keyword pslOperator not
syn keyword pslOperator or

" functions
" TODO: make category for annotation function
syn keyword pslFunction abs acos alma asin atan atr avg barcolor barssince
syn keyword pslFunction bgcolor cci ceil change cog correlation cos cross
syn keyword pslFunction crossover crossunder cum dayofmonth dayofweek dev ema
syn keyword pslFunction exp falling fill fixnan floor heikenashi highest
syn keyword pslFunction highestbars hline hour iff input kagi linebreak linreg
syn keyword pslFunction log log10 lowest lowestbars mac max min minute mom
syn keyword pslFunction month na nz offset percentile_linear_interpolation
syn keyword pslFunction percentile_nearest_rank percentrank pivothigh pivotlow
syn keyword pslFunction plot plotarrow plotbar plotcandle plotchar plotshape
syn keyword pslFunction pointfigure pow renko rising rma roc round rsi sar
syn keyword pslFunction second security sign sin sma sqrt stdev stoch strategy
syn keyword pslFunction strategy.cancel strategy.cancel_all strategy.close
syn keyword pslFunction strategy.close_all strategy.entry strategy.exit
syn keyword pslFunction strategy.order strategy.risk.allow_entry_in
syn keyword pslFunction strategy.risk.max_cons_loss_days
syn keyword pslFunction strategy.risk.max_drawdown
syn keyword pslFunction strategy.risk.max_intraday_filled_orders
syn keyword pslFunction strategy.risk.max_intraday_loss
syn keyword pslFunction strategy.risk.max_position_size study sum swma tan
syn keyword pslFunction tickerid time tostring tr tsi valuewhen variance vwap
syn keyword pslFunction vwma weekofyear wma year

" variables
syn keyword pslVariable accdist aqua area areabr black blue bool circles close
syn keyword pslVariable columns cross currency.AUD currency.CAD currency.CHF
syn keyword pslVariable currency.EUR currency.GBP currency.HKD currency.JPY
syn keyword pslVariable currency.NOK currency.NONE currency.NZD currency.SEK
syn keyword pslVariable currency.SGD currency.TRY currency.USD currency.ZAR
syn keyword pslVariable dashed dayofmonth dayofweek dotted float friday fuchsia
syn keyword pslVariable gray green high histogram hl2 hlc3 hour integer
syn keyword pslVariable interval isdaily isdwm isintraday ismonthly isweekly
syn keyword pslVariable lime line location.abovebar location.absolute
syn keyword pslVariable location.belowbar location.bottom location.top low
syn keyword pslVariable maroon minute monday month n na navy ohlc4 olive openo
syn keyword pslVariable orange period purple red resolution saturday scale.left
syn keyword pslVariable scale.none scale.right second session session.extended
syn keyword pslVariable session.regular shape.arrowdown shape.arrowup
syn keyword pslVariable shape.circle shape.cross shape.diamond shape.flag
syn keyword pslVariable shape.labeldown shape.labelup shape.square
syn keyword pslVariable shape.triangledown shape.triangleup shape.xcross silver
syn keyword pslVariable solid source strategy.cash strategy.closedtrades
syn keyword pslVariable strategy.direction.all strategy.direction.long
syn keyword pslVariable strategy.direction.short strategy.equity
syn keyword pslVariable strategy.eventrades strategy.fixed strategy.grossloss
syn keyword pslVariable strategy.grossprofit strategy.initial_capital
syn keyword pslVariable strategy.losstrades strategy.max_contracts_held_all
syn keyword pslVariable strategy.max_contracts_held_long
syn keyword pslVariable strategy.max_contracts_held_short
syn keyword pslVariable strategy.max_drawdown strategy.netprofit
syn keyword pslVariable strategy.oca.cancel strategy.oca.none
syn keyword pslVariable strategy.oca.reduce strategy.openprofit
syn keyword pslVariable strategy.opentrades strategy.percent_of_equity
syn keyword pslVariable strategy.position_avg_price
syn keyword pslVariable strategy.position_entry_name strategy.position_size
syn keyword pslVariable strategy.wintrades string sunday symbol syminfo.mintick
syn keyword pslVariable syminfo.pointvalue syminfo.prefix syminfo.root
syn keyword pslVariable syminfo.session teal thursday ticker tickerid time tr
syn keyword pslVariable tuesday volume vwap wednesday weekofyear white year
syn keyword pslVariable yellosyn keyword pslVariable strategy.losstrades
syn keyword pslVariable strategy.max_contracts_held_all
syn keyword pslVariable strategy.max_contracts_held_long
syn keyword pslVariable strategy.max_contracts_held_short
syn keyword pslVariable strategy.max_drawdown strategy.netprofit
syn keyword pslVariable strategy.oca.cancel strategy.oca.none
syn keyword pslVariable strategy.oca.reduce strategy.openprofit
syn keyword pslVariable strategy.opentrades strategy.percent_of_equity
syn keyword pslVariable strategy.position_avg_price
syn keyword pslVariable strategy.position_entry_name strategy.position_size
syn keyword pslVariable strategy.wintrades string sunday symbol syminfo.mintick
syn keyword pslVariable syminfo.pointvalue syminfo.prefix syminfo.root
syn keyword pslVariable syminfo.session teal thursday ticker tickerid time tr
syn keyword pslVariable tuesday volume vwap wednesday weekofyear white year
syn keyword pslVariable yellow

" Digits
" -----------------------------------------------------------------------------
" integer with - + or nothing in front
syn match pslNumber "\<\d\+"
syn match pslNumber "\<[-+]\d\+"

" floating point number with decimal no E or e (+,-)
syn match pslFloat "\<\d\+\.\d*"
syn match pslFloat "\<[-+]\d\+\.\d*"

" floating point like number with E and no decimal point (+,-)
syn match pslFloat "\<[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+"
syn match pslFloat "\<\d[[:digit:]]*[eE][\-+]\=\d\+"

" floating point like number with E and decimal point (+,-)
syn match pslFloat "\<[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+"
syn match pslFloat "\<\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+"


" Define highlighting
" -----------------------------------------------------------------------------
hi def link pslComment Comment
hi def link pslString String
hi def link pslFunction Function
hi def link pslVariable Identifier
hi def link pslNumber Number
hi def link pslFloat Float
hi def link pslOperator Operator


" Set syntax
" -----------------------------------------------------------------------------
let b:current_syntax = "psl"
