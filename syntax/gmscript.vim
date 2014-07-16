" Vim syntax file
" Language: GameMonkey Script
" Maintainer: Kyle Bostelmann
" Latest Revision: 17 July 2014

if exists("b:current_syntax")
  finish
endif

" languge
syn keyword gmConditional if else
syn keyword gmRepeat for foreach in while dowhile
syn keyword gmStatement break return continue
syn keyword gmOperator and or
syn keyword gmBoolean true false
syn keyword gmConstant null
syn keyword gmIdentifier global local member this

" comments
syn keyword gmTodo TODO FIXME XXX NOTE contained
syn match gmComment "//.*$" contains=gmTodo,@Spell
syn region gmComment start="/\*" end="\*/" contains=gmTodo,@Spell

" strings
syn match  gmSpecial contained "\\[\\abfnrtv\'\"]\|\\\d\{,3}"
syn region gmString  start=+'+ end=+'+ skip=+\\\\\|\\'+ contains=@Spell,gmSpecial
syn region gmString  start=+"+ end=+"+ skip=+\\\\\|\\"+ contains=@Spell,gmSpecial
syn region gmString  start=+`+ end=+`+ skip=+\\\\\|\\"+ contains=@Spell,gmSpecial

" integer number
syn match gmNumber "\<\d\+\>"
syn match gmNumber "\<0[xX]\x\+"
syn match gmNumber "\<0[bB][01]\+"

" floating point number, with dot
syn match gmFloat  "\<\d\+\.\d*[fF]\=\>"
syn match gmFloat  "\.\d*[fF]\=\>"
syn match gmFloat  "\<\d\+\.\d*[eE][-+]\d\+\>"

" functions
syn keyword gmFunction function

" operators
"syn match gmOperator "\(<\|<=\|>\|>=\|==\|&&\|||\)[?#]\{0,2}" skipwhite nextgroup=gmString
"syn match gmOperator "=\|[-+]" skipwhite nextgroup=gmString

" type functions
syn keyword gmFunc Int Float String
syn keyword gmFunc assert print

" thread functions
syn keyword gmFunc thread yield exit
syn keyword gmFunc threadKill threadKillAll
syn keyword gmFunc sleep threadTime threadId
syn keyword gmFunc threadAllIds signal block

" state functions
syn keyword gmFunc stateSet stateGet stateGetLast stateSetExitFunction

" system functions
syn keyword gmFunc debug assert sysTime doString
syn keyword gmFunc typeId typeName typeRegisterOperator
syn keyword gmFunc typeRegisterVariable
syn keyword gmFunc sysCollectGarbage sysGetMemoryUsage
syn keyword gmFunc sysSetDesiredMemoryUsageHard
syn keyword gmFunc sysSetDesiredMemoryUsageSoft
syn keyword gmFunc sysSetDesiredMemoryUsageAuto
syn keyword gmFunc sysGetDesiredMemoryUsageHard
syn keyword gmFunc sysGetDesiredMemoryUsageSoft
syn keyword gmFunc sysGetStatsGCNumFullCollects
syn keyword gmFunc sysGetStatsGCNumIncCollects
syn keyword gmFunc sysGetStatsGCNumIncWarnings

" table functions
syn keyword gmFunc tableCount tableDuplicate

hi def link gmConditional	Conditional
hi def link gmRepeat		Repeat
hi def link gmStatement		Statement
hi def link gmOperator		Operator
hi def link gmBoolean		Boolean
hi def link gmConstant		Constant
hi def link gmIdentifier	Identifier
hi def link gmTodo			Todo
hi def link gmComment		Comment
hi def link gmString		String
hi def link gmNumber		Number
hi def link gmFloat			Float
hi def link gmFunction		Function
hi def link gmOperator		Operator

"hi def link gmFunc			Identifier

let b:current_syntax = "gmscript"

" vim: et ts=4
