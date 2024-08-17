;; extends

(this) @variable.builtin.object
((identifier) @variable.builtin.object
              (#eq? @variable.builtin.object "self"))

[
    (null)
    (undefined)
] @constant.builtin.none

[
    "const"
    "var"
    "let"
] @keyword.type

"class" @keyword.class

(_
    property: (property_identifier) @function.method.call.builtin
    (#any-of? @function.method.call.builtin 
       "split"
       "getMonth"
       "getUTCMonth"
       "getDate"
       "getFullYear"
       "getTime"
       "setDate"
       "collapse"
       "find"
       "append"
       "appendTo"
       "prepend"
       "appendTo"
       "remove"
       "stop"
       "replace"
       "after"
       "before"
       "insertAfter"
       "insertBefore"
       "remove"
       "detach"
       "indexOf"
    ))

(_
    property: (property_identifier) @function.method.call.bind
    (#any-of? @function.method.call.bind 
        "click"
        "on"
        "keypress"
        "hover"
        "submit"
        "dblclick"
        "keydown"
        "keyup"
        "change"
        "focusin"
        "focusout"
    ))

((identifier) @variable.builtin.node
    (#any-of? @variable.builtin.node 
        "module"
        "exports"
        "global"
        "process"
        "__dirname"
        "__filename"
    ))

((identifier) @variable.builtin.global
    (#any-of? @variable.builtin.global
        "ArrayBuffer"
        "Array"
        "BigInt"
        "BigInt64Array"
        "BigUint64Array"
        "Float32Array"
        "Float64Array"
        "Int16Array"
        "Int32Array"
        "Int8Array"
        "Uint16Array"
        "Uint32Array"
        "Uint8Array"
        "Uint8ClampedArray"
        "Boolean"
        "Buffer"
        "Collator"
        "DataView"
        "Date"
        "DateTimeFormat"
        "Function"
        "Intl"
        "Iterator"
        "JSON"
        "Map"
        "Set"
        "WeakMap"
        "WeakRef"
        "WeakSet"
        "Math"
        "Number"
        "NumberFormat"
        "Object"
        "ParallelArray"
        "Promise"
        "Proxy"
        "Reflect"
        "RegExp"
        "String"
        "Symbol"
        "Uint8ClampedArray"
        "WebAssembly"
        "console"
        "document"
        "fetch"
        "window"
    ))

((identifier) @variable.builtin.exception
    (#any-of? @variable.builtin.exception 
        "Error"
        "EvalError"
        "InternalError"
        "RangeError"
        "ReferenceError"
        "StopIteration"
        "SyntaxError"
        "TypeError"
        "URIError"
        "DOMException"
    ))

; Query `$`
(call_expression
    function: (identifier) @function.call.jquery
    (#eq? @function.call.jquery "$"))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.ajax
            (#any-of? @function.method.call.jquery.ajax
                "ajaxComplete"
                "ajaxError"
                "ajaxSend"
                "ajaxStart"
                "ajaxStop"
                "ajaxSuccess"
                "param"
                "serialize"
                "serializeArray"
                "ajax"
                "ajaxPrefilter"
                "ajaxSetup"
                "ajaxSettings"
                "ajaxTransport"
                "get"
                "getJSON"
                "getScript"
                "load"
                "post"
            )))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.attributes
            (#any-of? @function.method.call.jquery.attributes
                "addClass"
                "css"
                "attr"
                "hasClass"
                "prop"
                "removeAttr"
                "removeClass"
                "removeProp"
                "toggleClass"
                "val"
                )))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.core
            (#any-of? @function.method.call.jquery.core
                "holdReady" "noConflict" "sub" "when"
            )))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.css
            (#any-of? @function.method.call.jquery.css "css" "cssHooks")))

(call_expression
    function: 
    (member_expression
        property: (property_identifier) @function.method.call.jquery.data
        (#any-of? @function.method.call.jquery.data 
            "clearQueue"
            "data"
            "dequeue"
            "hasData"
            "queue"
            "removeData"
        )))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.deferred
            (#any-of? @function.method.call.jquery.deferred 
                "Deferred"
                "always"
                "done"
                "fail"
                "isRejected"
                "isResolved"
                "pipe"
                "promise"
                "reject"
                "rejectWith"
                "resolved"
                "resolveWith"
                "then"
            )))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.dimensions
            (#any-of? @function.method.call.jquery.dimensions 
                "height"
                "innerHeight"
                "innerWidth"
                "outerHeight"
                "outerWidth"
                "width"
            )))

(call_expression
    function: 
    (member_expression
        property: (property_identifier) @function.method.call.jquery.effects
        (#any-of? @function.method.call.jquery.effects 
            "hide"
            "show"
            "toggle"
            "animate"
            "delay"
            "fadeIn"
            "fadeOut"
            "fadeTo"
            "fadeToggle"
            "slideDown"
            "slideToggle"
            "slideUp"
        )))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.events
            (#any-of? @function.method.call.jquery.events 
                "error"
                "scroll"
                "ready"
                "unload"
                "bind"
                "delegate"
                "die"
                "live"
                "one"
                "proxy"
                "trigger"
                "triggerHandler"
                "unbind"
                "undelegate"
                "Event"
                "currentTarget"
                "isDefaultPrevented"
                "isImmediatePropagationStopped"
                "isPropagationStopped"
                "namespace"
                "pageX"
                "pageY"
                "preventDefault"
                "relatedTarget"
                "result"
                "stopImmediatePropagation"
                "stopPropagation"
                "target"
                "timeStamp"
                "which"
                "blur"
                "select"
                "hover"
                "mousedown"
                "mouseleave"
                "mousemove"
                "mouseout"
                "mouseover"
                "mouseup"
            )))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.misc
            (#any-of? @function.method.call.jquery.misc "index" "size" "toArray")))


(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.offset
            (#any-of? @function.method.call.jquery.offset 
                "offset"
                "offsetParent"
                "position"
                "scrollTop"
                "scrollLeft"
            )))

(_
    property: (property_identifier) @function.method.call.jquery.properties
    (#any-of? @function.method.call.jquery.properties 
        "browser"
        "context"
        "fx.interval"
        "fx.off"
        "length"
        "selector"
        "support"
    ))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.traversing
            (#any-of? @function.method.call.jquery.traversing 
                "eq"
                "filter"
                "first"
                "has"
                "is"
                "last"
                "map"
                "not"
                "slice"
                "slice"
                "add"
                "andSelf"
                "contents"
                "end"
                "children"
                "closest"
                "next"
                "nextAll"
                "nextUntil"
                "parent"
                "parents"
                "parentsUntil"
                "prev"
                "prevAll"
                "prevUntil"
                "siblings"
            )))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.utilities
            (#any-of? @function.method.call.jquery.utilities 
                "each"
                "extend"
                "globalEval"
                "grep"
                "inArray"
                "isArray"
                "isEmptyObject"
                "isFunction"
                "isPlainObject"
                "isWindow"
                "isXMLDoc"
                "makeArray"
                "merge"
                "noop"
                "now"
                "parseJSON"
                "parseXML"
                "trim"
                "type"
                "unique"
            )))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.jquery.manipulation
            (#any-of? @function.method.call.jquery.manipulation 
                "clone"
                "unwrap"
                "wrap"
                "wrapAll"
                "wrapInner"
                "html"
                "text"
                "detach"
                "empty"
                "replaceAll"
                "replaceWith"
            )))


; Console
(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.console
            (#any-of? @function.method.call.console 
                "assert"
                "clear"
                "count"
                "countReset"
                "debug"
                "dir"
                "dirxml"
                "group"
                "groupCollapsed"
                "groupEnd"
                "info"
                "log"
                "table"
                "time"
                "timeEnd"
                "timeLog"
                "trace"
            )))

(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.console.error
            (#eq? @function.method.call.console.error "error")))
(call_expression
    function: 
        (member_expression
            property: (property_identifier) @function.method.call.console.warn
            (#eq? @function.method.call.console.warn "warn")))
