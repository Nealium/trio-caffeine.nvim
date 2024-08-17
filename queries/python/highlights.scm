;; extends

; `None` keyword 
(none) @constant.builtin.none

;   object.attribute.call_function()
;   |---------------|
(call
    function:
        (attribute
            object: (attribute) @callfrom (#set! "priority" 101)
            (#lua-match? @callfrom "^[^self|^cls]")))
; I was also thinking maybe not highlighting @type's 
;   (#lua-match? @callfrom "^[^self|cls|A-Z]")))
; but, I'm over it.

;   object.call_function()
;   |-----|
(call
    function:
        (attribute
            object: (identifier) @callfrom (#set! "priority" 101)
            (#lua-match? @callfrom "[^self|^cls]")))

; class names
(class_definition
    name: (identifier) @type.definition.name)

; class method names
(class_definition
    body:
        (block
            (function_definition
                name: (identifier) @type.definition.method)))

((identifier) @variable.builtin.object
              (#any-of? @variable.builtin.object "self" "cls"))

; Reinforce parameters to override the above self/cls in class methods
(class_definition
    body:
        (block
            (function_definition
                parameters:
                    (parameters
                        (identifier) @type.definition.method.parameters))))

; Module docstring
(module . (expression_statement (string) @string.documentation))

; Class docstring
(class_definition
    body: (block . (expression_statement (string) @string.documentation)))

; Function/method docstring
(function_definition
    body: (block . (expression_statement (string) @string.documentation)))

; Attribute docstring
((expression_statement (assignment)) . (expression_statement (string) @string.documentation))
