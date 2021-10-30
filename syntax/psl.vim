" Vim syntax file
" Language: TradingView Pine Script Language
" Maintainer: Bruno Morgado
" Contributor: Daniel Bretoi
" Latest Revision: Saturday October 30, 2021

if exists("b:current_syntax")
    finish
endif

" Keywords
" -----------------------------------------------------------------------------
syn iskeyword @,48-57,192-255,$,_,.

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
syn keyword pslOperator and not or

" begin functions ============================
" TODO: make category for annotation function
syn keyword pslFunction alert alertcondition
syn keyword pslFunction abs acos asin atan avg barcolor
syn keyword pslFunction bgcolor ceil cos
syn keyword pslFunction dayofmonth dayofweek
syn keyword pslFunction exp fill fixnan floor heikenashi
syn keyword pslFunction hline hour iff indicator input kagi linebreak
syn keyword pslFunction log log10 max min minute
syn keyword pslFunction month na nz offset
syn keyword pslFunction plot plotarrow plotbar plotcandle plotchar plotshape
syn keyword pslFunction pointfigure pow renko rising round
syn keyword pslFunction second security sign sin sqrt
syn keyword pslFunction study sum tan
syn keyword pslFunction tickerid time
syn keyword pslFunction vwma weekofyear year

" strategy
syn keyword pslFunction strategy strategy.cancel strategy.cancel_all strategy.close
syn keyword pslFunction strategy.close_all strategy.entry strategy.exit
syn keyword pslFunction strategy.order strategy.risk.allow_entry_in
syn keyword pslFunction strategy.risk.max_cons_loss_days
syn keyword pslFunction strategy.risk.max_drawdown
syn keyword pslFunction strategy.risk.max_intraday_filled_orders
syn keyword pslFunction strategy.risk.max_intraday_loss
syn keyword pslFunction strategy.risk.max_position_size

" string
syn keyword pslVariable tostring str.format str.length str.replace_all str.split str.tonumber str.tostring


" ta
syn keyword pslVariable alma atr barssince cci change cmo cog correlation cross crossover
syn keyword pslVariable crossunder cum dev dmi ema falling highest highestbars hma kc kcw linreg
syn keyword pslVariable lowest lowestbars macd median mfi mode mom percentile_linear_interpolation
syn keyword pslVariable percentile_nearest_rank percentrank pivothigh pivotlow range rising rma roc
syn keyword pslVariable rsi sar sma stdev stoch supertrend swma tr tsi valuewhen variance vwap vwma
syn keyword pslVariable wma wpr

syn keyword pslVariable ta.alma ta.atr ta.barssince ta.bb ta.bbw ta.cci ta.change ta.cmo ta.cog
syn keyword pslVariable ta.correlation ta.cross ta.crossover ta.crossunder ta.cum ta.dev ta.dmi ta.ema
syn keyword pslVariable ta.falling ta.highest ta.highestbars ta.hma ta.kc ta.kcw ta.linreg ta.lowest
syn keyword pslVariable ta.lowestbars ta.macd ta.median ta.mfi ta.mode ta.mom
syn keyword pslVariable ta.percentile_linear_interpolation ta.percentile_nearest_rank ta.percentrank
syn keyword pslVariable ta.pivothigh ta.pivotlow ta.range ta.rising ta.rma ta.roc ta.rsi ta.sar ta.sma
syn keyword pslVariable ta.stdev ta.stoch ta.supertrend ta.swma ta.tr ta.tsi ta.valuewhen ta.variance
syn keyword pslVariable ta.vwap ta.vwma ta.wma ta.wpr

" end functions ================================

" begin variables =========================
syn keyword pslVariable accdist area areabr bool circles close
syn keyword pslVariable columns cross

" alert
syn keyword pslVariable alert.freq_once_per_bar  alert.freq_all alert.freq_once_per_bar_close

" currency
syn keyword pslVariable currency.AUD currency.CAD currency.CHF
syn keyword pslVariable currency.EUR currency.GBP currency.HKD currency.JPY
syn keyword pslVariable currency.NOK currency.NONE currency.NZD currency.SEK
syn keyword pslVariable currency.SGD currency.TRY currency.USD currency.ZAR


syn keyword pslVariable dashed dayofmonth dayofweek dotted float friday
syn keyword pslVariable high histogram hl2 hlc3 hour integer
syn keyword pslVariable interval isdaily isdwm isintraday ismonthly isweekly
syn keyword pslVariable line location.abovebar location.absolute
syn keyword pslVariable location.belowbar location.bottom location.top low
syn keyword pslVariable minute monday month n na ohlc4 openo
syn keyword pslVariable period resolution saturday scale.left
syn keyword pslVariable scale.none scale.right second session session.extended
syn keyword pslVariable session.regular solid source
syn keyword pslVariable syminfo.pointvalue syminfo.prefix syminfo.root
syn keyword pslVariable syminfo.session thursday ticker tickerid time tr
syn keyword pslVariable tuesday volume vwap wednesday weekofyear year
syn keyword pslVariable yellosyn keyword pslVariable strategy.losstrades
syn keyword pslVariable syminfo.pointvalue syminfo.prefix syminfo.root
syn keyword pslVariable syminfo.session teal thursday ticker tickerid time tr
syn keyword pslVariable tuesday volume vwap wednesday weekofyear white year

" shape
syn keyword pslVariable shape.arrowdown shape.arrowup
syn keyword pslVariable shape.circle shape.cross shape.diamond shape.flag
syn keyword pslVariable shape.labeldown shape.labelup shape.square
syn keyword pslVariable shape.triangledown shape.triangleup shape.xcross

" size
syn keyword pslVariable size.auto size.huge size.large size.normal size.small size.tiny

" strategy
syn keyword pslVariable strategy.cash strategy.closedtrades
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

" color for v5
syn keyword pslVariable aqua black blue fuchsia gray green lime maroon navy olive orange
syn keyword pslVariable purple red silver teal white yellow
syn keyword pslVariable color.aqua color.black color.blue color.fuchsia color.gray color.green
syn keyword pslVariable color.lime color.maroon color.navy color.olive color.orange color.purple
syn keyword pslVariable color.red color.silver color.teal color.white color.yellow


" end variables =========================

" types
syn keyword pslType int float bool color string label box table

" bool
syn keyword pslBoolean true false

" version statement
syn match pslVersion "\v.*\@version\=\d"

" conditional
syn keyword pslConditional if else
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
hi def link pslVariable Identifier
hi def link pslFunction Function
hi def link pslNumber Number
hi def link pslFloat Float
hi def link pslOperator Operator
hi def link pslConditional Conditional
hi def link pslNamespace Keyword
hi def link pslVersion Keyword
hi def link pslBoolean Boolean
hi def link pslType Type


" Set syntax
" -----------------------------------------------------------------------------
let b:current_syntax = "psl"
