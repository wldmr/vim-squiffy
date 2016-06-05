" Vim syntax file
" Language: Squiffy
if exists("b:current_syntax")
  finish
endif

runtime! syntax/markdown.vim
unlet! b:current_syntax

syn match squiffySectionHeading "^\[\[[^\]]*\]\]:$" containedin=ALL
syn match squiffyPassageHeading "^\[[^\]\[]*\]:$" containedin=ALL
syn match squiffyLink "\[\[\=[^\]\[]*\]\]\=" containedin=ALLBUT,squiffySectionHeading

syn include @JS syntax/javascript.vim
syn region squiffyJS start="    " end="$" contains=@JS containedin=ALL


syn match squiffyValue "\d\+" contained
syn match squiffyCommandTail ".\+$" contained
syn match squiffyEq "=" contained nextgroup=squiffyValue skipwhite
syn match squiffyVariable "\h\w*" contained nextgroup=squiffyEq,squiffyValue skipwhite
syn keyword squiffyNot not contained nextgroup=squiffyVariable

syn match squiffyCommand "^@clear$" containedin=ALL
syn match squiffyCommand "^@set" containedin=ALL nextgroup=squiffyVariable,squiffyNot skipwhite
syn match squiffyCommand "^@unset" containedin=ALL nextgroup=squiffyVariable skipwhite
syn match squiffyCommand "^@inc" containedin=ALL nextgroup=squiffyVariable skipwhite
syn match squiffyCommand "^@dec" containedin=ALL nextgroup=squiffyVariable skipwhite
syn match squiffyCommand "^@start" containedin=ALL nextgroup=squiffyCommandTail skipwhite
syn match squiffyCommand "^@title" containedin=ALL nextgroup=squiffyCommandTail skipwhite
syn match squiffyCommand "^@import" containedin=ALL nextgroup=squiffyCommandTail skipwhite

syn match squiffyCommand "^@replace" containedin=ALL nextgroup=squiffyCommandTail

" [[male]](start, gender=male)
" {gender}
" {if gender=male:You are a man.}{else:You are a woman.}
" {section2}
" {if seen open:open, and there are empty bottles inside}{else:closed}.
" +++Continue...
" {label:1=a pint of milk}
" @replace 1=a loaf of bread
" {rotate:one:two:three}
" {rotate size:small:medium:large}
" {sequence:Ready:Steady:Go}
" {sequence:Click me:Click me again:[[And once more]](next)}



hi def link squiffySectionHeading htmlH1
hi def link squiffyPassageHeading htmlH2
hi def link squiffyLink htmlLink
hi def link squiffyCommand Function
hi def link squiffyVariable Special
hi def link squiffyValue Number
hi def link squiffyCommandTail String
hi def link squiffyNot Operator

let b:current_syntax = "squiffy"
