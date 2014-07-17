" Vim syntax file
" Language: GameMonkey Script
" Maintainer: Kyle Bostelmann
" Latest Revision: 17 July 2014

if exists("b:current_syntax")
  finish
endif

" language
syn keyword gmConditional if else
syn keyword gmRepeat for foreach in while dowhile
syn keyword gmStatement break return continue
syn keyword gmOperator and or
syn keyword gmBoolean true false
syn keyword gmConstant null
syn keyword gmIdentifier global local member this fork

" comments
syn keyword gmTodo TODO FIXME XXX NOTE contained
syn match gmComment "//.*$" contains=gmTodo,@Spell
syn region gmComment start="/\*" end="\*/" contains=gmTodo,@Spell

" strings, with double quotes
syn match  gmSpecialError contained "\\."
syn match  gmSpecial contained +\\[\\abfnrtv'"]+
syn region gmString  start=+"+ end=+"+ contains=gmSpecial,gmSpecialError,@Spell

" strings, with backdashes
syn match  gmSpecialOther contained +``+
syn region gmStringOther  start=+`+ end=+`+ contains=gmSpecialOther,@Spell

" characters
syn region gmCharacter  start=+'+ end=+'+ contains=@Spell

" integer number
syn match gmNumber "\<\d\+\>"
" hex number
syn match gmNumber "\<0[xX]\x\+"
" binary number
syn match gmNumber "\<0[bB][01]\+"

" hack...
syn match gmFloat  "\<\d\+\."
" float number, starting with a dot, optional exponent and literal
syn match gmFloat  "\.\d\+\([eE][-+]\=\d\+\)\=[fF]\=\>"
" float number, with a dot, optional exponent and literal
syn match gmFloat  "\<\d\+\.\d*\([eE][-+]\=\d\+\)\=[fF]\=\>"
" float number, no dot, with exponent
syn match gmFloat  "\<\d\+[eE][-+]\=\d\+\>"

" functions
syn keyword gmFunction function

" operators
"syn match gmOperator "\(<\|<=\|>\|>=\|==\|&&\|||\)[?#]\{0,2}" skipwhite nextgroup=gmString
"syn match gmOperator "=\|[-+]" skipwhite nextgroup=gmString

" internal functions
syn keyword gmFunc debug
syn keyword gmFunc typeId
syn keyword gmFunc typeName
syn keyword gmFunc typeRegisterOperator
syn keyword gmFunc typeRegisterVariable
syn keyword gmFunc sysCollectGarbage
syn keyword gmFunc sysGetMemoryUsage
syn keyword gmFunc sysGetDesiredMemoryUsageHard
syn keyword gmFunc sysGetDesiredMemoryUsageSoft
syn keyword gmFunc sysSetDesiredMemoryUsageHard
syn keyword gmFunc sysSetDesiredMemoryUsageSoft
syn keyword gmFunc sysSetDesiredMemoryUsageAuto
syn keyword gmFunc sysTime
syn keyword gmFunc doString
syn keyword gmFunc globals
syn keyword gmFunc threadTime
syn keyword gmFunc threadId
syn keyword gmFunc threadAllIds
syn keyword gmFunc threadKill
syn keyword gmFunc threadKillAll
syn keyword gmFunc thread
syn keyword gmFunc yield
syn keyword gmFunc exit
syn keyword gmFunc assert
syn keyword gmFunc sleep
syn keyword gmFunc signal
syn keyword gmFunc block
syn keyword gmFunc stateSet
syn keyword gmFunc stateSetOnThread
syn keyword gmFunc stateGet
syn keyword gmFunc stateGetLast
syn keyword gmFunc stateSetExitFunction
syn keyword gmFunc tableCount
syn keyword gmFunc tableDuplicate
syn keyword gmFunc print
syn keyword gmFunc format
"syn keyword gmFunc Int Float String

hi def link gmConditional	Conditional
hi def link gmRepeat		Repeat
hi def link gmStatement		Statement
hi def link gmOperator		Operator
hi def link gmBoolean		Boolean
hi def link gmConstant		Constant
hi def link gmIdentifier	Identifier
hi def link gmTodo			Todo
hi def link gmComment		Comment
hi def link gmSpecialError  Error
hi def link gmString		String
hi def link gmStringOther	String
hi def link gmCharacter		Character
hi def link gmNumber		Number
hi def link gmFloat			Float
hi def link gmFunction		Function
hi def link gmOperator		Operator

"hi def link gmFunc			Identifier

let b:current_syntax = "gmscript"

" vim: et ts=4
