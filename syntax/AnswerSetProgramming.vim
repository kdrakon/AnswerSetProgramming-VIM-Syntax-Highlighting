" PATTERN MATCHING
syn match const '#const.*$'
syn match hide '#hide.*$'

syn match fact '[\w]\?[a-z0-9]\+[0-9a-zA-Z]*\.'

syn region rule_head contained containedin=rule start='^' end=':-' transparent
syn region rule_body contained containedin=rule start=':-' end='\.' transparent
syn region rule contains=rule_head,rule_body start='^[a-z0-9]\+[\w]*:-[\w]*' end='\.' transparent

syn match atom '[\w]\?[a-z0-9]\+[0-9a-zA-Z]*' nextgroup=atom_brackets contained containedin=rule_head,rule_body

syn region atom_brackets start='(' end=')' transparent contains=predicate_term,predicate_variable

syn match predicate_term contained containedin=atom_brackets '[a-z0-9]\+[0-9a-zA-Z]*'
syn match predicate_variable contained containedin=atom_brackets '[A-Z]\+[0-9a-zA-Z]*'


" HIGHLIGHTING
hi def link const                 Define
hi def link hide                  PreProc
hi def link predicate_term        Identifier
hi def link predicate_variable    Constant
hi def link atom                  Underlined
hi def link fact                  Type
