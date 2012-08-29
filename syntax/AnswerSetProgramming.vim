" PATTERN MATCHING

syn match bad_fact '[\s]\?[A-Z]\+[0-9a-zA-Z]*\.'

syn match atom '[a-z0-9]\+[0-9a-zA-Z]*' containedin=rule_body nextgroup=atom_brackets
syn region atom_brackets start='(' end=')' transparent contains=predicate_term,predicate_variable

syn region rule_body contains=atom start=':-' end='\.' transparent

syn match predicate_term contained containedin=atom_brackets '[a-z0-9]\+[0-9a-zA-Z]*'
syn match predicate_variable contained containedin=atom_brackets '[A-Z]\+[0-9a-zA-Z]*'

syn match const '#const.*$'
syn match hide '#hide.*$'
syn match comment '%.*$'


syn match lower_bound_choice '\d{'
syn match upper_bound_choice '}\d'

syn match bad_fact '^[A-Z]\+[0-9a-zA-Z]*\s'



" HIGHLIGHTING
hi def link const                 PreProc
hi def link hide                  PreProc
hi def link comment               Comment
hi def link predicate_term        Character
hi def link predicate_variable    Identifier
hi def link atom                  Statement
hi def link fact                  Type
hi def link bad_fact              Error
hi def link lower_bound_choice    Number
hi def link upper_bound_choice    Number
