" PATTERN MATCHING
syn match const '#const.*$'
syn match hide '#hide.*$'

syn match predicate_term contained '[a-z0-9]\+[0-9a-zA-Z]*'
syn match predicate_variable contained '[A-Z]\+[0-9a-zA-Z]*'

syn region atom_brackets start="(" end=")" transparent contains=predicate_term,predicate_variable

syn match atom '[\w]\?[a-z0-9]\+[0-9a-zA-Z]*' nextgroup=atom_brackets

syn match fact '[\w]\?[a-z0-9]\+[0-9a-zA-Z]*\.'

syn match operators '(:-)'

" HIGHLIGHTING
hi def link const                 Define
hi def link hide                  PreProc
hi def link predicate_term        Identifier
hi def link predicate_variable    Constant
hi def link atom                  Underlined
hi def link fact                  Type
hi def link operators             Operator
