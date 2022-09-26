(module
    (type (;0;) (func (param i32 i32) (result i32)))
    (import "wasi_unstable" "args_sizes_get" (func (;0;) (type 0)))
    (func (;1;)
        i32.const 2276
        i32.const 2280
        call 0
        return)
    (memory (;0;) 256)
    (export "memory" (memory 0))
    (export "_start" (func 1))
    )