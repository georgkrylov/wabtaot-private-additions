(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i64 i32) (result i64)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;9;) (func (result i32)))
  (type (;10;) (func))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32)))
  (type (;13;) (func (param i64 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32)))
  (type (;18;) (func (param i64 i32 i32) (result i32)))
  (type (;19;) (func (param f64) (result i64)))
  (type (;20;) (func (param f64 i32) (result f64)))
  (type (;21;) (func (param i32 i64 i64 i32)))
  (type (;22;) (func (param i64 i64) (result f64)))
  (import "wasi_unstable" "args_sizes_get" (func (;0;) (type 4)))
  (import "wasi_unstable" "args_get" (func (;1;) (type 4)))
  (import "wasi_unstable" "proc_exit" (func (;2;) (type 5)))
  (import "wasi_unstable" "fd_close" (func (;3;) (type 6)))
  (import "wasi_unstable" "fd_write" (func (;4;) (type 7)))
  (import "wasi_unstable" "fd_seek" (func (;5;) (type 8)))
  (import "env" "emscripten_notify_memory_growth" (func (;6;) (type 5)))
  (func (;7;) (type 9) (result i32)
    i32.const 3920)
  (func (;8;) (type 10))
  (func (;9;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    local.set 2
    i32.const 48
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 42
    local.set 5
    i64.const 120
    local.set 47
    i32.const 8
    local.set 6
    i64.const 14400
    local.set 48
    i32.const 120
    local.set 7
    i32.const 0
    local.set 8
    local.get 4
    local.get 8
    i32.store offset=44
    local.get 4
    local.get 0
    i32.store offset=40
    local.get 4
    local.get 1
    i32.store offset=36
    local.get 4
    local.get 7
    i32.store offset=32
    local.get 48
    local.get 6
    call 13
    local.set 9
    local.get 4
    local.get 9
    i32.store offset=28
    local.get 47
    local.get 6
    call 13
    local.set 10
    local.get 4
    local.get 10
    i32.store offset=24
    local.get 47
    local.get 6
    call 13
    local.set 11
    local.get 4
    local.get 11
    i32.store offset=20
    local.get 47
    local.get 6
    call 13
    local.set 12
    local.get 4
    local.get 12
    i32.store offset=16
    local.get 47
    local.get 6
    call 13
    local.set 13
    local.get 4
    local.get 13
    i32.store offset=12
    local.get 4
    i32.load offset=32
    local.set 14
    local.get 4
    i32.load offset=24
    local.set 15
    local.get 4
    i32.load offset=20
    local.set 16
    local.get 4
    i32.load offset=16
    local.set 17
    local.get 4
    i32.load offset=12
    local.set 18
    local.get 4
    i32.load offset=28
    local.set 19
    local.get 14
    local.get 15
    local.get 16
    local.get 17
    local.get 18
    local.get 19
    call 10
    local.get 4
    i32.load offset=32
    local.set 20
    local.get 4
    i32.load offset=24
    local.set 21
    local.get 4
    i32.load offset=20
    local.set 22
    local.get 4
    i32.load offset=16
    local.set 23
    local.get 4
    i32.load offset=12
    local.set 24
    local.get 4
    i32.load offset=28
    local.set 25
    local.get 20
    local.get 21
    local.get 22
    local.get 23
    local.get 24
    local.get 25
    call 11
    local.get 4
    i32.load offset=40
    local.set 26
    local.get 26
    local.set 27
    local.get 5
    local.set 28
    local.get 27
    local.get 28
    i32.gt_s
    local.set 29
    i32.const 1
    local.set 30
    local.get 29
    local.get 30
    i32.and
    local.set 31
    block  ;; label = @1
      local.get 31
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=36
      local.set 32
      local.get 32
      i32.load
      local.set 33
      i32.const 1024
      local.set 34
      local.get 33
      local.get 34
      call 43
      local.set 35
      local.get 35
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=32
      local.set 36
      local.get 4
      i32.load offset=24
      local.set 37
      local.get 4
      i32.load offset=20
      local.set 38
      local.get 36
      local.get 37
      local.get 38
      call 12
    end
    i32.const 0
    local.set 39
    local.get 4
    i32.load offset=28
    local.set 40
    local.get 40
    call 56
    local.get 4
    i32.load offset=24
    local.set 41
    local.get 41
    call 56
    local.get 4
    i32.load offset=20
    local.set 42
    local.get 42
    call 56
    local.get 4
    i32.load offset=16
    local.set 43
    local.get 43
    call 56
    local.get 4
    i32.load offset=12
    local.set 44
    local.get 44
    call 56
    i32.const 48
    local.set 45
    local.get 4
    local.get 45
    i32.add
    local.set 46
    local.get 46
    global.set 0
    local.get 39
    return)
  (func (;10;) (type 11) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 6
    i32.const 32
    local.set 7
    local.get 6
    local.get 7
    i32.sub
    local.set 8
    i32.const 0
    local.set 9
    local.get 8
    local.get 0
    i32.store offset=28
    local.get 8
    local.get 1
    i32.store offset=24
    local.get 8
    local.get 2
    i32.store offset=20
    local.get 8
    local.get 3
    i32.store offset=16
    local.get 8
    local.get 4
    i32.store offset=12
    local.get 8
    local.get 5
    i32.store offset=8
    local.get 8
    local.get 9
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 8
        i32.load offset=4
        local.set 10
        local.get 8
        i32.load offset=28
        local.set 11
        local.get 10
        local.set 12
        local.get 11
        local.set 13
        local.get 12
        local.get 13
        i32.lt_s
        local.set 14
        i32.const 1
        local.set 15
        local.get 14
        local.get 15
        i32.and
        local.set 16
        local.get 16
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 17
        local.get 8
        i32.load offset=4
        local.set 18
        local.get 8
        i32.load offset=28
        local.set 19
        local.get 18
        local.get 19
        i32.rem_s
        local.set 20
        local.get 20
        f64.convert_i32_s
        local.set 88
        local.get 8
        i32.load offset=28
        local.set 21
        local.get 21
        f64.convert_i32_s
        local.set 89
        local.get 88
        local.get 89
        f64.div
        local.set 90
        local.get 8
        i32.load offset=24
        local.set 22
        local.get 8
        i32.load offset=4
        local.set 23
        i32.const 3
        local.set 24
        local.get 23
        local.get 24
        i32.shl
        local.set 25
        local.get 22
        local.get 25
        i32.add
        local.set 26
        local.get 26
        local.get 90
        f64.store
        local.get 8
        i32.load offset=4
        local.set 27
        i32.const 1
        local.set 28
        local.get 27
        local.get 28
        i32.add
        local.set 29
        local.get 8
        i32.load offset=28
        local.set 30
        local.get 29
        local.get 30
        i32.rem_s
        local.set 31
        local.get 31
        f64.convert_i32_s
        local.set 91
        local.get 8
        i32.load offset=28
        local.set 32
        local.get 32
        f64.convert_i32_s
        local.set 92
        local.get 91
        local.get 92
        f64.div
        local.set 93
        local.get 8
        i32.load offset=20
        local.set 33
        local.get 8
        i32.load offset=4
        local.set 34
        i32.const 3
        local.set 35
        local.get 34
        local.get 35
        i32.shl
        local.set 36
        local.get 33
        local.get 36
        i32.add
        local.set 37
        local.get 37
        local.get 93
        f64.store
        local.get 8
        i32.load offset=4
        local.set 38
        i32.const 3
        local.set 39
        local.get 38
        local.get 39
        i32.add
        local.set 40
        local.get 8
        i32.load offset=28
        local.set 41
        local.get 40
        local.get 41
        i32.rem_s
        local.set 42
        local.get 42
        f64.convert_i32_s
        local.set 94
        local.get 8
        i32.load offset=28
        local.set 43
        local.get 43
        f64.convert_i32_s
        local.set 95
        local.get 94
        local.get 95
        f64.div
        local.set 96
        local.get 8
        i32.load offset=16
        local.set 44
        local.get 8
        i32.load offset=4
        local.set 45
        i32.const 3
        local.set 46
        local.get 45
        local.get 46
        i32.shl
        local.set 47
        local.get 44
        local.get 47
        i32.add
        local.set 48
        local.get 48
        local.get 96
        f64.store
        local.get 8
        i32.load offset=4
        local.set 49
        i32.const 4
        local.set 50
        local.get 49
        local.get 50
        i32.add
        local.set 51
        local.get 8
        i32.load offset=28
        local.set 52
        local.get 51
        local.get 52
        i32.rem_s
        local.set 53
        local.get 53
        f64.convert_i32_s
        local.set 97
        local.get 8
        i32.load offset=28
        local.set 54
        local.get 54
        f64.convert_i32_s
        local.set 98
        local.get 97
        local.get 98
        f64.div
        local.set 99
        local.get 8
        i32.load offset=12
        local.set 55
        local.get 8
        i32.load offset=4
        local.set 56
        i32.const 3
        local.set 57
        local.get 56
        local.get 57
        i32.shl
        local.set 58
        local.get 55
        local.get 58
        i32.add
        local.set 59
        local.get 59
        local.get 99
        f64.store
        local.get 8
        local.get 17
        i32.store
        block  ;; label = @3
          loop  ;; label = @4
            local.get 8
            i32.load
            local.set 60
            local.get 8
            i32.load offset=28
            local.set 61
            local.get 60
            local.set 62
            local.get 61
            local.set 63
            local.get 62
            local.get 63
            i32.lt_s
            local.set 64
            i32.const 1
            local.set 65
            local.get 64
            local.get 65
            i32.and
            local.set 66
            local.get 66
            i32.eqz
            br_if 1 (;@3;)
            local.get 8
            i32.load offset=4
            local.set 67
            local.get 8
            i32.load
            local.set 68
            local.get 67
            local.get 68
            i32.mul
            local.set 69
            local.get 8
            i32.load offset=28
            local.set 70
            local.get 69
            local.get 70
            i32.rem_s
            local.set 71
            local.get 71
            f64.convert_i32_s
            local.set 100
            local.get 8
            i32.load offset=28
            local.set 72
            local.get 72
            f64.convert_i32_s
            local.set 101
            local.get 100
            local.get 101
            f64.div
            local.set 102
            local.get 8
            i32.load offset=8
            local.set 73
            local.get 8
            i32.load offset=4
            local.set 74
            i32.const 960
            local.set 75
            local.get 74
            local.get 75
            i32.mul
            local.set 76
            local.get 73
            local.get 76
            i32.add
            local.set 77
            local.get 8
            i32.load
            local.set 78
            i32.const 3
            local.set 79
            local.get 78
            local.get 79
            i32.shl
            local.set 80
            local.get 77
            local.get 80
            i32.add
            local.set 81
            local.get 81
            local.get 102
            f64.store
            local.get 8
            i32.load
            local.set 82
            i32.const 1
            local.set 83
            local.get 82
            local.get 83
            i32.add
            local.set 84
            local.get 8
            local.get 84
            i32.store
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        local.get 8
        i32.load offset=4
        local.set 85
        i32.const 1
        local.set 86
        local.get 85
        local.get 86
        i32.add
        local.set 87
        local.get 8
        local.get 87
        i32.store offset=4
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func (;11;) (type 11) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 0
    local.set 6
    i32.const 32
    local.set 7
    local.get 6
    local.get 7
    i32.sub
    local.set 8
    i32.const 0
    local.set 9
    local.get 8
    local.get 0
    i32.store offset=28
    local.get 8
    local.get 1
    i32.store offset=24
    local.get 8
    local.get 2
    i32.store offset=20
    local.get 8
    local.get 3
    i32.store offset=16
    local.get 8
    local.get 4
    i32.store offset=12
    local.get 8
    local.get 5
    i32.store offset=8
    local.get 8
    local.get 9
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 8
        i32.load offset=4
        local.set 10
        local.get 8
        i32.load offset=28
        local.set 11
        local.get 10
        local.set 12
        local.get 11
        local.set 13
        local.get 12
        local.get 13
        i32.lt_s
        local.set 14
        i32.const 1
        local.set 15
        local.get 14
        local.get 15
        i32.and
        local.set 16
        local.get 16
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 17
        local.get 8
        local.get 17
        i32.store
        block  ;; label = @3
          loop  ;; label = @4
            local.get 8
            i32.load
            local.set 18
            local.get 8
            i32.load offset=28
            local.set 19
            local.get 18
            local.set 20
            local.get 19
            local.set 21
            local.get 20
            local.get 21
            i32.lt_s
            local.set 22
            i32.const 1
            local.set 23
            local.get 22
            local.get 23
            i32.and
            local.set 24
            local.get 24
            i32.eqz
            br_if 1 (;@3;)
            local.get 8
            i32.load offset=24
            local.set 25
            local.get 8
            i32.load offset=4
            local.set 26
            i32.const 3
            local.set 27
            local.get 26
            local.get 27
            i32.shl
            local.set 28
            local.get 25
            local.get 28
            i32.add
            local.set 29
            local.get 29
            f64.load
            local.set 101
            local.get 8
            i32.load offset=8
            local.set 30
            local.get 8
            i32.load offset=4
            local.set 31
            i32.const 960
            local.set 32
            local.get 31
            local.get 32
            i32.mul
            local.set 33
            local.get 30
            local.get 33
            i32.add
            local.set 34
            local.get 8
            i32.load
            local.set 35
            i32.const 3
            local.set 36
            local.get 35
            local.get 36
            i32.shl
            local.set 37
            local.get 34
            local.get 37
            i32.add
            local.set 38
            local.get 38
            f64.load
            local.set 102
            local.get 8
            i32.load offset=16
            local.set 39
            local.get 8
            i32.load
            local.set 40
            i32.const 3
            local.set 41
            local.get 40
            local.get 41
            i32.shl
            local.set 42
            local.get 39
            local.get 42
            i32.add
            local.set 43
            local.get 43
            f64.load
            local.set 103
            local.get 102
            local.get 103
            f64.mul
            local.set 104
            local.get 101
            local.get 104
            f64.add
            local.set 105
            local.get 8
            i32.load offset=24
            local.set 44
            local.get 8
            i32.load offset=4
            local.set 45
            i32.const 3
            local.set 46
            local.get 45
            local.get 46
            i32.shl
            local.set 47
            local.get 44
            local.get 47
            i32.add
            local.set 48
            local.get 48
            local.get 105
            f64.store
            local.get 8
            i32.load
            local.set 49
            i32.const 1
            local.set 50
            local.get 49
            local.get 50
            i32.add
            local.set 51
            local.get 8
            local.get 51
            i32.store
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        local.get 8
        i32.load offset=4
        local.set 52
        i32.const 1
        local.set 53
        local.get 52
        local.get 53
        i32.add
        local.set 54
        local.get 8
        local.get 54
        i32.store offset=4
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 55
    local.get 8
    local.get 55
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 8
        i32.load offset=4
        local.set 56
        local.get 8
        i32.load offset=28
        local.set 57
        local.get 56
        local.set 58
        local.get 57
        local.set 59
        local.get 58
        local.get 59
        i32.lt_s
        local.set 60
        i32.const 1
        local.set 61
        local.get 60
        local.get 61
        i32.and
        local.set 62
        local.get 62
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 63
        local.get 8
        local.get 63
        i32.store
        block  ;; label = @3
          loop  ;; label = @4
            local.get 8
            i32.load
            local.set 64
            local.get 8
            i32.load offset=28
            local.set 65
            local.get 64
            local.set 66
            local.get 65
            local.set 67
            local.get 66
            local.get 67
            i32.lt_s
            local.set 68
            i32.const 1
            local.set 69
            local.get 68
            local.get 69
            i32.and
            local.set 70
            local.get 70
            i32.eqz
            br_if 1 (;@3;)
            local.get 8
            i32.load offset=20
            local.set 71
            local.get 8
            i32.load offset=4
            local.set 72
            i32.const 3
            local.set 73
            local.get 72
            local.get 73
            i32.shl
            local.set 74
            local.get 71
            local.get 74
            i32.add
            local.set 75
            local.get 75
            f64.load
            local.set 106
            local.get 8
            i32.load offset=8
            local.set 76
            local.get 8
            i32.load
            local.set 77
            i32.const 960
            local.set 78
            local.get 77
            local.get 78
            i32.mul
            local.set 79
            local.get 76
            local.get 79
            i32.add
            local.set 80
            local.get 8
            i32.load offset=4
            local.set 81
            i32.const 3
            local.set 82
            local.get 81
            local.get 82
            i32.shl
            local.set 83
            local.get 80
            local.get 83
            i32.add
            local.set 84
            local.get 84
            f64.load
            local.set 107
            local.get 8
            i32.load offset=12
            local.set 85
            local.get 8
            i32.load
            local.set 86
            i32.const 3
            local.set 87
            local.get 86
            local.get 87
            i32.shl
            local.set 88
            local.get 85
            local.get 88
            i32.add
            local.set 89
            local.get 89
            f64.load
            local.set 108
            local.get 107
            local.get 108
            f64.mul
            local.set 109
            local.get 106
            local.get 109
            f64.add
            local.set 110
            local.get 8
            i32.load offset=20
            local.set 90
            local.get 8
            i32.load offset=4
            local.set 91
            i32.const 3
            local.set 92
            local.get 91
            local.get 92
            i32.shl
            local.set 93
            local.get 90
            local.get 93
            i32.add
            local.set 94
            local.get 94
            local.get 110
            f64.store
            local.get 8
            i32.load
            local.set 95
            i32.const 1
            local.set 96
            local.get 95
            local.get 96
            i32.add
            local.set 97
            local.get 8
            local.get 97
            i32.store
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        local.get 8
        i32.load offset=4
        local.set 98
        i32.const 1
        local.set 99
        local.get 98
        local.get 99
        i32.add
        local.set 100
        local.get 8
        local.get 100
        i32.store offset=4
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func (;12;) (type 12) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64)
    global.get 0
    local.set 3
    i32.const 112
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    local.get 5
    local.get 0
    i32.store offset=108
    local.get 5
    local.get 1
    i32.store offset=104
    local.get 5
    local.get 2
    i32.store offset=100
    i32.const 0
    local.set 6
    local.get 6
    i32.load offset=1720
    local.set 7
    i32.const 1025
    local.set 8
    i32.const 0
    local.set 9
    local.get 7
    local.get 8
    local.get 9
    call 31
    drop
    i32.const 0
    local.set 10
    local.get 10
    i32.load offset=1720
    local.set 11
    i32.const 1063
    local.set 12
    local.get 5
    local.get 12
    i32.store offset=80
    i32.const 1048
    local.set 13
    i32.const 80
    local.set 14
    local.get 5
    local.get 14
    i32.add
    local.set 15
    local.get 11
    local.get 13
    local.get 15
    call 31
    drop
    i32.const 0
    local.set 16
    local.get 5
    local.get 16
    i32.store offset=96
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=96
        local.set 17
        local.get 5
        i32.load offset=108
        local.set 18
        local.get 17
        local.set 19
        local.get 18
        local.set 20
        local.get 19
        local.get 20
        i32.lt_s
        local.set 21
        i32.const 1
        local.set 22
        local.get 21
        local.get 22
        i32.and
        local.set 23
        local.get 23
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=96
        local.set 24
        i32.const 20
        local.set 25
        local.get 24
        local.get 25
        i32.rem_s
        local.set 26
        block  ;; label = @3
          local.get 26
          br_if 0 (;@3;)
          i32.const 0
          local.set 27
          local.get 27
          i32.load offset=1720
          local.set 28
          i32.const 1066
          local.set 29
          i32.const 0
          local.set 30
          local.get 28
          local.get 29
          local.get 30
          call 31
          drop
        end
        i32.const 0
        local.set 31
        local.get 31
        i32.load offset=1720
        local.set 32
        local.get 5
        i32.load offset=104
        local.set 33
        local.get 5
        i32.load offset=96
        local.set 34
        i32.const 3
        local.set 35
        local.get 34
        local.get 35
        i32.shl
        local.set 36
        local.get 33
        local.get 36
        i32.add
        local.set 37
        local.get 37
        f64.load
        local.set 94
        local.get 5
        local.get 94
        f64.store
        i32.const 1068
        local.set 38
        local.get 32
        local.get 38
        local.get 5
        call 31
        drop
        local.get 5
        i32.load offset=96
        local.set 39
        i32.const 1
        local.set 40
        local.get 39
        local.get 40
        i32.add
        local.set 41
        local.get 5
        local.get 41
        i32.store offset=96
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 42
    local.get 42
    i32.load offset=1720
    local.set 43
    i32.const 1063
    local.set 44
    local.get 5
    local.get 44
    i32.store offset=48
    i32.const 1076
    local.set 45
    i32.const 48
    local.set 46
    local.get 5
    local.get 46
    i32.add
    local.set 47
    local.get 43
    local.get 45
    local.get 47
    call 31
    drop
    i32.const 0
    local.set 48
    local.get 48
    i32.load offset=1720
    local.set 49
    i32.const 1093
    local.set 50
    local.get 5
    local.get 50
    i32.store offset=64
    i32.const 1048
    local.set 51
    i32.const 64
    local.set 52
    local.get 5
    local.get 52
    i32.add
    local.set 53
    local.get 49
    local.get 51
    local.get 53
    call 31
    drop
    i32.const 0
    local.set 54
    local.get 5
    local.get 54
    i32.store offset=96
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=96
        local.set 55
        local.get 5
        i32.load offset=108
        local.set 56
        local.get 55
        local.set 57
        local.get 56
        local.set 58
        local.get 57
        local.get 58
        i32.lt_s
        local.set 59
        i32.const 1
        local.set 60
        local.get 59
        local.get 60
        i32.and
        local.set 61
        local.get 61
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=96
        local.set 62
        i32.const 20
        local.set 63
        local.get 62
        local.get 63
        i32.rem_s
        local.set 64
        block  ;; label = @3
          local.get 64
          br_if 0 (;@3;)
          i32.const 0
          local.set 65
          local.get 65
          i32.load offset=1720
          local.set 66
          i32.const 1066
          local.set 67
          i32.const 0
          local.set 68
          local.get 66
          local.get 67
          local.get 68
          call 31
          drop
        end
        i32.const 0
        local.set 69
        local.get 69
        i32.load offset=1720
        local.set 70
        local.get 5
        i32.load offset=100
        local.set 71
        local.get 5
        i32.load offset=96
        local.set 72
        i32.const 3
        local.set 73
        local.get 72
        local.get 73
        i32.shl
        local.set 74
        local.get 71
        local.get 74
        i32.add
        local.set 75
        local.get 75
        f64.load
        local.set 95
        local.get 5
        local.get 95
        f64.store offset=16
        i32.const 1068
        local.set 76
        i32.const 16
        local.set 77
        local.get 5
        local.get 77
        i32.add
        local.set 78
        local.get 70
        local.get 76
        local.get 78
        call 31
        drop
        local.get 5
        i32.load offset=96
        local.set 79
        i32.const 1
        local.set 80
        local.get 79
        local.get 80
        i32.add
        local.set 81
        local.get 5
        local.get 81
        i32.store offset=96
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 82
    local.get 82
    i32.load offset=1720
    local.set 83
    i32.const 1093
    local.set 84
    local.get 5
    local.get 84
    i32.store offset=32
    i32.const 1076
    local.set 85
    i32.const 32
    local.set 86
    local.get 5
    local.get 86
    i32.add
    local.set 87
    local.get 83
    local.get 85
    local.get 87
    call 31
    drop
    i32.const 0
    local.set 88
    local.get 88
    i32.load offset=1720
    local.set 89
    i32.const 1096
    local.set 90
    i32.const 0
    local.set 91
    local.get 89
    local.get 90
    local.get 91
    call 31
    drop
    i32.const 112
    local.set 92
    local.get 5
    local.get 92
    i32.add
    local.set 93
    local.get 93
    global.set 0
    return)
  (func (;13;) (type 13) (param i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i64.store offset=24
    local.get 4
    local.get 1
    i32.store offset=20
    local.get 4
    i64.load offset=24
    local.set 14
    local.get 14
    i32.wrap_i64
    local.set 5
    local.get 4
    local.get 5
    i32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 6
    local.get 4
    i32.load offset=16
    local.set 7
    local.get 7
    local.get 6
    i32.mul
    local.set 8
    local.get 4
    local.get 8
    i32.store offset=16
    local.get 4
    i32.load offset=16
    local.set 9
    local.get 9
    call 14
    local.set 10
    local.get 4
    local.get 10
    i32.store offset=12
    local.get 4
    i32.load offset=12
    local.set 11
    i32.const 32
    local.set 12
    local.get 4
    local.get 12
    i32.add
    local.set 13
    local.get 13
    global.set 0
    local.get 11
    return)
  (func (;14;) (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    i32.const 0
    local.set 4
    i32.const 8
    local.set 5
    local.get 3
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.set 7
    i32.const 4096
    local.set 8
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    local.get 4
    i32.store offset=8
    i32.const 0
    local.set 9
    local.get 9
    i32.load offset=2272
    local.set 10
    i32.const 0
    local.set 11
    local.get 10
    local.get 11
    i32.add
    local.set 12
    i32.const 0
    local.set 13
    local.get 13
    local.get 12
    i32.store offset=2272
    local.get 3
    i32.load offset=12
    local.set 14
    i32.const 0
    local.set 15
    local.get 15
    i32.load offset=2272
    local.set 16
    local.get 14
    local.get 16
    i32.add
    local.set 17
    local.get 3
    local.get 17
    i32.store offset=4
    local.get 3
    i32.load offset=4
    local.set 18
    local.get 7
    local.get 8
    local.get 18
    call 58
    local.set 19
    local.get 3
    local.get 19
    i32.store
    local.get 3
    i32.load offset=8
    local.set 20
    local.get 20
    local.set 21
    local.get 4
    local.set 22
    local.get 21
    local.get 22
    i32.ne
    local.set 23
    i32.const 1
    local.set 24
    local.get 23
    local.get 24
    i32.and
    local.set 25
    block  ;; label = @1
      block  ;; label = @2
        local.get 25
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load
        local.set 26
        local.get 26
        i32.eqz
        br_if 1 (;@1;)
      end
      i32.const 0
      local.set 27
      local.get 27
      i32.load offset=1720
      local.set 28
      i32.const 1119
      local.set 29
      i32.const 0
      local.set 30
      local.get 28
      local.get 29
      local.get 30
      call 31
      drop
      i32.const 1
      local.set 31
      local.get 31
      call 63
      unreachable
    end
    local.get 3
    i32.load offset=8
    local.set 32
    i32.const 16
    local.set 33
    local.get 3
    local.get 33
    i32.add
    local.set 34
    local.get 34
    global.set 0
    local.get 32
    return)
  (func (;15;) (type 10)
    (local i32 i32 i32 i32)
    global.get 0
    local.tee 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              br_if 0 (;@5;)
              i32.const 2
              i32.eqz
              br_if 1 (;@4;)
              call 8
              local.get 1
              global.set 0
              return
            end
            i32.const 2276
            i32.const 2280
            call 0
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=2276
                local.tee 2
                br_if 0 (;@6;)
                br 1 (;@5;)
              end
              local.get 0
              local.get 2
              i32.const 2
              i32.shl
              local.tee 2
              i32.const 19
              i32.add
              i32.const -16
              i32.and
              i32.sub
              local.tee 0
              local.tee 3
              global.set 0
              local.get 3
              i32.const 0
              i32.load offset=2280
              i32.const 15
              i32.add
              i32.const -16
              i32.and
              i32.sub
              local.tee 3
              global.set 0
              local.get 0
              local.get 2
              i32.add
              i32.const 0
              i32.store
              local.get 0
              local.get 3
              call 1
              br_if 3 (;@2;)
            end
            block  ;; label = @5
              i32.const 2
              i32.eqz
              br_if 0 (;@5;)
              call 8
            end
            i32.const 0
            i32.load offset=2276
            local.get 0
            call 9
            local.tee 0
            br_if 3 (;@1;)
          end
          local.get 1
          global.set 0
          return
        end
        i32.const 71
        call 2
        unreachable
      end
      i32.const 71
      call 2
      unreachable
    end
    local.get 0
    call 2
    unreachable)
  (func (;16;) (type 6) (param i32) (result i32)
    i32.const 1)
  (func (;17;) (type 5) (param i32))
  (func (;18;) (type 14) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 2
    i32.store offset=204
    i32.const 0
    local.set 2
    local.get 5
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call 62
    drop
    local.get 5
    local.get 5
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        local.get 1
        local.get 5
        i32.const 200
        i32.add
        local.get 5
        i32.const 80
        i32.add
        local.get 5
        i32.const 160
        i32.add
        local.get 3
        local.get 4
        call 19
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 1
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=76
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        call 16
        local.set 2
      end
      local.get 0
      i32.load
      local.set 6
      block  ;; label = @2
        local.get 0
        i32.load8_s offset=74
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 6
        i32.const -33
        i32.and
        i32.store
      end
      local.get 6
      i32.const 32
      i32.and
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=48
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 5
          i32.const 200
          i32.add
          local.get 5
          i32.const 80
          i32.add
          local.get 5
          i32.const 160
          i32.add
          local.get 3
          local.get 4
          call 19
          local.set 1
          br 1 (;@2;)
        end
        local.get 0
        i32.const 80
        i32.store offset=48
        local.get 0
        local.get 5
        i32.const 80
        i32.add
        i32.store offset=16
        local.get 0
        local.get 5
        i32.store offset=28
        local.get 0
        local.get 5
        i32.store offset=20
        local.get 0
        i32.load offset=44
        local.set 7
        local.get 0
        local.get 5
        i32.store offset=44
        local.get 0
        local.get 1
        local.get 5
        i32.const 200
        i32.add
        local.get 5
        i32.const 80
        i32.add
        local.get 5
        i32.const 160
        i32.add
        local.get 3
        local.get 4
        call 19
        local.set 1
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 0)
        drop
        local.get 0
        i32.const 0
        i32.store offset=48
        local.get 0
        local.get 7
        i32.store offset=44
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.load offset=20
        local.set 3
        local.get 0
        i32.const 0
        i32.store offset=20
        local.get 1
        i32.const -1
        local.get 3
        select
        local.set 1
      end
      local.get 0
      local.get 0
      i32.load
      local.tee 3
      local.get 6
      i32.or
      i32.store
      i32.const -1
      local.get 1
      local.get 3
      i32.const 32
      i32.and
      select
      local.set 1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call 17
    end
    local.get 5
    i32.const 208
    i32.add
    global.set 0
    local.get 1)
  (func (;19;) (type 15) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 7
    global.set 0
    local.get 7
    local.get 1
    i32.store offset=76
    local.get 7
    i32.const 55
    i32.add
    local.set 8
    local.get 7
    i32.const 56
    i32.add
    local.set 9
    i32.const 0
    local.set 10
    i32.const 0
    local.set 11
    i32.const 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 11
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 1
              i32.const 2147483647
              local.get 11
              i32.sub
              i32.le_s
              br_if 0 (;@5;)
              call 50
              i32.const 61
              i32.store
              i32.const -1
              local.set 11
              br 1 (;@4;)
            end
            local.get 1
            local.get 11
            i32.add
            local.set 11
          end
          local.get 7
          i32.load offset=76
          local.tee 12
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 12
                                      i32.load8_u
                                      local.tee 13
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      block  ;; label = @18
                                        loop  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 13
                                                i32.const 255
                                                i32.and
                                                local.tee 13
                                                br_if 0 (;@22;)
                                                local.get 1
                                                local.set 13
                                                br 1 (;@21;)
                                              end
                                              local.get 13
                                              i32.const 37
                                              i32.ne
                                              br_if 1 (;@20;)
                                              local.get 1
                                              local.set 13
                                              loop  ;; label = @22
                                                local.get 1
                                                i32.load8_u offset=1
                                                i32.const 37
                                                i32.ne
                                                br_if 1 (;@21;)
                                                local.get 7
                                                local.get 1
                                                i32.const 2
                                                i32.add
                                                local.tee 14
                                                i32.store offset=76
                                                local.get 13
                                                i32.const 1
                                                i32.add
                                                local.set 13
                                                local.get 1
                                                i32.load8_u offset=2
                                                local.set 15
                                                local.get 14
                                                local.set 1
                                                local.get 15
                                                i32.const 37
                                                i32.eq
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 13
                                            local.get 12
                                            i32.sub
                                            local.set 1
                                            block  ;; label = @21
                                              local.get 0
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 0
                                              local.get 12
                                              local.get 1
                                              call 20
                                            end
                                            local.get 1
                                            br_if 17 (;@3;)
                                            local.get 7
                                            i32.load offset=76
                                            i32.load8_s offset=1
                                            call 45
                                            local.set 14
                                            i32.const -1
                                            local.set 16
                                            i32.const 1
                                            local.set 13
                                            local.get 7
                                            i32.load offset=76
                                            local.set 1
                                            block  ;; label = @21
                                              local.get 14
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 1
                                              i32.load8_u offset=2
                                              i32.const 36
                                              i32.ne
                                              br_if 0 (;@21;)
                                              local.get 1
                                              i32.load8_s offset=1
                                              i32.const -48
                                              i32.add
                                              local.set 16
                                              i32.const 1
                                              local.set 10
                                              i32.const 3
                                              local.set 13
                                            end
                                            local.get 7
                                            local.get 1
                                            local.get 13
                                            i32.add
                                            local.tee 1
                                            i32.store offset=76
                                            i32.const 0
                                            local.set 13
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 1
                                                i32.load8_s
                                                local.tee 17
                                                i32.const -32
                                                i32.add
                                                local.tee 15
                                                i32.const 31
                                                i32.le_u
                                                br_if 0 (;@22;)
                                                local.get 1
                                                local.set 14
                                                br 1 (;@21;)
                                              end
                                              local.get 1
                                              local.set 14
                                              i32.const 1
                                              local.get 15
                                              i32.shl
                                              local.tee 15
                                              i32.const 75913
                                              i32.and
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 7
                                                local.get 1
                                                i32.const 1
                                                i32.add
                                                local.tee 14
                                                i32.store offset=76
                                                local.get 15
                                                local.get 13
                                                i32.or
                                                local.set 13
                                                local.get 1
                                                i32.load8_s offset=1
                                                local.tee 17
                                                i32.const -32
                                                i32.add
                                                local.tee 15
                                                i32.const 31
                                                i32.gt_u
                                                br_if 1 (;@21;)
                                                local.get 14
                                                local.set 1
                                                i32.const 1
                                                local.get 15
                                                i32.shl
                                                local.tee 15
                                                i32.const 75913
                                                i32.and
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                local.get 17
                                                i32.const 42
                                                i32.ne
                                                br_if 0 (;@22;)
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 14
                                                    i32.load8_s offset=1
                                                    call 45
                                                    i32.eqz
                                                    br_if 0 (;@24;)
                                                    local.get 7
                                                    i32.load offset=76
                                                    local.tee 14
                                                    i32.load8_u offset=2
                                                    i32.const 36
                                                    i32.ne
                                                    br_if 0 (;@24;)
                                                    local.get 14
                                                    i32.load8_s offset=1
                                                    i32.const 2
                                                    i32.shl
                                                    local.get 4
                                                    i32.add
                                                    i32.const -192
                                                    i32.add
                                                    i32.const 10
                                                    i32.store
                                                    local.get 14
                                                    i32.const 3
                                                    i32.add
                                                    local.set 1
                                                    local.get 14
                                                    i32.load8_s offset=1
                                                    i32.const 3
                                                    i32.shl
                                                    local.get 3
                                                    i32.add
                                                    i32.const -384
                                                    i32.add
                                                    i32.load
                                                    local.set 18
                                                    i32.const 1
                                                    local.set 10
                                                    br 1 (;@23;)
                                                  end
                                                  local.get 10
                                                  br_if 21 (;@2;)
                                                  i32.const 0
                                                  local.set 10
                                                  i32.const 0
                                                  local.set 18
                                                  block  ;; label = @24
                                                    local.get 0
                                                    i32.eqz
                                                    br_if 0 (;@24;)
                                                    local.get 2
                                                    local.get 2
                                                    i32.load
                                                    local.tee 1
                                                    i32.const 4
                                                    i32.add
                                                    i32.store
                                                    local.get 1
                                                    i32.load
                                                    local.set 18
                                                  end
                                                  local.get 7
                                                  i32.load offset=76
                                                  i32.const 1
                                                  i32.add
                                                  local.set 1
                                                end
                                                local.get 7
                                                local.get 1
                                                i32.store offset=76
                                                local.get 18
                                                i32.const -1
                                                i32.gt_s
                                                br_if 1 (;@21;)
                                                i32.const 0
                                                local.get 18
                                                i32.sub
                                                local.set 18
                                                local.get 13
                                                i32.const 8192
                                                i32.or
                                                local.set 13
                                                br 1 (;@21;)
                                              end
                                              local.get 7
                                              i32.const 76
                                              i32.add
                                              call 21
                                              local.tee 18
                                              i32.const 0
                                              i32.lt_s
                                              br_if 19 (;@2;)
                                              local.get 7
                                              i32.load offset=76
                                              local.set 1
                                            end
                                            i32.const -1
                                            local.set 19
                                            block  ;; label = @21
                                              local.get 1
                                              i32.load8_u
                                              i32.const 46
                                              i32.ne
                                              br_if 0 (;@21;)
                                              block  ;; label = @22
                                                local.get 1
                                                i32.load8_u offset=1
                                                i32.const 42
                                                i32.ne
                                                br_if 0 (;@22;)
                                                block  ;; label = @23
                                                  local.get 1
                                                  i32.load8_s offset=2
                                                  call 45
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 7
                                                  i32.load offset=76
                                                  local.tee 1
                                                  i32.load8_u offset=3
                                                  i32.const 36
                                                  i32.ne
                                                  br_if 0 (;@23;)
                                                  local.get 1
                                                  i32.load8_s offset=2
                                                  i32.const 2
                                                  i32.shl
                                                  local.get 4
                                                  i32.add
                                                  i32.const -192
                                                  i32.add
                                                  i32.const 10
                                                  i32.store
                                                  local.get 1
                                                  i32.load8_s offset=2
                                                  i32.const 3
                                                  i32.shl
                                                  local.get 3
                                                  i32.add
                                                  i32.const -384
                                                  i32.add
                                                  i32.load
                                                  local.set 19
                                                  local.get 7
                                                  local.get 1
                                                  i32.const 4
                                                  i32.add
                                                  local.tee 1
                                                  i32.store offset=76
                                                  br 2 (;@21;)
                                                end
                                                local.get 10
                                                br_if 20 (;@2;)
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 0
                                                    br_if 0 (;@24;)
                                                    i32.const 0
                                                    local.set 19
                                                    br 1 (;@23;)
                                                  end
                                                  local.get 2
                                                  local.get 2
                                                  i32.load
                                                  local.tee 1
                                                  i32.const 4
                                                  i32.add
                                                  i32.store
                                                  local.get 1
                                                  i32.load
                                                  local.set 19
                                                end
                                                local.get 7
                                                local.get 7
                                                i32.load offset=76
                                                i32.const 2
                                                i32.add
                                                local.tee 1
                                                i32.store offset=76
                                                br 1 (;@21;)
                                              end
                                              local.get 7
                                              local.get 1
                                              i32.const 1
                                              i32.add
                                              i32.store offset=76
                                              local.get 7
                                              i32.const 76
                                              i32.add
                                              call 21
                                              local.set 19
                                              local.get 7
                                              i32.load offset=76
                                              local.set 1
                                            end
                                            i32.const 0
                                            local.set 14
                                            loop  ;; label = @21
                                              local.get 14
                                              local.set 15
                                              i32.const -1
                                              local.set 20
                                              local.get 1
                                              i32.load8_s
                                              i32.const -65
                                              i32.add
                                              i32.const 57
                                              i32.gt_u
                                              br_if 20 (;@1;)
                                              local.get 7
                                              local.get 1
                                              i32.const 1
                                              i32.add
                                              local.tee 17
                                              i32.store offset=76
                                              local.get 1
                                              i32.load8_s
                                              local.set 14
                                              local.get 17
                                              local.set 1
                                              local.get 14
                                              local.get 15
                                              i32.const 58
                                              i32.mul
                                              i32.add
                                              i32.const 1135
                                              i32.add
                                              i32.load8_u
                                              local.tee 14
                                              i32.const -1
                                              i32.add
                                              i32.const 8
                                              i32.lt_u
                                              br_if 0 (;@21;)
                                            end
                                            local.get 14
                                            i32.eqz
                                            br_if 19 (;@1;)
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 14
                                                    i32.const 19
                                                    i32.ne
                                                    br_if 0 (;@24;)
                                                    i32.const -1
                                                    local.set 20
                                                    local.get 16
                                                    i32.const -1
                                                    i32.le_s
                                                    br_if 1 (;@23;)
                                                    br 23 (;@1;)
                                                  end
                                                  local.get 16
                                                  i32.const 0
                                                  i32.lt_s
                                                  br_if 1 (;@22;)
                                                  local.get 4
                                                  local.get 16
                                                  i32.const 2
                                                  i32.shl
                                                  i32.add
                                                  local.get 14
                                                  i32.store
                                                  local.get 7
                                                  local.get 3
                                                  local.get 16
                                                  i32.const 3
                                                  i32.shl
                                                  i32.add
                                                  i64.load
                                                  i64.store offset=64
                                                end
                                                i32.const 0
                                                local.set 1
                                                local.get 0
                                                i32.eqz
                                                br_if 19 (;@3;)
                                                br 1 (;@21;)
                                              end
                                              local.get 0
                                              i32.eqz
                                              br_if 17 (;@4;)
                                              local.get 7
                                              i32.const 64
                                              i32.add
                                              local.get 14
                                              local.get 2
                                              local.get 6
                                              call 22
                                              local.get 7
                                              i32.load offset=76
                                              local.set 17
                                            end
                                            local.get 13
                                            i32.const -65537
                                            i32.and
                                            local.tee 21
                                            local.get 13
                                            local.get 13
                                            i32.const 8192
                                            i32.and
                                            select
                                            local.set 13
                                            i32.const 0
                                            local.set 20
                                            i32.const 1170
                                            local.set 16
                                            local.get 9
                                            local.set 14
                                            local.get 17
                                            i32.const -1
                                            i32.add
                                            i32.load8_s
                                            local.tee 1
                                            i32.const -33
                                            i32.and
                                            local.get 1
                                            local.get 1
                                            i32.const 15
                                            i32.and
                                            i32.const 3
                                            i32.eq
                                            select
                                            local.get 1
                                            local.get 15
                                            select
                                            local.tee 1
                                            i32.const -88
                                            i32.add
                                            local.tee 17
                                            i32.const 32
                                            i32.le_u
                                            br_if 2 (;@18;)
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      local.get 1
                                                      i32.const -65
                                                      i32.add
                                                      local.tee 15
                                                      i32.const 6
                                                      i32.le_u
                                                      br_if 0 (;@25;)
                                                      local.get 1
                                                      i32.const 83
                                                      i32.ne
                                                      br_if 20 (;@5;)
                                                      local.get 19
                                                      i32.eqz
                                                      br_if 1 (;@24;)
                                                      local.get 7
                                                      i32.load offset=64
                                                      local.set 14
                                                      br 3 (;@22;)
                                                    end
                                                    local.get 15
                                                    br_table 8 (;@16;) 19 (;@5;) 1 (;@23;) 19 (;@5;) 8 (;@16;) 8 (;@16;) 8 (;@16;) 8 (;@16;)
                                                  end
                                                  i32.const 0
                                                  local.set 1
                                                  local.get 0
                                                  i32.const 32
                                                  local.get 18
                                                  i32.const 0
                                                  local.get 13
                                                  call 23
                                                  br 2 (;@21;)
                                                end
                                                local.get 7
                                                i32.const 0
                                                i32.store offset=12
                                                local.get 7
                                                local.get 7
                                                i64.load offset=64
                                                i64.store32 offset=8
                                                local.get 7
                                                local.get 7
                                                i32.const 8
                                                i32.add
                                                i32.store offset=64
                                                i32.const -1
                                                local.set 19
                                                local.get 7
                                                i32.const 8
                                                i32.add
                                                local.set 14
                                              end
                                              i32.const 0
                                              local.set 1
                                              block  ;; label = @22
                                                loop  ;; label = @23
                                                  local.get 14
                                                  i32.load
                                                  local.tee 15
                                                  i32.eqz
                                                  br_if 1 (;@22;)
                                                  block  ;; label = @24
                                                    local.get 7
                                                    i32.const 4
                                                    i32.add
                                                    local.get 15
                                                    call 46
                                                    local.tee 15
                                                    i32.const 0
                                                    i32.lt_s
                                                    local.tee 12
                                                    br_if 0 (;@24;)
                                                    local.get 15
                                                    local.get 19
                                                    local.get 1
                                                    i32.sub
                                                    i32.gt_u
                                                    br_if 0 (;@24;)
                                                    local.get 14
                                                    i32.const 4
                                                    i32.add
                                                    local.set 14
                                                    local.get 19
                                                    local.get 15
                                                    local.get 1
                                                    i32.add
                                                    local.tee 1
                                                    i32.gt_u
                                                    br_if 1 (;@23;)
                                                    br 2 (;@22;)
                                                  end
                                                end
                                                i32.const -1
                                                local.set 20
                                                local.get 12
                                                br_if 21 (;@1;)
                                              end
                                              local.get 0
                                              i32.const 32
                                              local.get 18
                                              local.get 1
                                              local.get 13
                                              call 23
                                              block  ;; label = @22
                                                local.get 1
                                                br_if 0 (;@22;)
                                                i32.const 0
                                                local.set 1
                                                br 1 (;@21;)
                                              end
                                              i32.const 0
                                              local.set 15
                                              local.get 7
                                              i32.load offset=64
                                              local.set 14
                                              loop  ;; label = @22
                                                local.get 14
                                                i32.load
                                                local.tee 12
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                local.get 7
                                                i32.const 4
                                                i32.add
                                                local.get 12
                                                call 46
                                                local.tee 12
                                                local.get 15
                                                i32.add
                                                local.tee 15
                                                local.get 1
                                                i32.gt_s
                                                br_if 1 (;@21;)
                                                local.get 0
                                                local.get 7
                                                i32.const 4
                                                i32.add
                                                local.get 12
                                                call 20
                                                local.get 14
                                                i32.const 4
                                                i32.add
                                                local.set 14
                                                local.get 15
                                                local.get 1
                                                i32.lt_u
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            local.get 0
                                            i32.const 32
                                            local.get 18
                                            local.get 1
                                            local.get 13
                                            i32.const 8192
                                            i32.xor
                                            call 23
                                            local.get 18
                                            local.get 1
                                            local.get 18
                                            local.get 1
                                            i32.gt_s
                                            select
                                            local.set 1
                                            br 17 (;@3;)
                                          end
                                          local.get 7
                                          local.get 1
                                          i32.const 1
                                          i32.add
                                          local.tee 14
                                          i32.store offset=76
                                          local.get 1
                                          i32.load8_u offset=1
                                          local.set 13
                                          local.get 14
                                          local.set 1
                                          br 0 (;@19;)
                                          unreachable
                                        end
                                        unreachable
                                      end
                                      local.get 17
                                      br_table 7 (;@10;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 1 (;@16;) 12 (;@5;) 3 (;@14;) 4 (;@13;) 1 (;@16;) 1 (;@16;) 1 (;@16;) 12 (;@5;) 4 (;@13;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 12 (;@5;) 8 (;@9;) 5 (;@12;) 6 (;@11;) 12 (;@5;) 12 (;@5;) 2 (;@15;) 12 (;@5;) 9 (;@8;) 12 (;@5;) 12 (;@5;) 7 (;@10;) 7 (;@10;)
                                    end
                                    local.get 11
                                    local.set 20
                                    local.get 0
                                    br_if 15 (;@1;)
                                    local.get 10
                                    i32.eqz
                                    br_if 12 (;@4;)
                                    i32.const 1
                                    local.set 1
                                    block  ;; label = @17
                                      loop  ;; label = @18
                                        local.get 4
                                        local.get 1
                                        i32.const 2
                                        i32.shl
                                        i32.add
                                        i32.load
                                        local.tee 13
                                        i32.eqz
                                        br_if 1 (;@17;)
                                        local.get 3
                                        local.get 1
                                        i32.const 3
                                        i32.shl
                                        i32.add
                                        local.get 13
                                        local.get 2
                                        local.get 6
                                        call 22
                                        i32.const 1
                                        local.set 20
                                        local.get 1
                                        i32.const 1
                                        i32.add
                                        local.tee 1
                                        i32.const 10
                                        i32.ne
                                        br_if 0 (;@18;)
                                        br 17 (;@1;)
                                        unreachable
                                      end
                                      unreachable
                                    end
                                    i32.const 1
                                    local.set 20
                                    local.get 1
                                    i32.const 9
                                    i32.gt_u
                                    br_if 15 (;@1;)
                                    i32.const -1
                                    local.set 20
                                    local.get 4
                                    local.get 1
                                    i32.const 2
                                    i32.shl
                                    i32.add
                                    i32.load
                                    br_if 15 (;@1;)
                                    block  ;; label = @17
                                      loop  ;; label = @18
                                        local.get 1
                                        i32.const 1
                                        i32.add
                                        local.tee 1
                                        i32.const 10
                                        i32.eq
                                        br_if 1 (;@17;)
                                        local.get 4
                                        local.get 1
                                        i32.const 2
                                        i32.shl
                                        i32.add
                                        i32.load
                                        i32.eqz
                                        br_if 0 (;@18;)
                                      end
                                    end
                                    i32.const -1
                                    i32.const 1
                                    local.get 1
                                    i32.const 10
                                    i32.lt_u
                                    select
                                    local.set 20
                                    br 15 (;@1;)
                                  end
                                  local.get 0
                                  local.get 7
                                  f64.load offset=64
                                  local.get 18
                                  local.get 19
                                  local.get 13
                                  local.get 1
                                  local.get 5
                                  call_indirect (type 1)
                                  local.set 1
                                  br 12 (;@3;)
                                end
                                i32.const 0
                                local.set 20
                                local.get 7
                                i32.load offset=64
                                local.tee 1
                                i32.const 1180
                                local.get 1
                                select
                                local.tee 12
                                i32.const 0
                                local.get 19
                                call 42
                                local.tee 1
                                local.get 12
                                local.get 19
                                i32.add
                                local.get 1
                                select
                                local.set 14
                                local.get 21
                                local.set 13
                                local.get 1
                                local.get 12
                                i32.sub
                                local.get 19
                                local.get 1
                                select
                                local.set 19
                                br 9 (;@5;)
                              end
                              local.get 7
                              local.get 7
                              i64.load offset=64
                              i64.store8 offset=55
                              i32.const 1
                              local.set 19
                              local.get 8
                              local.set 12
                              local.get 9
                              local.set 14
                              local.get 21
                              local.set 13
                              br 8 (;@5;)
                            end
                            block  ;; label = @13
                              local.get 7
                              i64.load offset=64
                              local.tee 22
                              i64.const -1
                              i64.gt_s
                              br_if 0 (;@13;)
                              local.get 7
                              i64.const 0
                              local.get 22
                              i64.sub
                              local.tee 22
                              i64.store offset=64
                              i32.const 1
                              local.set 20
                              i32.const 1170
                              local.set 16
                              br 6 (;@7;)
                            end
                            block  ;; label = @13
                              local.get 13
                              i32.const 2048
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1
                              local.set 20
                              i32.const 1171
                              local.set 16
                              br 6 (;@7;)
                            end
                            i32.const 1172
                            i32.const 1170
                            local.get 13
                            i32.const 1
                            i32.and
                            local.tee 20
                            select
                            local.set 16
                            br 5 (;@7;)
                          end
                          local.get 7
                          i64.load offset=64
                          local.get 9
                          call 24
                          local.set 12
                          i32.const 0
                          local.set 20
                          i32.const 1170
                          local.set 16
                          local.get 13
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 5 (;@6;)
                          local.get 19
                          local.get 9
                          local.get 12
                          i32.sub
                          local.tee 1
                          i32.const 1
                          i32.add
                          local.get 19
                          local.get 1
                          i32.gt_s
                          select
                          local.set 19
                          br 5 (;@6;)
                        end
                        local.get 19
                        i32.const 8
                        local.get 19
                        i32.const 8
                        i32.gt_u
                        select
                        local.set 19
                        local.get 13
                        i32.const 8
                        i32.or
                        local.set 13
                        i32.const 120
                        local.set 1
                      end
                      local.get 7
                      i64.load offset=64
                      local.get 9
                      local.get 1
                      i32.const 32
                      i32.and
                      call 25
                      local.set 12
                      i32.const 0
                      local.set 20
                      i32.const 1170
                      local.set 16
                      local.get 13
                      i32.const 8
                      i32.and
                      i32.eqz
                      br_if 3 (;@6;)
                      local.get 7
                      i64.load offset=64
                      i64.eqz
                      br_if 3 (;@6;)
                      local.get 1
                      i32.const 4
                      i32.shr_u
                      i32.const 1170
                      i32.add
                      local.set 16
                      i32.const 2
                      local.set 20
                      br 3 (;@6;)
                    end
                    i32.const 0
                    local.set 1
                    local.get 15
                    i32.const 255
                    i32.and
                    local.tee 13
                    i32.const 7
                    i32.gt_u
                    br_if 5 (;@3;)
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 13
                                  br_table 0 (;@15;) 1 (;@14;) 2 (;@13;) 3 (;@12;) 4 (;@11;) 12 (;@3;) 5 (;@10;) 6 (;@9;) 0 (;@15;)
                                end
                                local.get 7
                                i32.load offset=64
                                local.get 11
                                i32.store
                                br 11 (;@3;)
                              end
                              local.get 7
                              i32.load offset=64
                              local.get 11
                              i32.store
                              br 10 (;@3;)
                            end
                            local.get 7
                            i32.load offset=64
                            local.get 11
                            i64.extend_i32_s
                            i64.store
                            br 9 (;@3;)
                          end
                          local.get 7
                          i32.load offset=64
                          local.get 11
                          i32.store16
                          br 8 (;@3;)
                        end
                        local.get 7
                        i32.load offset=64
                        local.get 11
                        i32.store8
                        br 7 (;@3;)
                      end
                      local.get 7
                      i32.load offset=64
                      local.get 11
                      i32.store
                      br 6 (;@3;)
                    end
                    local.get 7
                    i32.load offset=64
                    local.get 11
                    i64.extend_i32_s
                    i64.store
                    br 5 (;@3;)
                  end
                  i32.const 0
                  local.set 20
                  i32.const 1170
                  local.set 16
                  local.get 7
                  i64.load offset=64
                  local.set 22
                end
                local.get 22
                local.get 9
                call 26
                local.set 12
              end
              local.get 13
              i32.const -65537
              i32.and
              local.get 13
              local.get 19
              i32.const -1
              i32.gt_s
              select
              local.set 13
              local.get 7
              i64.load offset=64
              local.set 22
              block  ;; label = @6
                block  ;; label = @7
                  local.get 19
                  br_if 0 (;@7;)
                  local.get 22
                  i64.eqz
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 19
                  local.get 9
                  local.set 12
                  br 1 (;@6;)
                end
                local.get 19
                local.get 9
                local.get 12
                i32.sub
                local.get 22
                i64.eqz
                i32.add
                local.tee 1
                local.get 19
                local.get 1
                i32.gt_s
                select
                local.set 19
              end
              local.get 9
              local.set 14
            end
            local.get 0
            i32.const 32
            local.get 20
            local.get 14
            local.get 12
            i32.sub
            local.tee 15
            local.get 19
            local.get 19
            local.get 15
            i32.lt_s
            select
            local.tee 17
            i32.add
            local.tee 14
            local.get 18
            local.get 18
            local.get 14
            i32.lt_s
            select
            local.tee 1
            local.get 14
            local.get 13
            call 23
            local.get 0
            local.get 16
            local.get 20
            call 20
            local.get 0
            i32.const 48
            local.get 1
            local.get 14
            local.get 13
            i32.const 65536
            i32.xor
            call 23
            local.get 0
            i32.const 48
            local.get 17
            local.get 15
            i32.const 0
            call 23
            local.get 0
            local.get 12
            local.get 15
            call 20
            local.get 0
            i32.const 32
            local.get 1
            local.get 14
            local.get 13
            i32.const 8192
            i32.xor
            call 23
            br 1 (;@3;)
          end
        end
        i32.const 0
        local.set 20
        br 1 (;@1;)
      end
      i32.const -1
      local.set 20
    end
    local.get 7
    i32.const 80
    i32.add
    global.set 0
    local.get 20)
  (func (;20;) (type 12) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 32
      i32.and
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      local.get 0
      call 39
      drop
    end)
  (func (;21;) (type 6) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load
      i32.load8_s
      call 45
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        i32.load8_s
        local.set 3
        local.get 0
        local.get 2
        i32.const 1
        i32.add
        i32.store
        local.get 3
        local.get 1
        i32.const 10
        i32.mul
        i32.add
        i32.const -48
        i32.add
        local.set 1
        local.get 2
        i32.load8_s offset=1
        call 45
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;22;) (type 16) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.const 20
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const -9
      i32.add
      local.tee 1
      i32.const 9
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          br_table 0 (;@11;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 5 (;@6;) 6 (;@5;) 7 (;@4;) 8 (;@3;) 9 (;@2;) 0 (;@11;)
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i32.load
                        i32.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load32_s
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load32_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                local.tee 1
                i32.const 4
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load16_s
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              local.tee 1
              i32.const 4
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load16_u
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load8_s
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          local.tee 1
          i32.const 4
          i32.add
          i32.store
          local.get 0
          local.get 1
          i64.load8_u
          i64.store
          return
        end
        local.get 2
        local.get 2
        i32.load
        i32.const 7
        i32.add
        i32.const -8
        i32.and
        local.tee 1
        i32.const 8
        i32.add
        i32.store
        local.get 0
        local.get 1
        i64.load
        i64.store
        return
      end
      local.get 0
      local.get 2
      local.get 3
      call_indirect (type 2)
    end)
  (func (;23;) (type 17) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      local.get 2
      local.get 3
      i32.sub
      local.tee 4
      i32.const 256
      local.get 4
      i32.const 256
      i32.lt_u
      local.tee 6
      select
      call 62
      drop
      block  ;; label = @2
        local.get 6
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        i32.sub
        local.set 2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 20
          local.get 4
          i32.const -256
          i32.add
          local.tee 4
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 255
        i32.and
        local.set 4
      end
      local.get 0
      local.get 5
      local.get 4
      call 20
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;24;) (type 13) (param i64 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i64.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 7
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 3
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;25;) (type 18) (param i64 i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i64.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 1664
        i32.add
        i32.load8_u
        local.get 2
        i32.or
        i32.store8
        local.get 0
        i64.const 4
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;26;) (type 13) (param i64 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 4294967296
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        local.get 0
        i64.const 10
        i64.div_u
        local.tee 5
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 42949672959
        i64.gt_u
        local.set 2
        local.get 5
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 2
        local.get 2
        i32.const 10
        i32.div_u
        local.tee 3
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get 2
        i32.const 9
        i32.gt_u
        local.set 4
        local.get 3
        local.set 2
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;27;) (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    i32.const 3
    i32.const 4
    call 18)
  (func (;28;) (type 1) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64)
    global.get 0
    i32.const 560
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    i32.const 0
    i32.store offset=44
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        call 30
        local.tee 22
        i64.const -1
        i64.gt_s
        br_if 0 (;@2;)
        local.get 1
        f64.neg
        local.tee 1
        call 30
        local.set 22
        i32.const 1
        local.set 7
        i32.const 1680
        local.set 8
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 2048
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 7
        i32.const 1683
        local.set 8
        br 1 (;@1;)
      end
      i32.const 1686
      i32.const 1681
      local.get 4
      i32.const 1
      i32.and
      local.tee 7
      select
      local.set 8
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 22
        i64.const 9218868437227405312
        i64.and
        i64.const 9218868437227405312
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 32
        local.get 2
        local.get 7
        i32.const 3
        i32.add
        local.tee 9
        local.get 4
        i32.const -65537
        i32.and
        call 23
        local.get 0
        local.get 8
        local.get 7
        call 20
        local.get 0
        i32.const 1707
        i32.const 1711
        local.get 5
        i32.const 5
        i32.shr_u
        i32.const 1
        i32.and
        local.tee 10
        select
        i32.const 1699
        i32.const 1703
        local.get 10
        select
        local.get 1
        local.get 1
        f64.ne
        select
        i32.const 3
        call 20
        local.get 0
        i32.const 32
        local.get 2
        local.get 9
        local.get 4
        i32.const 8192
        i32.xor
        call 23
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        local.get 6
        i32.const 44
        i32.add
        call 44
        local.tee 1
        local.get 1
        f64.add
        local.tee 1
        f64.const 0x0p+0 (;=0;)
        f64.eq
        br_if 0 (;@2;)
        local.get 6
        local.get 6
        i32.load offset=44
        i32.const -1
        i32.add
        i32.store offset=44
      end
      local.get 6
      i32.const 16
      i32.add
      local.set 11
      block  ;; label = @2
        local.get 5
        i32.const 32
        i32.or
        local.tee 12
        i32.const 97
        i32.ne
        br_if 0 (;@2;)
        local.get 8
        i32.const 9
        i32.add
        local.get 8
        local.get 5
        i32.const 32
        i32.and
        local.tee 13
        select
        local.set 14
        block  ;; label = @3
          local.get 3
          i32.const 11
          i32.gt_u
          br_if 0 (;@3;)
          i32.const 12
          local.get 3
          i32.sub
          local.tee 10
          i32.eqz
          br_if 0 (;@3;)
          f64.const 0x1p+3 (;=8;)
          local.set 24
          loop  ;; label = @4
            local.get 24
            f64.const 0x1p+4 (;=16;)
            f64.mul
            local.set 24
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            br_if 0 (;@4;)
          end
          block  ;; label = @4
            local.get 14
            i32.load8_u
            i32.const 45
            i32.ne
            br_if 0 (;@4;)
            local.get 24
            local.get 1
            f64.neg
            local.get 24
            f64.sub
            f64.add
            f64.neg
            local.set 1
            br 1 (;@3;)
          end
          local.get 1
          local.get 24
          f64.add
          local.get 24
          f64.sub
          local.set 1
        end
        block  ;; label = @3
          local.get 6
          i32.load offset=44
          local.tee 10
          local.get 10
          i32.const 31
          i32.shr_s
          local.tee 10
          i32.add
          local.get 10
          i32.xor
          i64.extend_i32_u
          local.get 11
          call 26
          local.tee 10
          local.get 11
          i32.ne
          br_if 0 (;@3;)
          local.get 6
          i32.const 48
          i32.store8 offset=15
          local.get 6
          i32.const 15
          i32.add
          local.set 10
        end
        local.get 7
        i32.const 2
        i32.or
        local.set 15
        local.get 6
        i32.load offset=44
        local.set 16
        local.get 10
        i32.const -2
        i32.add
        local.tee 17
        local.get 5
        i32.const 15
        i32.add
        i32.store8
        local.get 10
        i32.const -1
        i32.add
        i32.const 45
        i32.const 43
        local.get 16
        i32.const 0
        i32.lt_s
        select
        i32.store8
        local.get 4
        i32.const 8
        i32.and
        local.set 18
        local.get 6
        i32.const 16
        i32.add
        local.set 16
        loop  ;; label = @3
          local.get 16
          local.set 10
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              f64.abs
              f64.const 0x1p+31 (;=2.14748e+09;)
              f64.lt
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.trunc_f64_s
              local.set 16
              br 1 (;@4;)
            end
            i32.const -2147483648
            local.set 16
          end
          local.get 10
          local.get 16
          i32.const 1664
          i32.add
          i32.load8_u
          local.get 13
          i32.or
          i32.store8
          local.get 1
          local.get 16
          f64.convert_i32_s
          f64.sub
          f64.const 0x1p+4 (;=16;)
          f64.mul
          local.set 1
          block  ;; label = @4
            local.get 10
            i32.const 1
            i32.add
            local.tee 16
            local.get 6
            i32.const 16
            i32.add
            i32.sub
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 18
              br_if 0 (;@5;)
              local.get 3
              i32.const 0
              i32.gt_s
              br_if 0 (;@5;)
              local.get 1
              f64.const 0x0p+0 (;=0;)
              f64.eq
              br_if 1 (;@4;)
            end
            local.get 10
            i32.const 46
            i32.store8 offset=1
            local.get 10
            i32.const 2
            i32.add
            local.set 16
          end
          local.get 1
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 16
            local.get 6
            i32.const 16
            i32.add
            i32.sub
            i32.const -2
            i32.add
            local.get 3
            i32.ge_s
            br_if 0 (;@4;)
            local.get 3
            local.get 11
            i32.add
            local.get 17
            i32.sub
            i32.const 2
            i32.add
            local.set 10
            br 1 (;@3;)
          end
          local.get 11
          local.get 6
          i32.const 16
          i32.add
          i32.sub
          local.get 17
          i32.sub
          local.get 16
          i32.add
          local.set 10
        end
        local.get 0
        i32.const 32
        local.get 2
        local.get 10
        local.get 15
        i32.add
        local.tee 9
        local.get 4
        call 23
        local.get 0
        local.get 14
        local.get 15
        call 20
        local.get 0
        i32.const 48
        local.get 2
        local.get 9
        local.get 4
        i32.const 65536
        i32.xor
        call 23
        local.get 0
        local.get 6
        i32.const 16
        i32.add
        local.get 16
        local.get 6
        i32.const 16
        i32.add
        i32.sub
        local.tee 16
        call 20
        local.get 0
        i32.const 48
        local.get 10
        local.get 16
        local.get 11
        local.get 17
        i32.sub
        local.tee 13
        i32.add
        i32.sub
        i32.const 0
        i32.const 0
        call 23
        local.get 0
        local.get 17
        local.get 13
        call 20
        local.get 0
        i32.const 32
        local.get 2
        local.get 9
        local.get 4
        i32.const 8192
        i32.xor
        call 23
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.lt_s
      local.set 10
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
          local.get 6
          i32.load offset=44
          local.set 18
          br 1 (;@2;)
        end
        local.get 6
        local.get 6
        i32.load offset=44
        i32.const -28
        i32.add
        local.tee 18
        i32.store offset=44
        local.get 1
        f64.const 0x1p+28 (;=2.68435e+08;)
        f64.mul
        local.set 1
      end
      i32.const 6
      local.get 3
      local.get 10
      select
      local.set 14
      local.get 6
      i32.const 48
      i32.add
      local.get 6
      i32.const 336
      i32.add
      local.get 18
      i32.const 0
      i32.lt_s
      select
      local.tee 19
      local.set 13
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            f64.const 0x1p+32 (;=4.29497e+09;)
            f64.lt
            local.get 1
            f64.const 0x0p+0 (;=0;)
            f64.ge
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.trunc_f64_u
            local.set 10
            br 1 (;@3;)
          end
          i32.const 0
          local.set 10
        end
        local.get 13
        local.get 10
        i32.store
        local.get 13
        i32.const 4
        i32.add
        local.set 13
        local.get 1
        local.get 10
        f64.convert_i32_u
        f64.sub
        f64.const 0x1.dcd65p+29 (;=1e+09;)
        f64.mul
        local.tee 1
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 18
          i32.const 1
          i32.ge_s
          br_if 0 (;@3;)
          local.get 13
          local.set 10
          local.get 19
          local.set 16
          br 1 (;@2;)
        end
        local.get 19
        local.set 16
        loop  ;; label = @3
          local.get 18
          i32.const 29
          local.get 18
          i32.const 29
          i32.lt_s
          select
          local.set 18
          block  ;; label = @4
            local.get 13
            i32.const -4
            i32.add
            local.tee 10
            local.get 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 18
            i64.extend_i32_u
            local.set 23
            i64.const 0
            local.set 22
            loop  ;; label = @5
              local.get 10
              local.get 10
              i64.load32_u
              local.get 23
              i64.shl
              local.get 22
              i64.const 4294967295
              i64.and
              i64.add
              local.tee 22
              local.get 22
              i64.const 1000000000
              i64.div_u
              local.tee 22
              i64.const 1000000000
              i64.mul
              i64.sub
              i64.store32
              local.get 10
              i32.const -4
              i32.add
              local.tee 10
              local.get 16
              i32.ge_u
              br_if 0 (;@5;)
            end
            local.get 22
            i32.wrap_i64
            local.tee 10
            i32.eqz
            br_if 0 (;@4;)
            local.get 16
            i32.const -4
            i32.add
            local.tee 16
            local.get 10
            i32.store
          end
          block  ;; label = @4
            loop  ;; label = @5
              local.get 13
              local.tee 10
              local.get 16
              i32.le_u
              br_if 1 (;@4;)
              local.get 10
              i32.const -4
              i32.add
              local.tee 13
              i32.load
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 6
          local.get 6
          i32.load offset=44
          local.get 18
          i32.sub
          local.tee 18
          i32.store offset=44
          local.get 10
          local.set 13
          local.get 18
          i32.const 0
          i32.gt_s
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 18
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 14
        i32.const 25
        i32.add
        i32.const 9
        i32.div_s
        i32.const 1
        i32.add
        local.set 20
        local.get 12
        i32.const 102
        i32.eq
        local.set 21
        loop  ;; label = @3
          i32.const 9
          i32.const 0
          local.get 18
          i32.sub
          local.get 18
          i32.const -9
          i32.lt_s
          select
          local.set 9
          block  ;; label = @4
            block  ;; label = @5
              local.get 16
              local.get 10
              i32.lt_u
              br_if 0 (;@5;)
              local.get 16
              local.get 16
              i32.const 4
              i32.add
              local.get 16
              i32.load
              select
              local.set 16
              br 1 (;@4;)
            end
            i32.const 1000000000
            local.get 9
            i32.shr_u
            local.set 17
            i32.const -1
            local.get 9
            i32.shl
            i32.const -1
            i32.xor
            local.set 15
            i32.const 0
            local.set 18
            local.get 16
            local.set 13
            loop  ;; label = @5
              local.get 13
              local.get 13
              i32.load
              local.tee 3
              local.get 9
              i32.shr_u
              local.get 18
              i32.add
              i32.store
              local.get 3
              local.get 15
              i32.and
              local.get 17
              i32.mul
              local.set 18
              local.get 13
              i32.const 4
              i32.add
              local.tee 13
              local.get 10
              i32.lt_u
              br_if 0 (;@5;)
            end
            local.get 16
            local.get 16
            i32.const 4
            i32.add
            local.get 16
            i32.load
            select
            local.set 16
            local.get 18
            i32.eqz
            br_if 0 (;@4;)
            local.get 10
            local.get 18
            i32.store
            local.get 10
            i32.const 4
            i32.add
            local.set 10
          end
          local.get 6
          local.get 6
          i32.load offset=44
          local.get 9
          i32.add
          local.tee 18
          i32.store offset=44
          local.get 19
          local.get 16
          local.get 21
          select
          local.tee 13
          local.get 20
          i32.const 2
          i32.shl
          i32.add
          local.get 10
          local.get 10
          local.get 13
          i32.sub
          i32.const 2
          i32.shr_s
          local.get 20
          i32.gt_s
          select
          local.set 10
          local.get 18
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      local.set 13
      block  ;; label = @2
        local.get 16
        local.get 10
        i32.ge_u
        br_if 0 (;@2;)
        local.get 19
        local.get 16
        i32.sub
        i32.const 2
        i32.shr_s
        i32.const 9
        i32.mul
        local.set 13
        i32.const 10
        local.set 18
        local.get 16
        i32.load
        local.tee 3
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 13
          i32.const 1
          i32.add
          local.set 13
          local.get 3
          local.get 18
          i32.const 10
          i32.mul
          local.tee 18
          i32.ge_u
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        local.get 14
        i32.const 0
        local.get 13
        local.get 12
        i32.const 102
        i32.eq
        select
        i32.sub
        local.get 14
        i32.const 0
        i32.ne
        local.get 12
        i32.const 103
        i32.eq
        i32.and
        i32.sub
        local.tee 18
        local.get 10
        local.get 19
        i32.sub
        i32.const 2
        i32.shr_s
        i32.const 9
        i32.mul
        i32.const -9
        i32.add
        i32.ge_s
        br_if 0 (;@2;)
        local.get 18
        i32.const 9216
        i32.add
        local.tee 3
        i32.const 9
        i32.div_s
        local.tee 17
        i32.const 2
        i32.shl
        local.get 19
        i32.add
        i32.const -4092
        i32.add
        local.set 9
        i32.const 10
        local.set 18
        block  ;; label = @3
          local.get 3
          local.get 17
          i32.const 9
          i32.mul
          i32.sub
          i32.const 1
          i32.add
          local.tee 3
          i32.const 8
          i32.gt_s
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 18
            i32.const 10
            i32.mul
            local.set 18
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            i32.const 9
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 9
        i32.load
        local.tee 17
        local.get 17
        local.get 18
        i32.div_u
        local.tee 15
        local.get 18
        i32.mul
        i32.sub
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            local.get 9
            i32.const 4
            i32.add
            local.tee 20
            local.get 10
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
          end
          f64.const 0x1p-1 (;=0.5;)
          f64.const 0x1p+0 (;=1;)
          f64.const 0x1.8p+0 (;=1.5;)
          local.get 3
          local.get 18
          i32.const 1
          i32.shr_u
          local.tee 21
          i32.eq
          select
          f64.const 0x1.8p+0 (;=1.5;)
          local.get 20
          local.get 10
          i32.eq
          select
          local.get 3
          local.get 21
          i32.lt_u
          select
          local.set 24
          f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
          f64.const 0x1p+53 (;=9.0072e+15;)
          local.get 15
          i32.const 1
          i32.and
          select
          local.set 1
          block  ;; label = @4
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            i32.load8_u
            i32.const 45
            i32.ne
            br_if 0 (;@4;)
            local.get 24
            f64.neg
            local.set 24
            local.get 1
            f64.neg
            local.set 1
          end
          local.get 9
          local.get 17
          local.get 3
          i32.sub
          local.tee 3
          i32.store
          local.get 1
          local.get 24
          f64.add
          local.get 1
          f64.eq
          br_if 0 (;@3;)
          local.get 9
          local.get 3
          local.get 18
          i32.add
          local.tee 13
          i32.store
          block  ;; label = @4
            local.get 13
            i32.const 1000000000
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 9
              i32.const 0
              i32.store
              block  ;; label = @6
                local.get 9
                i32.const -4
                i32.add
                local.tee 9
                local.get 16
                i32.ge_u
                br_if 0 (;@6;)
                local.get 16
                i32.const -4
                i32.add
                local.tee 16
                i32.const 0
                i32.store
              end
              local.get 9
              local.get 9
              i32.load
              i32.const 1
              i32.add
              local.tee 13
              i32.store
              local.get 13
              i32.const 999999999
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 19
          local.get 16
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 13
          i32.const 10
          local.set 18
          local.get 16
          i32.load
          local.tee 3
          i32.const 10
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 13
            i32.const 1
            i32.add
            local.set 13
            local.get 3
            local.get 18
            i32.const 10
            i32.mul
            local.tee 18
            i32.ge_u
            br_if 0 (;@4;)
          end
        end
        local.get 9
        i32.const 4
        i32.add
        local.tee 18
        local.get 10
        local.get 10
        local.get 18
        i32.gt_u
        select
        local.set 10
      end
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 10
            local.tee 18
            local.get 16
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 21
            br 2 (;@2;)
          end
          local.get 18
          i32.const -4
          i32.add
          local.tee 10
          i32.load
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        local.set 21
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 12
          i32.const 103
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          i32.const 8
          i32.and
          local.set 15
          br 1 (;@2;)
        end
        local.get 13
        i32.const -1
        i32.xor
        i32.const -1
        local.get 14
        i32.const 1
        local.get 14
        select
        local.tee 10
        local.get 13
        i32.gt_s
        local.get 13
        i32.const -5
        i32.gt_s
        i32.and
        local.tee 3
        select
        local.get 10
        i32.add
        local.set 14
        i32.const -1
        i32.const -2
        local.get 3
        select
        local.get 5
        i32.add
        local.set 5
        local.get 4
        i32.const 8
        i32.and
        local.tee 15
        br_if 0 (;@2;)
        i32.const 9
        local.set 10
        block  ;; label = @3
          local.get 21
          i32.eqz
          br_if 0 (;@3;)
          i32.const 9
          local.set 10
          local.get 18
          i32.const -4
          i32.add
          i32.load
          local.tee 9
          i32.eqz
          br_if 0 (;@3;)
          i32.const 10
          local.set 3
          i32.const 0
          local.set 10
          local.get 9
          i32.const 10
          i32.rem_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 10
            i32.const 1
            i32.add
            local.set 10
            local.get 9
            local.get 3
            i32.const 10
            i32.mul
            local.tee 3
            i32.rem_u
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        local.get 18
        local.get 19
        i32.sub
        i32.const 2
        i32.shr_s
        i32.const 9
        i32.mul
        i32.const -9
        i32.add
        local.set 3
        block  ;; label = @3
          local.get 5
          i32.const 32
          i32.or
          i32.const 102
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          local.set 15
          local.get 14
          local.get 3
          local.get 10
          i32.sub
          local.tee 10
          i32.const 0
          local.get 10
          i32.const 0
          i32.gt_s
          select
          local.tee 10
          local.get 14
          local.get 10
          i32.lt_s
          select
          local.set 14
          br 1 (;@2;)
        end
        i32.const 0
        local.set 15
        local.get 14
        local.get 3
        local.get 13
        i32.add
        local.get 10
        i32.sub
        local.tee 10
        i32.const 0
        local.get 10
        i32.const 0
        i32.gt_s
        select
        local.tee 10
        local.get 14
        local.get 10
        i32.lt_s
        select
        local.set 14
      end
      local.get 14
      local.get 15
      i32.or
      local.tee 12
      i32.const 0
      i32.ne
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 32
          i32.or
          local.tee 17
          i32.const 102
          i32.ne
          br_if 0 (;@3;)
          local.get 13
          i32.const 0
          local.get 13
          i32.const 0
          i32.gt_s
          select
          local.set 10
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 11
          local.get 13
          local.get 13
          i32.const 31
          i32.shr_s
          local.tee 10
          i32.add
          local.get 10
          i32.xor
          i64.extend_i32_u
          local.get 11
          call 26
          local.tee 10
          i32.sub
          i32.const 1
          i32.gt_s
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            i32.const 48
            i32.store8
            local.get 11
            local.get 10
            i32.sub
            i32.const 2
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        local.get 10
        i32.const -2
        i32.add
        local.tee 20
        local.get 5
        i32.store8
        local.get 10
        i32.const -1
        i32.add
        i32.const 45
        i32.const 43
        local.get 13
        i32.const 0
        i32.lt_s
        select
        i32.store8
        local.get 11
        local.get 20
        i32.sub
        local.set 10
      end
      local.get 0
      i32.const 32
      local.get 2
      local.get 7
      local.get 14
      i32.add
      local.get 3
      i32.add
      local.get 10
      i32.add
      i32.const 1
      i32.add
      local.tee 9
      local.get 4
      call 23
      local.get 0
      local.get 8
      local.get 7
      call 20
      local.get 0
      i32.const 48
      local.get 2
      local.get 9
      local.get 4
      i32.const 65536
      i32.xor
      call 23
      block  ;; label = @2
        block  ;; label = @3
          local.get 17
          i32.const 102
          i32.ne
          br_if 0 (;@3;)
          local.get 6
          i32.const 16
          i32.add
          i32.const 8
          i32.or
          local.set 17
          local.get 6
          i32.const 16
          i32.add
          i32.const 9
          i32.or
          local.set 13
          local.get 19
          local.get 16
          local.get 16
          local.get 19
          i32.gt_u
          select
          local.tee 3
          local.set 16
          loop  ;; label = @4
            local.get 16
            i64.load32_u
            local.get 13
            call 26
            local.set 10
            block  ;; label = @5
              block  ;; label = @6
                local.get 16
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                local.get 10
                local.get 6
                i32.const 16
                i32.add
                i32.le_u
                br_if 1 (;@5;)
                loop  ;; label = @7
                  local.get 10
                  i32.const -1
                  i32.add
                  local.tee 10
                  i32.const 48
                  i32.store8
                  local.get 10
                  local.get 6
                  i32.const 16
                  i32.add
                  i32.gt_u
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                  unreachable
                end
                unreachable
              end
              local.get 10
              local.get 13
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              i32.const 48
              i32.store8 offset=24
              local.get 17
              local.set 10
            end
            local.get 0
            local.get 10
            local.get 13
            local.get 10
            i32.sub
            call 20
            local.get 16
            i32.const 4
            i32.add
            local.tee 16
            local.get 19
            i32.le_u
            br_if 0 (;@4;)
          end
          block  ;; label = @4
            local.get 12
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 1715
            i32.const 1
            call 20
          end
          block  ;; label = @4
            local.get 16
            local.get 18
            i32.ge_u
            br_if 0 (;@4;)
            local.get 14
            i32.const 1
            i32.lt_s
            br_if 0 (;@4;)
            loop  ;; label = @5
              block  ;; label = @6
                local.get 16
                i64.load32_u
                local.get 13
                call 26
                local.tee 10
                local.get 6
                i32.const 16
                i32.add
                i32.le_u
                br_if 0 (;@6;)
                loop  ;; label = @7
                  local.get 10
                  i32.const -1
                  i32.add
                  local.tee 10
                  i32.const 48
                  i32.store8
                  local.get 10
                  local.get 6
                  i32.const 16
                  i32.add
                  i32.gt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              local.get 10
              local.get 14
              i32.const 9
              local.get 14
              i32.const 9
              i32.lt_s
              select
              call 20
              local.get 14
              i32.const -9
              i32.add
              local.set 14
              local.get 16
              i32.const 4
              i32.add
              local.tee 16
              local.get 18
              i32.ge_u
              br_if 1 (;@4;)
              local.get 14
              i32.const 0
              i32.gt_s
              br_if 0 (;@5;)
            end
          end
          local.get 0
          i32.const 48
          local.get 14
          i32.const 9
          i32.add
          i32.const 9
          i32.const 0
          call 23
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 14
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 18
          local.get 16
          i32.const 4
          i32.add
          local.get 21
          select
          local.set 17
          local.get 6
          i32.const 16
          i32.add
          i32.const 8
          i32.or
          local.set 19
          local.get 6
          i32.const 16
          i32.add
          i32.const 9
          i32.or
          local.set 18
          local.get 16
          local.set 13
          loop  ;; label = @4
            block  ;; label = @5
              local.get 13
              i64.load32_u
              local.get 18
              call 26
              local.tee 10
              local.get 18
              i32.ne
              br_if 0 (;@5;)
              local.get 6
              i32.const 48
              i32.store8 offset=24
              local.get 19
              local.set 10
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 13
                local.get 16
                i32.eq
                br_if 0 (;@6;)
                local.get 10
                local.get 6
                i32.const 16
                i32.add
                i32.le_u
                br_if 1 (;@5;)
                loop  ;; label = @7
                  local.get 10
                  i32.const -1
                  i32.add
                  local.tee 10
                  i32.const 48
                  i32.store8
                  local.get 10
                  local.get 6
                  i32.const 16
                  i32.add
                  i32.gt_u
                  br_if 0 (;@7;)
                  br 2 (;@5;)
                  unreachable
                end
                unreachable
              end
              local.get 0
              local.get 10
              i32.const 1
              call 20
              local.get 10
              i32.const 1
              i32.add
              local.set 10
              block  ;; label = @6
                local.get 15
                br_if 0 (;@6;)
                local.get 14
                i32.const 1
                i32.lt_s
                br_if 1 (;@5;)
              end
              local.get 0
              i32.const 1715
              i32.const 1
              call 20
            end
            local.get 0
            local.get 10
            local.get 18
            local.get 10
            i32.sub
            local.tee 3
            local.get 14
            local.get 14
            local.get 3
            i32.gt_s
            select
            call 20
            local.get 14
            local.get 3
            i32.sub
            local.set 14
            local.get 13
            i32.const 4
            i32.add
            local.tee 13
            local.get 17
            i32.ge_u
            br_if 1 (;@3;)
            local.get 14
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
          end
        end
        local.get 0
        i32.const 48
        local.get 14
        i32.const 18
        i32.add
        i32.const 18
        i32.const 0
        call 23
        local.get 0
        local.get 20
        local.get 11
        local.get 20
        i32.sub
        call 20
      end
      local.get 0
      i32.const 32
      local.get 2
      local.get 9
      local.get 4
      i32.const 8192
      i32.xor
      call 23
    end
    local.get 6
    i32.const 560
    i32.add
    global.set 0
    local.get 2
    local.get 9
    local.get 9
    local.get 2
    i32.lt_s
    select)
  (func (;29;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    local.get 1
    i32.load
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 2
    i32.const 16
    i32.add
    i32.store
    local.get 0
    local.get 2
    i64.load
    local.get 2
    i64.load offset=8
    call 54
    f64.store)
  (func (;30;) (type 19) (param f64) (result i64)
    local.get 0
    i64.reinterpret_f64)
  (func (;31;) (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 2
    call 27
    local.set 2
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;32;) (type 6) (param i32) (result i32)
    local.get 0)
  (func (;33;) (type 6) (param i32) (result i32)
    local.get 0
    i32.load offset=60
    call 32
    call 3)
  (func (;34;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 6
    i32.const 2
    local.set 5
    local.get 3
    i32.const 16
    i32.add
    local.set 1
    loop (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=60
          local.get 1
          local.get 5
          local.get 3
          i32.const 12
          i32.add
          call 4
          call 51
          i32.eqz
          br_if 0 (;@3;)
          i32.const -1
          local.set 4
          local.get 3
          i32.const -1
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=12
        local.set 4
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            local.get 4
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.load offset=44
            local.tee 1
            i32.store offset=28
            local.get 0
            local.get 1
            i32.store offset=20
            local.get 0
            local.get 1
            local.get 0
            i32.load offset=48
            i32.add
            i32.store offset=16
            local.get 2
            local.set 4
            br 1 (;@3;)
          end
          local.get 4
          i32.const -1
          i32.gt_s
          br_if 1 (;@2;)
          i32.const 0
          local.set 4
          local.get 0
          i32.const 0
          i32.store offset=28
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 0
          local.get 0
          i32.load
          i32.const 32
          i32.or
          i32.store
          local.get 5
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.load offset=4
          i32.sub
          local.set 4
        end
        local.get 3
        i32.const 32
        i32.add
        global.set 0
        local.get 4
        return
      end
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      local.get 4
      local.get 1
      i32.load offset=4
      local.tee 7
      i32.gt_u
      local.tee 8
      select
      local.tee 1
      local.get 1
      i32.load
      local.get 4
      local.get 7
      i32.const 0
      local.get 8
      select
      i32.sub
      local.tee 7
      i32.add
      i32.store
      local.get 1
      local.get 1
      i32.load offset=4
      local.get 7
      i32.sub
      i32.store offset=4
      local.get 6
      local.get 4
      i32.sub
      local.set 6
      local.get 5
      local.get 8
      i32.sub
      local.set 5
      br 0 (;@1;)
    end)
  (func (;35;) (type 3) (param i32 i64 i32) (result i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=60
        local.get 1
        local.get 2
        i32.const 255
        i32.and
        local.get 3
        i32.const 8
        i32.add
        call 5
        call 51
        br_if 0 (;@2;)
        local.get 3
        i64.load offset=8
        local.set 1
        br 1 (;@1;)
      end
      i64.const -1
      local.set 1
      local.get 3
      i64.const -1
      i64.store offset=8
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 1)
  (func (;36;) (type 9) (result i32)
    i32.const 2292
    call 64
    i32.const 2300)
  (func (;37;) (type 10)
    i32.const 2292
    call 65)
  (func (;38;) (type 6) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load8_u offset=74
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store8 offset=74
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 8
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;39;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 2
        call 38
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.load offset=20
        local.tee 5
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=36
        call_indirect (type 0)
        return
      end
      i32.const 0
      local.set 6
      block  ;; label = @2
        local.get 2
        i32.load8_s offset=75
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 3
          i32.const -1
          i32.add
          local.tee 4
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 3
        local.get 2
        i32.load offset=36
        call_indirect (type 0)
        local.tee 4
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.sub
        local.set 1
        local.get 0
        local.get 3
        i32.add
        local.set 0
        local.get 2
        i32.load offset=20
        local.set 5
        local.get 3
        local.set 6
      end
      local.get 5
      local.get 0
      local.get 1
      call 61
      drop
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 6
      local.get 1
      i32.add
      local.set 4
    end
    local.get 4)
  (func (;40;) (type 6) (param i32) (result i32)
    i32.const 0)
  (func (;41;) (type 3) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;42;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 2
    i32.const 0
    i32.ne
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 255
            i32.and
            local.set 4
            loop  ;; label = @5
              local.get 0
              i32.load8_u
              local.get 4
              i32.eq
              br_if 2 (;@3;)
              local.get 0
              i32.const 1
              i32.add
              local.set 0
              local.get 2
              i32.const -1
              i32.add
              local.tee 2
              i32.const 0
              i32.ne
              local.set 3
              local.get 2
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.const 3
              i32.and
              br_if 0 (;@5;)
            end
          end
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        i32.load8_u
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 255
            i32.and
            i32.const 16843009
            i32.mul
            local.set 4
            local.get 2
            i32.const -4
            i32.add
            local.tee 3
            local.get 3
            i32.const -4
            i32.and
            local.tee 3
            i32.sub
            local.set 5
            local.get 3
            local.get 0
            i32.add
            i32.const 4
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 0
              i32.load
              local.get 4
              i32.xor
              local.tee 3
              i32.const -1
              i32.xor
              local.get 3
              i32.const -16843009
              i32.add
              i32.and
              i32.const -2139062144
              i32.and
              br_if 2 (;@3;)
              local.get 0
              i32.const 4
              i32.add
              local.set 0
              local.get 2
              i32.const -4
              i32.add
              local.tee 2
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
            local.get 5
            local.set 2
            local.get 6
            local.set 0
          end
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 255
        i32.and
        local.set 3
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.get 3
          i32.eq
          br_if 2 (;@1;)
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      return
    end
    local.get 0)
  (func (;43;) (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 1
    i32.load8_u
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.const 255
      i32.and
      i32.ne
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.load8_u offset=1
        local.set 2
        local.get 0
        i32.load8_u offset=1
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        local.get 2
        i32.const 255
        i32.and
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 3
    local.get 2
    i32.const 255
    i32.and
    i32.sub)
  (func (;44;) (type 20) (param f64 i32) (result f64)
    (local i32 i64)
    block  ;; label = @1
      local.get 0
      i64.reinterpret_f64
      local.tee 3
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 2
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            f64.const 0x0p+0 (;=0;)
            f64.ne
            br_if 0 (;@4;)
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          f64.const 0x1p+64 (;=1.84467e+19;)
          f64.mul
          local.get 1
          call 44
          local.set 0
          local.get 1
          i32.load
          i32.const -64
          i32.add
          local.set 2
        end
        local.get 1
        local.get 2
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 2
      i32.const -1022
      i32.add
      i32.store
      local.get 3
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set 0
    end
    local.get 0)
  (func (;45;) (type 6) (param i32) (result i32)
    local.get 0
    i32.const -48
    i32.add
    i32.const 10
    i32.lt_u)
  (func (;46;) (type 4) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    i32.const 0
    call 48)
  (func (;47;) (type 9) (result i32)
    i32.const 2020)
  (func (;48;) (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 127
        i32.le_u
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            call 49
            i32.load offset=188
            i32.load
            br_if 0 (;@4;)
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 3 (;@1;)
            call 50
            i32.const 25
            i32.store
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 1
            i32.const 2047
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8
            i32.const 2
            return
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 55296
              i32.lt_u
              br_if 0 (;@5;)
              local.get 1
              i32.const -8192
              i32.and
              i32.const 57344
              i32.ne
              br_if 1 (;@4;)
            end
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 3
            return
          end
          block  ;; label = @4
            local.get 1
            i32.const -65536
            i32.add
            i32.const 1048575
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get 0
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 4
            return
          end
          call 50
          i32.const 25
          i32.store
        end
        i32.const -1
        local.set 3
      end
      local.get 3
      return
    end
    local.get 0
    local.get 1
    i32.store8
    i32.const 1)
  (func (;49;) (type 9) (result i32)
    call 47)
  (func (;50;) (type 9) (result i32)
    i32.const 3400)
  (func (;51;) (type 6) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    call 50
    local.get 0
    i32.store
    i32.const -1)
  (func (;52;) (type 21) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 64
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.const -64
          i32.add
          i64.extend_i32_u
          i64.shr_u
          local.set 1
          i64.const 0
          local.set 4
          i64.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 64
        local.get 3
        i32.sub
        i64.extend_i32_u
        i64.shl
        local.get 1
        local.get 3
        i64.extend_i32_u
        local.tee 4
        i64.shr_u
        i64.or
        local.set 1
        local.get 2
        local.get 4
        i64.shr_u
        local.set 2
        i64.const 0
        local.set 4
      end
      local.get 4
      local.get 1
      i64.or
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func (;53;) (type 21) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 64
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i32.const -64
          i32.add
          i64.extend_i32_u
          i64.shl
          local.set 2
          i64.const 0
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 64
        local.get 3
        i32.sub
        i64.extend_i32_u
        i64.shr_u
        local.get 2
        local.get 3
        i64.extend_i32_u
        local.tee 4
        i64.shl
        i64.or
        local.set 2
        local.get 1
        local.get 4
        i64.shl
        local.set 1
      end
      local.get 2
      i64.const 0
      i64.or
      local.set 2
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func (;54;) (type 22) (param i64 i64) (result f64)
    (local i32 i32 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i64.const 9223372036854775807
        i64.and
        local.tee 4
        i64.const -4323737117252386816
        i64.add
        local.get 4
        i64.const -4899634919602388992
        i64.add
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        i64.const 60
        i64.shr_u
        local.get 1
        i64.const 4
        i64.shl
        i64.or
        local.set 4
        block  ;; label = @3
          local.get 0
          i64.const 1152921504606846975
          i64.and
          local.tee 0
          i64.const 576460752303423489
          i64.lt_u
          br_if 0 (;@3;)
          local.get 4
          i64.const 4611686018427387905
          i64.add
          local.set 5
          br 2 (;@1;)
        end
        local.get 4
        i64.const 4611686018427387904
        i64.add
        local.set 5
        local.get 0
        i64.const 576460752303423488
        i64.xor
        i64.const 0
        i64.ne
        br_if 1 (;@1;)
        local.get 5
        i64.const 1
        i64.and
        local.get 5
        i64.add
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i64.eqz
        local.get 4
        i64.const 9223090561878065152
        i64.lt_u
        local.get 4
        i64.const 9223090561878065152
        i64.eq
        select
        br_if 0 (;@2;)
        local.get 0
        i64.const 60
        i64.shr_u
        local.get 1
        i64.const 4
        i64.shl
        i64.or
        i64.const 2251799813685247
        i64.and
        i64.const 9221120237041090560
        i64.or
        local.set 5
        br 1 (;@1;)
      end
      i64.const 9218868437227405312
      local.set 5
      local.get 4
      i64.const 4899634919602388991
      i64.gt_u
      br_if 0 (;@1;)
      i64.const 0
      local.set 5
      local.get 4
      i64.const 48
      i64.shr_u
      i32.wrap_i64
      local.tee 3
      i32.const 15249
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      i64.const 281474976710655
      i64.and
      i64.const 281474976710656
      i64.or
      local.tee 4
      i32.const 15361
      local.get 3
      i32.sub
      call 52
      local.get 2
      i32.const 16
      i32.add
      local.get 0
      local.get 4
      local.get 3
      i32.const -15233
      i32.add
      call 53
      local.get 2
      i64.load
      local.tee 4
      i64.const 60
      i64.shr_u
      local.get 2
      i32.const 8
      i32.add
      i64.load
      i64.const 4
      i64.shl
      i64.or
      local.set 5
      block  ;; label = @2
        local.get 4
        i64.const 1152921504606846975
        i64.and
        local.get 2
        i64.load offset=16
        local.get 2
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.or
        i64.const 0
        i64.ne
        i64.extend_i32_u
        i64.or
        local.tee 4
        i64.const 576460752303423489
        i64.lt_u
        br_if 0 (;@2;)
        local.get 5
        i64.const 1
        i64.add
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i64.const 576460752303423488
      i64.xor
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 5
      i64.const 1
      i64.and
      local.get 5
      i64.add
      local.set 5
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 5
    local.get 1
    i64.const -9223372036854775808
    i64.and
    i64.or
    f64.reinterpret_i64)
  (func (;55;) (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 244
                            i32.gt_u
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=3404
                              local.tee 2
                              i32.const 16
                              local.get 0
                              i32.const 11
                              i32.add
                              i32.const -8
                              i32.and
                              local.get 0
                              i32.const 11
                              i32.lt_u
                              select
                              local.tee 3
                              i32.const 3
                              i32.shr_u
                              local.tee 4
                              i32.shr_u
                              local.tee 0
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const -1
                              i32.xor
                              i32.const 1
                              i32.and
                              local.get 4
                              i32.add
                              local.tee 3
                              i32.const 3
                              i32.shl
                              local.tee 5
                              i32.const 3452
                              i32.add
                              i32.load
                              local.tee 4
                              i32.const 8
                              i32.add
                              local.set 0
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 6
                                  local.get 5
                                  i32.const 3444
                                  i32.add
                                  local.tee 5
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 2
                                  i32.const -2
                                  local.get 3
                                  i32.rotl
                                  i32.and
                                  i32.store offset=3404
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                i32.load offset=3420
                                local.get 6
                                i32.gt_u
                                drop
                                local.get 6
                                local.get 5
                                i32.store offset=12
                                local.get 5
                                local.get 6
                                i32.store offset=8
                              end
                              local.get 4
                              local.get 3
                              i32.const 3
                              i32.shl
                              local.tee 6
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 6
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 3
                            i32.const 0
                            i32.load offset=3412
                            local.tee 7
                            i32.le_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 0
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  local.get 4
                                  i32.shl
                                  i32.const 2
                                  local.get 4
                                  i32.shl
                                  local.tee 0
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.or
                                  i32.and
                                  local.tee 0
                                  i32.const 0
                                  local.get 0
                                  i32.sub
                                  i32.and
                                  i32.const -1
                                  i32.add
                                  local.tee 0
                                  local.get 0
                                  i32.const 12
                                  i32.shr_u
                                  i32.const 16
                                  i32.and
                                  local.tee 0
                                  i32.shr_u
                                  local.tee 4
                                  i32.const 5
                                  i32.shr_u
                                  i32.const 8
                                  i32.and
                                  local.tee 6
                                  local.get 0
                                  i32.or
                                  local.get 4
                                  local.get 6
                                  i32.shr_u
                                  local.tee 0
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 0
                                  local.get 4
                                  i32.shr_u
                                  local.tee 0
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 2
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 0
                                  local.get 4
                                  i32.shr_u
                                  local.tee 0
                                  i32.const 1
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.tee 4
                                  i32.or
                                  local.get 0
                                  local.get 4
                                  i32.shr_u
                                  i32.add
                                  local.tee 6
                                  i32.const 3
                                  i32.shl
                                  local.tee 5
                                  i32.const 3452
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.load offset=8
                                  local.tee 0
                                  local.get 5
                                  i32.const 3444
                                  i32.add
                                  local.tee 5
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 2
                                  i32.const -2
                                  local.get 6
                                  i32.rotl
                                  i32.and
                                  local.tee 2
                                  i32.store offset=3404
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                i32.load offset=3420
                                local.get 0
                                i32.gt_u
                                drop
                                local.get 0
                                local.get 5
                                i32.store offset=12
                                local.get 5
                                local.get 0
                                i32.store offset=8
                              end
                              local.get 4
                              i32.const 8
                              i32.add
                              local.set 0
                              local.get 4
                              local.get 3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 3
                              i32.add
                              local.tee 5
                              local.get 6
                              i32.const 3
                              i32.shl
                              local.tee 8
                              local.get 3
                              i32.sub
                              local.tee 6
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 8
                              i32.add
                              local.get 6
                              i32.store
                              block  ;; label = @14
                                local.get 7
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const 3
                                i32.shr_u
                                local.tee 8
                                i32.const 3
                                i32.shl
                                i32.const 3444
                                i32.add
                                local.set 3
                                i32.const 0
                                i32.load offset=3424
                                local.set 4
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 2
                                    i32.const 1
                                    local.get 8
                                    i32.shl
                                    local.tee 8
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 2
                                    local.get 8
                                    i32.or
                                    i32.store offset=3404
                                    local.get 3
                                    local.set 8
                                    br 1 (;@15;)
                                  end
                                  local.get 3
                                  i32.load offset=8
                                  local.set 8
                                end
                                local.get 3
                                local.get 4
                                i32.store offset=8
                                local.get 8
                                local.get 4
                                i32.store offset=12
                                local.get 4
                                local.get 3
                                i32.store offset=12
                                local.get 4
                                local.get 8
                                i32.store offset=8
                              end
                              i32.const 0
                              local.get 5
                              i32.store offset=3424
                              i32.const 0
                              local.get 6
                              i32.store offset=3412
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=3408
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.const 0
                            local.get 9
                            i32.sub
                            i32.and
                            i32.const -1
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.const 12
                            i32.shr_u
                            i32.const 16
                            i32.and
                            local.tee 0
                            i32.shr_u
                            local.tee 4
                            i32.const 5
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 6
                            local.get 0
                            i32.or
                            local.get 4
                            local.get 6
                            i32.shr_u
                            local.tee 0
                            i32.const 2
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 0
                            local.get 4
                            i32.shr_u
                            local.tee 0
                            i32.const 1
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 0
                            local.get 4
                            i32.shr_u
                            local.tee 0
                            i32.const 1
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.tee 4
                            i32.or
                            local.get 0
                            local.get 4
                            i32.shr_u
                            i32.add
                            i32.const 2
                            i32.shl
                            i32.const 3708
                            i32.add
                            i32.load
                            local.tee 5
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 3
                            i32.sub
                            local.set 4
                            local.get 5
                            local.set 6
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 6
                                  i32.load offset=16
                                  local.tee 0
                                  br_if 0 (;@15;)
                                  local.get 6
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 0
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                local.get 0
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 3
                                i32.sub
                                local.tee 6
                                local.get 4
                                local.get 6
                                local.get 4
                                i32.lt_u
                                local.tee 6
                                select
                                local.set 4
                                local.get 0
                                local.get 5
                                local.get 6
                                select
                                local.set 5
                                local.get 0
                                local.set 6
                                br 0 (;@14;)
                                unreachable
                              end
                              unreachable
                            end
                            local.get 5
                            i32.load offset=24
                            local.set 10
                            block  ;; label = @13
                              local.get 5
                              i32.load offset=12
                              local.tee 8
                              local.get 5
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=3420
                                local.get 5
                                i32.load offset=8
                                local.tee 0
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 0
                                i32.load offset=12
                                local.get 5
                                i32.ne
                                drop
                              end
                              local.get 0
                              local.get 8
                              i32.store offset=12
                              local.get 8
                              local.get 0
                              i32.store offset=8
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 5
                              i32.const 20
                              i32.add
                              local.tee 6
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 5
                              i32.load offset=16
                              local.tee 0
                              i32.eqz
                              br_if 3 (;@10;)
                              local.get 5
                              i32.const 16
                              i32.add
                              local.set 6
                            end
                            loop  ;; label = @13
                              local.get 6
                              local.set 11
                              local.get 0
                              local.tee 8
                              i32.const 20
                              i32.add
                              local.tee 6
                              i32.load
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 8
                              i32.const 16
                              i32.add
                              local.set 6
                              local.get 8
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                            local.get 11
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 3
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 11
                          i32.add
                          local.tee 0
                          i32.const -8
                          i32.and
                          local.set 3
                          i32.const 0
                          i32.load offset=3408
                          local.tee 7
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 11
                          block  ;; label = @12
                            local.get 0
                            i32.const 8
                            i32.shr_u
                            local.tee 0
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 31
                            local.set 11
                            local.get 3
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 0
                            i32.const 1048320
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 8
                            i32.and
                            local.tee 4
                            i32.shl
                            local.tee 0
                            local.get 0
                            i32.const 520192
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 4
                            i32.and
                            local.tee 0
                            i32.shl
                            local.tee 6
                            local.get 6
                            i32.const 245760
                            i32.add
                            i32.const 16
                            i32.shr_u
                            i32.const 2
                            i32.and
                            local.tee 6
                            i32.shl
                            i32.const 15
                            i32.shr_u
                            local.get 0
                            local.get 4
                            i32.or
                            local.get 6
                            i32.or
                            i32.sub
                            local.tee 0
                            i32.const 1
                            i32.shl
                            local.get 3
                            local.get 0
                            i32.const 21
                            i32.add
                            i32.shr_u
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 28
                            i32.add
                            local.set 11
                          end
                          i32.const 0
                          local.get 3
                          i32.sub
                          local.set 6
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  i32.const 2
                                  i32.shl
                                  i32.const 3708
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 0
                                  i32.const 0
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                local.get 3
                                i32.const 0
                                i32.const 25
                                local.get 11
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 11
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 5
                                i32.const 0
                                local.set 0
                                i32.const 0
                                local.set 8
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 3
                                    i32.sub
                                    local.tee 2
                                    local.get 6
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 2
                                    local.set 6
                                    local.get 4
                                    local.set 8
                                    local.get 2
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 6
                                    local.get 4
                                    local.set 8
                                    local.get 4
                                    local.set 0
                                    br 3 (;@13;)
                                  end
                                  local.get 0
                                  local.get 4
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 2
                                  local.get 2
                                  local.get 4
                                  local.get 5
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.eq
                                  select
                                  local.get 0
                                  local.get 2
                                  select
                                  local.set 0
                                  local.get 5
                                  local.get 4
                                  i32.const 0
                                  i32.ne
                                  i32.shl
                                  local.set 5
                                  local.get 4
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                local.get 0
                                local.get 8
                                i32.or
                                br_if 0 (;@14;)
                                i32.const 2
                                local.get 11
                                i32.shl
                                local.tee 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.or
                                local.get 7
                                i32.and
                                local.tee 0
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 0
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.and
                                i32.const -1
                                i32.add
                                local.tee 0
                                local.get 0
                                i32.const 12
                                i32.shr_u
                                i32.const 16
                                i32.and
                                local.tee 0
                                i32.shr_u
                                local.tee 4
                                i32.const 5
                                i32.shr_u
                                i32.const 8
                                i32.and
                                local.tee 5
                                local.get 0
                                i32.or
                                local.get 4
                                local.get 5
                                i32.shr_u
                                local.tee 0
                                i32.const 2
                                i32.shr_u
                                i32.const 4
                                i32.and
                                local.tee 4
                                i32.or
                                local.get 0
                                local.get 4
                                i32.shr_u
                                local.tee 0
                                i32.const 1
                                i32.shr_u
                                i32.const 2
                                i32.and
                                local.tee 4
                                i32.or
                                local.get 0
                                local.get 4
                                i32.shr_u
                                local.tee 0
                                i32.const 1
                                i32.shr_u
                                i32.const 1
                                i32.and
                                local.tee 4
                                i32.or
                                local.get 0
                                local.get 4
                                i32.shr_u
                                i32.add
                                i32.const 2
                                i32.shl
                                i32.const 3708
                                i32.add
                                i32.load
                                local.set 0
                              end
                              local.get 0
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 3
                              i32.sub
                              local.tee 2
                              local.get 6
                              i32.lt_u
                              local.set 5
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=16
                                local.tee 4
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 20
                                i32.add
                                i32.load
                                local.set 4
                              end
                              local.get 2
                              local.get 6
                              local.get 5
                              select
                              local.set 6
                              local.get 0
                              local.get 8
                              local.get 5
                              select
                              local.set 8
                              local.get 4
                              local.set 0
                              local.get 4
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 6
                          i32.const 0
                          i32.load offset=3412
                          local.get 3
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.load offset=24
                          local.set 11
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=12
                            local.tee 5
                            local.get 8
                            i32.eq
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=3420
                              local.get 8
                              i32.load offset=8
                              local.tee 0
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 0
                              i32.load offset=12
                              local.get 8
                              i32.ne
                              drop
                            end
                            local.get 0
                            local.get 5
                            i32.store offset=12
                            local.get 5
                            local.get 0
                            i32.store offset=8
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            local.get 8
                            i32.const 20
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=16
                            local.tee 0
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 8
                            i32.const 16
                            i32.add
                            local.set 4
                          end
                          loop  ;; label = @12
                            local.get 4
                            local.set 2
                            local.get 0
                            local.tee 5
                            i32.const 20
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 0
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 16
                            i32.add
                            local.set 4
                            local.get 5
                            i32.load offset=16
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                          local.get 2
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=3412
                          local.tee 0
                          local.get 3
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=3424
                          local.set 4
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              local.get 3
                              i32.sub
                              local.tee 6
                              i32.const 16
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              local.get 6
                              i32.store offset=3412
                              i32.const 0
                              local.get 4
                              local.get 3
                              i32.add
                              local.tee 5
                              i32.store offset=3424
                              local.get 5
                              local.get 6
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 4
                              local.get 0
                              i32.add
                              local.get 6
                              i32.store
                              local.get 4
                              local.get 3
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            i32.const 0
                            i32.const 0
                            i32.store offset=3424
                            i32.const 0
                            i32.const 0
                            i32.store offset=3412
                            local.get 4
                            local.get 0
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 0
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                          end
                          local.get 4
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=3416
                          local.tee 5
                          local.get 3
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 5
                          local.get 3
                          i32.sub
                          local.tee 4
                          i32.store offset=3416
                          i32.const 0
                          i32.const 0
                          i32.load offset=3428
                          local.tee 0
                          local.get 3
                          i32.add
                          local.tee 6
                          i32.store offset=3428
                          local.get 6
                          local.get 4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 3
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 0
                          i32.const 8
                          i32.add
                          local.set 0
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=3876
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=3884
                            local.set 4
                            br 1 (;@11;)
                          end
                          i32.const 0
                          i64.const -1
                          i64.store offset=3888 align=4
                          i32.const 0
                          i64.const 17592186048512
                          i64.store offset=3880 align=4
                          i32.const 0
                          local.get 1
                          i32.const 12
                          i32.add
                          i32.const -16
                          i32.and
                          i32.const 1431655768
                          i32.xor
                          i32.store offset=3876
                          i32.const 0
                          i32.const 0
                          i32.store offset=3896
                          i32.const 0
                          i32.const 0
                          i32.store offset=3848
                          i32.const 4096
                          local.set 4
                        end
                        i32.const 0
                        local.set 0
                        local.get 4
                        local.get 3
                        i32.const 47
                        i32.add
                        local.tee 7
                        i32.add
                        local.tee 2
                        i32.const 0
                        local.get 4
                        i32.sub
                        local.tee 11
                        i32.and
                        local.tee 8
                        local.get 3
                        i32.le_u
                        br_if 9 (;@1;)
                        i32.const 0
                        local.set 0
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=3844
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=3836
                          local.tee 6
                          local.get 8
                          i32.add
                          local.tee 9
                          local.get 6
                          i32.le_u
                          br_if 10 (;@1;)
                          local.get 9
                          local.get 4
                          i32.gt_u
                          br_if 10 (;@1;)
                        end
                        i32.const 0
                        i32.load8_u offset=3848
                        i32.const 4
                        i32.and
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=3428
                              local.tee 4
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 3852
                              local.set 0
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load
                                  local.tee 6
                                  local.get 4
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 6
                                  local.get 0
                                  i32.load offset=4
                                  i32.add
                                  local.get 4
                                  i32.gt_u
                                  br_if 3 (;@12;)
                                end
                                local.get 0
                                i32.load offset=8
                                local.tee 0
                                br_if 0 (;@14;)
                              end
                            end
                            i32.const 0
                            call 60
                            local.tee 5
                            i32.const -1
                            i32.eq
                            br_if 5 (;@7;)
                            local.get 8
                            local.set 2
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=3880
                              local.tee 0
                              i32.const -1
                              i32.add
                              local.tee 4
                              local.get 5
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 5
                              i32.sub
                              local.get 4
                              local.get 5
                              i32.add
                              i32.const 0
                              local.get 0
                              i32.sub
                              i32.and
                              i32.add
                              local.set 2
                            end
                            local.get 2
                            local.get 3
                            i32.le_u
                            br_if 5 (;@7;)
                            local.get 2
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=3844
                              local.tee 0
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=3836
                              local.tee 4
                              local.get 2
                              i32.add
                              local.tee 6
                              local.get 4
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 6
                              local.get 0
                              i32.gt_u
                              br_if 6 (;@7;)
                            end
                            local.get 2
                            call 60
                            local.tee 0
                            local.get 5
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          local.get 2
                          local.get 5
                          i32.sub
                          local.get 11
                          i32.and
                          local.tee 2
                          i32.const 2147483646
                          i32.gt_u
                          br_if 4 (;@7;)
                          local.get 2
                          call 60
                          local.tee 5
                          local.get 0
                          i32.load
                          local.get 0
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 5
                          local.set 0
                        end
                        local.get 0
                        local.set 5
                        block  ;; label = @11
                          local.get 3
                          i32.const 48
                          i32.add
                          local.get 2
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 2147483646
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 7
                          local.get 2
                          i32.sub
                          i32.const 0
                          i32.load offset=3884
                          local.tee 0
                          i32.add
                          i32.const 0
                          local.get 0
                          i32.sub
                          i32.and
                          local.tee 0
                          i32.const 2147483646
                          i32.gt_u
                          br_if 6 (;@5;)
                          block  ;; label = @12
                            local.get 0
                            call 60
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 0
                            local.get 2
                            i32.add
                            local.set 2
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 2
                          i32.sub
                          call 60
                          drop
                          br 4 (;@7;)
                        end
                        local.get 5
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 8
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 5
                    br 5 (;@3;)
                  end
                  local.get 5
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=3848
                i32.const 4
                i32.or
                i32.store offset=3848
              end
              local.get 8
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 8
              call 60
              local.tee 5
              i32.const 0
              call 60
              local.tee 0
              i32.ge_u
              br_if 1 (;@4;)
              local.get 5
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              local.get 5
              i32.sub
              local.tee 2
              local.get 3
              i32.const 40
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=3836
            local.get 2
            i32.add
            local.tee 0
            i32.store offset=3836
            block  ;; label = @5
              local.get 0
              i32.const 0
              i32.load offset=3840
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 0
              i32.store offset=3840
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=3428
                    local.tee 4
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 3852
                    local.set 0
                    loop  ;; label = @9
                      local.get 5
                      local.get 0
                      i32.load
                      local.tee 6
                      local.get 0
                      i32.load offset=4
                      local.tee 8
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 0
                      i32.load offset=8
                      local.tee 0
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                      unreachable
                    end
                    unreachable
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=3420
                      local.tee 0
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 0
                      i32.ge_u
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    local.get 5
                    i32.store offset=3420
                  end
                  i32.const 0
                  local.set 0
                  i32.const 0
                  local.get 2
                  i32.store offset=3856
                  i32.const 0
                  local.get 5
                  i32.store offset=3852
                  i32.const 0
                  i32.const -1
                  i32.store offset=3436
                  i32.const 0
                  i32.const 0
                  i32.load offset=3876
                  i32.store offset=3440
                  i32.const 0
                  i32.const 0
                  i32.store offset=3864
                  loop  ;; label = @8
                    local.get 0
                    i32.const 3
                    i32.shl
                    local.tee 4
                    i32.const 3452
                    i32.add
                    local.get 4
                    i32.const 3444
                    i32.add
                    local.tee 6
                    i32.store
                    local.get 4
                    i32.const 3456
                    i32.add
                    local.get 6
                    i32.store
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.const 32
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.get 2
                  i32.const -40
                  i32.add
                  local.tee 0
                  i32.const -8
                  local.get 5
                  i32.sub
                  i32.const 7
                  i32.and
                  i32.const 0
                  local.get 5
                  i32.const 8
                  i32.add
                  i32.const 7
                  i32.and
                  select
                  local.tee 4
                  i32.sub
                  local.tee 6
                  i32.store offset=3416
                  i32.const 0
                  local.get 5
                  local.get 4
                  i32.add
                  local.tee 4
                  i32.store offset=3428
                  local.get 4
                  local.get 6
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 5
                  local.get 0
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=3892
                  i32.store offset=3432
                  br 2 (;@5;)
                end
                local.get 0
                i32.load8_u offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 5
                local.get 4
                i32.le_u
                br_if 0 (;@6;)
                local.get 6
                local.get 4
                i32.gt_u
                br_if 0 (;@6;)
                local.get 0
                local.get 8
                local.get 2
                i32.add
                i32.store offset=4
                i32.const 0
                local.get 4
                i32.const -8
                local.get 4
                i32.sub
                i32.const 7
                i32.and
                i32.const 0
                local.get 4
                i32.const 8
                i32.add
                i32.const 7
                i32.and
                select
                local.tee 0
                i32.add
                local.tee 6
                i32.store offset=3428
                i32.const 0
                i32.const 0
                i32.load offset=3416
                local.get 2
                i32.add
                local.tee 5
                local.get 0
                i32.sub
                local.tee 0
                i32.store offset=3416
                local.get 6
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 4
                local.get 5
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=3892
                i32.store offset=3432
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 5
                i32.const 0
                i32.load offset=3420
                local.tee 8
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                i32.store offset=3420
                local.get 5
                local.set 8
              end
              local.get 5
              local.get 2
              i32.add
              local.set 6
              i32.const 3852
              local.set 0
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 0
                              i32.load
                              local.get 6
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 0
                              i32.load offset=8
                              local.tee 0
                              br_if 0 (;@13;)
                              br 2 (;@11;)
                              unreachable
                            end
                            unreachable
                          end
                          local.get 0
                          i32.load8_u offset=12
                          i32.const 8
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        i32.const 3852
                        local.set 0
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load
                            local.tee 6
                            local.get 4
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 6
                            local.get 0
                            i32.load offset=4
                            i32.add
                            local.tee 6
                            local.get 4
                            i32.gt_u
                            br_if 3 (;@9;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 0
                          br 0 (;@11;)
                          unreachable
                        end
                        unreachable
                      end
                      local.get 0
                      local.get 5
                      i32.store
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      local.get 2
                      i32.add
                      i32.store offset=4
                      local.get 5
                      i32.const -8
                      local.get 5
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 5
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 11
                      local.get 3
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 6
                      i32.const -8
                      local.get 6
                      i32.sub
                      i32.const 7
                      i32.and
                      i32.const 0
                      local.get 6
                      i32.const 8
                      i32.add
                      i32.const 7
                      i32.and
                      select
                      i32.add
                      local.tee 5
                      local.get 11
                      i32.sub
                      local.get 3
                      i32.sub
                      local.set 0
                      local.get 11
                      local.get 3
                      i32.add
                      local.set 6
                      block  ;; label = @10
                        local.get 4
                        local.get 5
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 6
                        i32.store offset=3428
                        i32.const 0
                        i32.const 0
                        i32.load offset=3416
                        local.get 0
                        i32.add
                        local.tee 0
                        i32.store offset=3416
                        local.get 6
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=3424
                        local.get 5
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 6
                        i32.store offset=3424
                        i32.const 0
                        i32.const 0
                        i32.load offset=3412
                        local.get 0
                        i32.add
                        local.tee 0
                        i32.store offset=3412
                        local.get 6
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 6
                        local.get 0
                        i32.add
                        local.get 0
                        i32.store
                        br 3 (;@7;)
                      end
                      block  ;; label = @10
                        local.get 5
                        i32.load offset=4
                        local.tee 4
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 0 (;@10;)
                        local.get 4
                        i32.const -8
                        i32.and
                        local.set 7
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 4
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 5
                            i32.load offset=12
                            local.set 3
                            block  ;; label = @13
                              local.get 5
                              i32.load offset=8
                              local.tee 2
                              local.get 4
                              i32.const 3
                              i32.shr_u
                              local.tee 9
                              i32.const 3
                              i32.shl
                              i32.const 3444
                              i32.add
                              local.tee 4
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 2
                              i32.gt_u
                              drop
                            end
                            block  ;; label = @13
                              local.get 3
                              local.get 2
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=3404
                              i32.const -2
                              local.get 9
                              i32.rotl
                              i32.and
                              i32.store offset=3404
                              br 2 (;@11;)
                            end
                            block  ;; label = @13
                              local.get 3
                              local.get 4
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 3
                              i32.gt_u
                              drop
                            end
                            local.get 2
                            local.get 3
                            i32.store offset=12
                            local.get 3
                            local.get 2
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          local.get 5
                          i32.load offset=24
                          local.set 9
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 5
                              i32.load offset=12
                              local.tee 2
                              local.get 5
                              i32.eq
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                local.get 8
                                local.get 5
                                i32.load offset=8
                                local.tee 4
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 4
                                i32.load offset=12
                                local.get 5
                                i32.ne
                                drop
                              end
                              local.get 4
                              local.get 2
                              i32.store offset=12
                              local.get 2
                              local.get 4
                              i32.store offset=8
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 5
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 16
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 2
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 4
                              local.set 8
                              local.get 3
                              local.tee 2
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 2
                              i32.const 16
                              i32.add
                              local.set 4
                              local.get 2
                              i32.load offset=16
                              local.tee 3
                              br_if 0 (;@13;)
                            end
                            local.get 8
                            i32.const 0
                            i32.store
                          end
                          local.get 9
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 5
                              i32.load offset=28
                              local.tee 3
                              i32.const 2
                              i32.shl
                              i32.const 3708
                              i32.add
                              local.tee 4
                              i32.load
                              local.get 5
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 2
                              i32.store
                              local.get 2
                              br_if 1 (;@12;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=3408
                              i32.const -2
                              local.get 3
                              i32.rotl
                              i32.and
                              i32.store offset=3408
                              br 2 (;@11;)
                            end
                            local.get 9
                            i32.const 16
                            i32.const 20
                            local.get 9
                            i32.load offset=16
                            local.get 5
                            i32.eq
                            select
                            i32.add
                            local.get 2
                            i32.store
                            local.get 2
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 2
                          local.get 9
                          i32.store offset=24
                          block  ;; label = @12
                            local.get 5
                            i32.load offset=16
                            local.tee 4
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 2
                            local.get 4
                            i32.store offset=16
                            local.get 4
                            local.get 2
                            i32.store offset=24
                          end
                          local.get 5
                          i32.load offset=20
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 2
                          i32.const 20
                          i32.add
                          local.get 4
                          i32.store
                          local.get 4
                          local.get 2
                          i32.store offset=24
                        end
                        local.get 7
                        local.get 0
                        i32.add
                        local.set 0
                        local.get 5
                        local.get 7
                        i32.add
                        local.set 5
                      end
                      local.get 5
                      local.get 5
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 6
                      local.get 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 6
                      local.get 0
                      i32.add
                      local.get 0
                      i32.store
                      block  ;; label = @10
                        local.get 0
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 3
                        i32.shr_u
                        local.tee 4
                        i32.const 3
                        i32.shl
                        i32.const 3444
                        i32.add
                        local.set 0
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=3404
                            local.tee 3
                            i32.const 1
                            local.get 4
                            i32.shl
                            local.tee 4
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 3
                            local.get 4
                            i32.or
                            i32.store offset=3404
                            local.get 0
                            local.set 4
                            br 1 (;@11;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.set 4
                        end
                        local.get 0
                        local.get 6
                        i32.store offset=8
                        local.get 4
                        local.get 6
                        i32.store offset=12
                        local.get 6
                        local.get 0
                        i32.store offset=12
                        local.get 6
                        local.get 4
                        i32.store offset=8
                        br 3 (;@7;)
                      end
                      i32.const 0
                      local.set 4
                      block  ;; label = @10
                        local.get 0
                        i32.const 8
                        i32.shr_u
                        local.tee 3
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 31
                        local.set 4
                        local.get 0
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 3
                        local.get 3
                        i32.const 1048320
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 8
                        i32.and
                        local.tee 4
                        i32.shl
                        local.tee 3
                        local.get 3
                        i32.const 520192
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 4
                        i32.and
                        local.tee 3
                        i32.shl
                        local.tee 5
                        local.get 5
                        i32.const 245760
                        i32.add
                        i32.const 16
                        i32.shr_u
                        i32.const 2
                        i32.and
                        local.tee 5
                        i32.shl
                        i32.const 15
                        i32.shr_u
                        local.get 3
                        local.get 4
                        i32.or
                        local.get 5
                        i32.or
                        i32.sub
                        local.tee 4
                        i32.const 1
                        i32.shl
                        local.get 0
                        local.get 4
                        i32.const 21
                        i32.add
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 28
                        i32.add
                        local.set 4
                      end
                      local.get 6
                      local.get 4
                      i32.store offset=28
                      local.get 6
                      i64.const 0
                      i64.store offset=16 align=4
                      local.get 4
                      i32.const 2
                      i32.shl
                      i32.const 3708
                      i32.add
                      local.set 3
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=3408
                          local.tee 5
                          i32.const 1
                          local.get 4
                          i32.shl
                          local.tee 8
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 5
                          local.get 8
                          i32.or
                          i32.store offset=3408
                          local.get 3
                          local.get 6
                          i32.store
                          local.get 6
                          local.get 3
                          i32.store offset=24
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.const 0
                        i32.const 25
                        local.get 4
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        local.get 4
                        i32.const 31
                        i32.eq
                        select
                        i32.shl
                        local.set 4
                        local.get 3
                        i32.load
                        local.set 5
                        loop  ;; label = @11
                          local.get 5
                          local.tee 3
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 0
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 4
                          i32.const 29
                          i32.shr_u
                          local.set 5
                          local.get 4
                          i32.const 1
                          i32.shl
                          local.set 4
                          local.get 3
                          local.get 5
                          i32.const 4
                          i32.and
                          i32.add
                          i32.const 16
                          i32.add
                          local.tee 8
                          i32.load
                          local.tee 5
                          br_if 0 (;@11;)
                        end
                        local.get 8
                        local.get 6
                        i32.store
                        local.get 6
                        local.get 3
                        i32.store offset=24
                      end
                      local.get 6
                      local.get 6
                      i32.store offset=12
                      local.get 6
                      local.get 6
                      i32.store offset=8
                      br 2 (;@7;)
                    end
                    i32.const 0
                    local.get 2
                    i32.const -40
                    i32.add
                    local.tee 0
                    i32.const -8
                    local.get 5
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 5
                    i32.const 8
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    local.tee 8
                    i32.sub
                    local.tee 11
                    i32.store offset=3416
                    i32.const 0
                    local.get 5
                    local.get 8
                    i32.add
                    local.tee 8
                    i32.store offset=3428
                    local.get 8
                    local.get 11
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 5
                    local.get 0
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=3892
                    i32.store offset=3432
                    local.get 4
                    local.get 6
                    i32.const 39
                    local.get 6
                    i32.sub
                    i32.const 7
                    i32.and
                    i32.const 0
                    local.get 6
                    i32.const -39
                    i32.add
                    i32.const 7
                    i32.and
                    select
                    i32.add
                    i32.const -47
                    i32.add
                    local.tee 0
                    local.get 0
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.lt_u
                    select
                    local.tee 8
                    i32.const 27
                    i32.store offset=4
                    local.get 8
                    i32.const 16
                    i32.add
                    i32.const 0
                    i64.load offset=3860 align=4
                    i64.store align=4
                    local.get 8
                    i32.const 0
                    i64.load offset=3852 align=4
                    i64.store offset=8 align=4
                    i32.const 0
                    local.get 8
                    i32.const 8
                    i32.add
                    i32.store offset=3860
                    i32.const 0
                    local.get 2
                    i32.store offset=3856
                    i32.const 0
                    local.get 5
                    i32.store offset=3852
                    i32.const 0
                    i32.const 0
                    i32.store offset=3864
                    local.get 8
                    i32.const 24
                    i32.add
                    local.set 0
                    loop  ;; label = @9
                      local.get 0
                      i32.const 7
                      i32.store offset=4
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 5
                      local.get 0
                      i32.const 4
                      i32.add
                      local.set 0
                      local.get 5
                      local.get 6
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    local.get 4
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 8
                    local.get 8
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 4
                    local.get 8
                    local.get 4
                    i32.sub
                    local.tee 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 8
                    local.get 2
                    i32.store
                    block  ;; label = @9
                      local.get 2
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 3
                      i32.shr_u
                      local.tee 6
                      i32.const 3
                      i32.shl
                      i32.const 3444
                      i32.add
                      local.set 0
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=3404
                          local.tee 5
                          i32.const 1
                          local.get 6
                          i32.shl
                          local.tee 6
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 5
                          local.get 6
                          i32.or
                          i32.store offset=3404
                          local.get 0
                          local.set 6
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.load offset=8
                        local.set 6
                      end
                      local.get 0
                      local.get 4
                      i32.store offset=8
                      local.get 6
                      local.get 4
                      i32.store offset=12
                      local.get 4
                      local.get 0
                      i32.store offset=12
                      local.get 4
                      local.get 6
                      i32.store offset=8
                      br 4 (;@5;)
                    end
                    i32.const 0
                    local.set 0
                    block  ;; label = @9
                      local.get 2
                      i32.const 8
                      i32.shr_u
                      local.tee 6
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 31
                      local.set 0
                      local.get 2
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 6
                      i32.const 1048320
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 8
                      i32.and
                      local.tee 0
                      i32.shl
                      local.tee 6
                      local.get 6
                      i32.const 520192
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 4
                      i32.and
                      local.tee 6
                      i32.shl
                      local.tee 5
                      local.get 5
                      i32.const 245760
                      i32.add
                      i32.const 16
                      i32.shr_u
                      i32.const 2
                      i32.and
                      local.tee 5
                      i32.shl
                      i32.const 15
                      i32.shr_u
                      local.get 6
                      local.get 0
                      i32.or
                      local.get 5
                      i32.or
                      i32.sub
                      local.tee 0
                      i32.const 1
                      i32.shl
                      local.get 2
                      local.get 0
                      i32.const 21
                      i32.add
                      i32.shr_u
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 28
                      i32.add
                      local.set 0
                    end
                    local.get 4
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 4
                    i32.const 28
                    i32.add
                    local.get 0
                    i32.store
                    local.get 0
                    i32.const 2
                    i32.shl
                    i32.const 3708
                    i32.add
                    local.set 6
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=3408
                        local.tee 5
                        i32.const 1
                        local.get 0
                        i32.shl
                        local.tee 8
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 5
                        local.get 8
                        i32.or
                        i32.store offset=3408
                        local.get 6
                        local.get 4
                        i32.store
                        local.get 4
                        i32.const 24
                        i32.add
                        local.get 6
                        i32.store
                        br 1 (;@9;)
                      end
                      local.get 2
                      i32.const 0
                      i32.const 25
                      local.get 0
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      local.get 0
                      i32.const 31
                      i32.eq
                      select
                      i32.shl
                      local.set 0
                      local.get 6
                      i32.load
                      local.set 5
                      loop  ;; label = @10
                        local.get 5
                        local.tee 6
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 2
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 0
                        i32.const 29
                        i32.shr_u
                        local.set 5
                        local.get 0
                        i32.const 1
                        i32.shl
                        local.set 0
                        local.get 6
                        local.get 5
                        i32.const 4
                        i32.and
                        i32.add
                        i32.const 16
                        i32.add
                        local.tee 8
                        i32.load
                        local.tee 5
                        br_if 0 (;@10;)
                      end
                      local.get 8
                      local.get 4
                      i32.store
                      local.get 4
                      i32.const 24
                      i32.add
                      local.get 6
                      i32.store
                    end
                    local.get 4
                    local.get 4
                    i32.store offset=12
                    local.get 4
                    local.get 4
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 3
                  i32.load offset=8
                  local.tee 0
                  local.get 6
                  i32.store offset=12
                  local.get 3
                  local.get 6
                  i32.store offset=8
                  local.get 6
                  i32.const 0
                  i32.store offset=24
                  local.get 6
                  local.get 3
                  i32.store offset=12
                  local.get 6
                  local.get 0
                  i32.store offset=8
                end
                local.get 11
                i32.const 8
                i32.add
                local.set 0
                br 5 (;@1;)
              end
              local.get 6
              i32.load offset=8
              local.tee 0
              local.get 4
              i32.store offset=12
              local.get 6
              local.get 4
              i32.store offset=8
              local.get 4
              i32.const 24
              i32.add
              i32.const 0
              i32.store
              local.get 4
              local.get 6
              i32.store offset=12
              local.get 4
              local.get 0
              i32.store offset=8
            end
            i32.const 0
            i32.load offset=3416
            local.tee 0
            local.get 3
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            local.get 3
            i32.sub
            local.tee 4
            i32.store offset=3416
            i32.const 0
            i32.const 0
            i32.load offset=3428
            local.tee 0
            local.get 3
            i32.add
            local.tee 6
            i32.store offset=3428
            local.get 6
            local.get 4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            br 3 (;@1;)
          end
          call 50
          i32.const 48
          i32.store
          i32.const 0
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 3708
              i32.add
              local.tee 0
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.get 5
              i32.store
              local.get 5
              br_if 1 (;@4;)
              i32.const 0
              local.get 7
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              local.tee 7
              i32.store offset=3408
              br 2 (;@3;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 5
            i32.store
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 5
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 5
            i32.store offset=24
          end
          local.get 8
          i32.const 20
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.const 20
          i32.add
          local.get 0
          i32.store
          local.get 0
          local.get 5
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 6
            local.get 3
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 0
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 8
          local.get 3
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 8
          local.get 3
          i32.add
          local.tee 5
          local.get 6
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 5
          local.get 6
          i32.add
          local.get 6
          i32.store
          block  ;; label = @4
            local.get 6
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 6
            i32.const 3
            i32.shr_u
            local.tee 4
            i32.const 3
            i32.shl
            i32.const 3444
            i32.add
            local.set 0
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=3404
                local.tee 6
                i32.const 1
                local.get 4
                i32.shl
                local.tee 4
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 6
                local.get 4
                i32.or
                i32.store offset=3404
                local.get 0
                local.set 4
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
              local.set 4
            end
            local.get 0
            local.get 5
            i32.store offset=8
            local.get 4
            local.get 5
            i32.store offset=12
            local.get 5
            local.get 0
            i32.store offset=12
            local.get 5
            local.get 4
            i32.store offset=8
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 6
              i32.const 8
              i32.shr_u
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 0
              br 1 (;@4;)
            end
            i32.const 31
            local.set 0
            local.get 6
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 4
            i32.const 1048320
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 8
            i32.and
            local.tee 0
            i32.shl
            local.tee 4
            local.get 4
            i32.const 520192
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 4
            i32.and
            local.tee 4
            i32.shl
            local.tee 3
            local.get 3
            i32.const 245760
            i32.add
            i32.const 16
            i32.shr_u
            i32.const 2
            i32.and
            local.tee 3
            i32.shl
            i32.const 15
            i32.shr_u
            local.get 4
            local.get 0
            i32.or
            local.get 3
            i32.or
            i32.sub
            local.tee 0
            i32.const 1
            i32.shl
            local.get 6
            local.get 0
            i32.const 21
            i32.add
            i32.shr_u
            i32.const 1
            i32.and
            i32.or
            i32.const 28
            i32.add
            local.set 0
          end
          local.get 5
          local.get 0
          i32.store offset=28
          local.get 5
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 3708
          i32.add
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                i32.const 1
                local.get 0
                i32.shl
                local.tee 3
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 7
                local.get 3
                i32.or
                i32.store offset=3408
                local.get 4
                local.get 5
                i32.store
                local.get 5
                local.get 4
                i32.store offset=24
                br 1 (;@5;)
              end
              local.get 6
              i32.const 0
              i32.const 25
              local.get 0
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 0
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 0
              local.get 4
              i32.load
              local.set 3
              loop  ;; label = @6
                local.get 3
                local.tee 4
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 6
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 3
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 4
                local.get 3
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 3
                br_if 0 (;@6;)
              end
              local.get 2
              local.get 5
              i32.store
              local.get 5
              local.get 4
              i32.store offset=24
            end
            local.get 5
            local.get 5
            i32.store offset=12
            local.get 5
            local.get 5
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=8
          local.tee 0
          local.get 5
          i32.store offset=12
          local.get 4
          local.get 5
          i32.store offset=8
          local.get 5
          i32.const 0
          i32.store offset=24
          local.get 5
          local.get 4
          i32.store offset=12
          local.get 5
          local.get 0
          i32.store offset=8
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            local.get 5
            i32.load offset=28
            local.tee 6
            i32.const 2
            i32.shl
            i32.const 3708
            i32.add
            local.tee 0
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            local.get 8
            i32.store
            local.get 8
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 6
            i32.rotl
            i32.and
            i32.store offset=3408
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 5
          i32.eq
          select
          i32.add
          local.get 8
          i32.store
          local.get 8
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 5
          i32.load offset=16
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 8
          i32.store offset=24
        end
        local.get 5
        i32.const 20
        i32.add
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 20
        i32.add
        local.get 0
        i32.store
        local.get 0
        local.get 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 4
          local.get 3
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 5
          local.get 0
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 5
        local.get 3
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 5
        local.get 3
        i32.add
        local.tee 6
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 6
        local.get 4
        i32.add
        local.get 4
        i32.store
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const 3
          i32.shr_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.const 3444
          i32.add
          local.set 3
          i32.const 0
          i32.load offset=3424
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 8
              i32.shl
              local.tee 8
              local.get 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 2
              i32.or
              i32.store offset=3404
              local.get 3
              local.set 8
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=8
            local.set 8
          end
          local.get 3
          local.get 0
          i32.store offset=8
          local.get 8
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 3
          i32.store offset=12
          local.get 0
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 6
        i32.store offset=3424
        i32.const 0
        local.get 4
        i32.store offset=3412
      end
      local.get 5
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;56;) (type 5) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=3420
        local.tee 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          i32.const 0
          i32.load offset=3424
          local.get 1
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=12
            local.set 5
            block  ;; label = @5
              local.get 1
              i32.load offset=8
              local.tee 6
              local.get 2
              i32.const 3
              i32.shr_u
              local.tee 7
              i32.const 3
              i32.shl
              i32.const 3444
              i32.add
              local.tee 2
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 6
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 5
              local.get 6
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=3404
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=3404
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 5
              local.get 2
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 5
              i32.gt_u
              drop
            end
            local.get 6
            local.get 5
            i32.store offset=12
            local.get 5
            local.get 6
            i32.store offset=8
            br 2 (;@2;)
          end
          local.get 1
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 5
              local.get 1
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                local.get 1
                i32.load offset=8
                local.tee 2
                i32.gt_u
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=12
                local.get 1
                i32.ne
                drop
              end
              local.get 2
              local.get 5
              i32.store offset=12
              local.get 5
              local.get 2
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 1
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.const 16
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 2
              local.set 6
              local.get 4
              local.tee 5
              i32.const 20
              i32.add
              local.tee 2
              i32.load
              local.tee 4
              br_if 0 (;@5;)
              local.get 5
              i32.const 16
              i32.add
              local.set 2
              local.get 5
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
            end
            local.get 6
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 3708
              i32.add
              local.tee 2
              i32.load
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 5
              i32.store
              local.get 5
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=3408
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=3408
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 5
            i32.store
            local.get 5
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 5
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 1
            i32.load offset=16
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 5
            i32.store offset=24
          end
          local.get 1
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 5
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=4
        local.tee 2
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 0
        i32.store offset=3412
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        return
      end
      local.get 3
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=3428
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=3428
            i32.const 0
            i32.const 0
            i32.load offset=3416
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=3416
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            i32.const 0
            i32.load offset=3424
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=3412
            i32.const 0
            i32.const 0
            i32.store offset=3424
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=3424
            local.get 3
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            i32.store offset=3424
            i32.const 0
            i32.const 0
            i32.load offset=3412
            local.get 0
            i32.add
            local.tee 0
            i32.store offset=3412
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 1
            local.get 0
            i32.add
            local.get 0
            i32.store
            return
          end
          local.get 2
          i32.const -8
          i32.and
          local.get 0
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=12
              local.set 4
              block  ;; label = @6
                local.get 3
                i32.load offset=8
                local.tee 5
                local.get 2
                i32.const 3
                i32.shr_u
                local.tee 3
                i32.const 3
                i32.shl
                i32.const 3444
                i32.add
                local.tee 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=3420
                local.get 5
                i32.gt_u
                drop
              end
              block  ;; label = @6
                local.get 4
                local.get 5
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=3404
                i32.const -2
                local.get 3
                i32.rotl
                i32.and
                i32.store offset=3404
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 4
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=3420
                local.get 4
                i32.gt_u
                drop
              end
              local.get 5
              local.get 4
              i32.store offset=12
              local.get 4
              local.get 5
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=12
                local.tee 5
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=3420
                  local.get 3
                  i32.load offset=8
                  local.tee 2
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=12
                  local.get 3
                  i32.ne
                  drop
                end
                local.get 2
                local.get 5
                i32.store offset=12
                local.get 5
                local.get 2
                i32.store offset=8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 3
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 3
                i32.const 16
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 2
                local.set 6
                local.get 4
                local.tee 5
                i32.const 20
                i32.add
                local.tee 2
                i32.load
                local.tee 4
                br_if 0 (;@6;)
                local.get 5
                i32.const 16
                i32.add
                local.set 2
                local.get 5
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 6
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 3708
                i32.add
                local.tee 2
                i32.load
                local.get 3
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.get 5
                i32.store
                local.get 5
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=3408
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=3408
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 3
              i32.eq
              select
              i32.add
              local.get 5
              i32.store
              local.get 5
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 5
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 5
              i32.store offset=24
            end
            local.get 3
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 20
            i32.add
            local.get 2
            i32.store
            local.get 2
            local.get 5
            i32.store offset=24
          end
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          i32.const 0
          i32.load offset=3424
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=3412
          return
        end
        local.get 3
        local.get 2
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.shr_u
        local.tee 2
        i32.const 3
        i32.shl
        i32.const 3444
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=3404
            local.tee 4
            i32.const 1
            local.get 2
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 2
            i32.or
            i32.store offset=3404
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
          local.set 2
        end
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 2
        local.get 1
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=8
        return
      end
      i32.const 0
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 8
        i32.shr_u
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 4
        local.get 4
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 2
        i32.shl
        local.tee 4
        local.get 4
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 4
        i32.shl
        local.tee 5
        local.get 5
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 5
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 4
        local.get 2
        i32.or
        local.get 5
        i32.or
        i32.sub
        local.tee 2
        i32.const 1
        i32.shl
        local.get 0
        local.get 2
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 2
      end
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 1
      i32.const 28
      i32.add
      local.get 2
      i32.store
      local.get 2
      i32.const 2
      i32.shl
      i32.const 3708
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=3408
          local.tee 5
          i32.const 1
          local.get 2
          i32.shl
          local.tee 3
          i32.and
          br_if 0 (;@3;)
          i32.const 0
          local.get 5
          local.get 3
          i32.or
          i32.store offset=3408
          local.get 4
          local.get 1
          i32.store
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 2
        local.get 4
        i32.load
        local.set 5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 5
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 4
            local.get 5
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 3
            i32.load
            local.tee 5
            br_if 0 (;@4;)
          end
          local.get 3
          local.get 1
          i32.store
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          i32.const 24
          i32.add
          local.get 4
          i32.store
          local.get 1
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 1
        i32.const 24
        i32.add
        i32.const 0
        i32.store
        local.get 1
        local.get 4
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
      end
      i32.const 0
      i32.const 0
      i32.load offset=3436
      i32.const -1
      i32.add
      local.tee 1
      i32.store offset=3436
      local.get 1
      br_if 0 (;@1;)
      i32.const 3860
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load
        local.tee 0
        i32.const 8
        i32.add
        local.set 1
        local.get 0
        br_if 0 (;@2;)
      end
      i32.const 0
      i32.const -1
      i32.store offset=3436
    end)
  (func (;57;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 16
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 16
        local.get 0
        i32.const 16
        i32.gt_u
        select
        local.tee 3
        local.get 3
        i32.const -1
        i32.add
        i32.and
        br_if 0 (;@2;)
        local.get 3
        local.set 0
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 2
        local.tee 0
        i32.const 1
        i32.shl
        local.set 2
        local.get 0
        local.get 3
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const -64
      local.get 0
      i32.sub
      local.get 1
      i32.gt_u
      br_if 0 (;@1;)
      call 50
      i32.const 48
      i32.store
      i32.const 0
      return
    end
    block  ;; label = @1
      i32.const 16
      local.get 1
      i32.const 11
      i32.add
      i32.const -8
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 1
      local.get 0
      i32.add
      i32.const 12
      i32.add
      call 55
      local.tee 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 2
    i32.const -8
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -1
        i32.add
        local.get 2
        i32.and
        br_if 0 (;@2;)
        local.get 3
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const -4
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.const -8
      i32.and
      local.get 2
      local.get 0
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      i32.and
      i32.const -8
      i32.add
      local.tee 2
      local.get 2
      local.get 0
      i32.add
      local.get 2
      local.get 3
      i32.sub
      i32.const 15
      i32.gt_u
      select
      local.tee 0
      local.get 3
      i32.sub
      local.tee 2
      i32.sub
      local.set 6
      block  ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.load
        local.set 3
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 3
        local.get 2
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 6
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 6
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 4
      local.get 2
      local.get 4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 0
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 3
      local.get 2
      call 59
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 2
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const -8
      i32.and
      local.tee 3
      local.get 1
      i32.const 16
      i32.add
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.tee 2
      local.get 3
      local.get 1
      i32.sub
      local.tee 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      local.get 3
      i32.add
      local.tee 3
      local.get 3
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 2
      local.get 1
      call 59
    end
    local.get 0
    i32.const 8
    i32.add)
  (func (;58;) (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 8
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          call 55
          local.set 1
          br 1 (;@2;)
        end
        i32.const 28
        local.set 3
        local.get 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
        local.get 1
        i32.const 2
        i32.shr_u
        i32.popcnt
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        i32.const 48
        local.set 3
        i32.const -64
        local.get 1
        i32.sub
        local.get 2
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 16
        local.get 1
        i32.const 16
        i32.gt_u
        select
        local.get 2
        call 57
        local.set 1
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 48
        return
      end
      local.get 0
      local.get 1
      i32.store
      i32.const 0
      local.set 3
    end
    local.get 3)
  (func (;59;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          i32.const 0
          i32.load offset=3424
          local.get 0
          local.get 3
          i32.sub
          local.tee 0
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=3420
          local.set 4
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=12
            local.set 5
            block  ;; label = @5
              local.get 0
              i32.load offset=8
              local.tee 6
              local.get 3
              i32.const 3
              i32.shr_u
              local.tee 7
              i32.const 3
              i32.shl
              i32.const 3444
              i32.add
              local.tee 3
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 6
              i32.gt_u
              drop
            end
            block  ;; label = @5
              local.get 5
              local.get 6
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=3404
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=3404
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 5
              local.get 3
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              local.get 5
              i32.gt_u
              drop
            end
            local.get 6
            local.get 5
            i32.store offset=12
            local.get 5
            local.get 6
            i32.store offset=8
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=24
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=12
              local.tee 6
              local.get 0
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 4
                local.get 0
                i32.load offset=8
                local.tee 3
                i32.gt_u
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=12
                local.get 0
                i32.ne
                drop
              end
              local.get 3
              local.get 6
              i32.store offset=12
              local.get 6
              local.get 3
              i32.store offset=8
              br 1 (;@4;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 20
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 0
              i32.const 16
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 3
              local.set 4
              local.get 5
              local.tee 6
              i32.const 20
              i32.add
              local.tee 3
              i32.load
              local.tee 5
              br_if 0 (;@5;)
              local.get 6
              i32.const 16
              i32.add
              local.set 3
              local.get 6
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 4
            i32.const 0
            i32.store
          end
          local.get 7
          i32.eqz
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 3708
              i32.add
              local.tee 3
              i32.load
              local.get 0
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=3408
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=3408
              br 3 (;@2;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 0
            i32.load offset=16
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 0
          i32.load offset=20
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 6
          i32.store offset=24
          br 1 (;@2;)
        end
        local.get 2
        i32.load offset=4
        local.tee 3
        i32.const 3
        i32.and
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 1
        i32.store offset=3412
        local.get 2
        local.get 3
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 2
        local.get 1
        i32.store
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          local.tee 3
          i32.const 2
          i32.and
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=3428
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=3428
            i32.const 0
            i32.const 0
            i32.load offset=3416
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=3416
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.load offset=3424
            i32.ne
            br_if 3 (;@1;)
            i32.const 0
            i32.const 0
            i32.store offset=3412
            i32.const 0
            i32.const 0
            i32.store offset=3424
            return
          end
          block  ;; label = @4
            i32.const 0
            i32.load offset=3424
            local.get 2
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            local.get 0
            i32.store offset=3424
            i32.const 0
            i32.const 0
            i32.load offset=3412
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=3412
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
            return
          end
          i32.const 0
          i32.load offset=3420
          local.set 4
          local.get 3
          i32.const -8
          i32.and
          local.get 1
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=12
              local.set 5
              block  ;; label = @6
                local.get 2
                i32.load offset=8
                local.tee 6
                local.get 3
                i32.const 3
                i32.shr_u
                local.tee 2
                i32.const 3
                i32.shl
                i32.const 3444
                i32.add
                local.tee 3
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 6
                i32.gt_u
                drop
              end
              block  ;; label = @6
                local.get 5
                local.get 6
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.load offset=3404
                i32.const -2
                local.get 2
                i32.rotl
                i32.and
                i32.store offset=3404
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 5
                local.get 3
                i32.eq
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i32.gt_u
                drop
              end
              local.get 6
              local.get 5
              i32.store offset=12
              local.get 5
              local.get 6
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=24
            local.set 7
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=12
                local.tee 6
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 4
                  local.get 2
                  i32.load offset=8
                  local.tee 3
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=12
                  local.get 2
                  i32.ne
                  drop
                end
                local.get 3
                local.get 6
                i32.store offset=12
                local.get 6
                local.get 3
                i32.store offset=8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 2
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                local.get 2
                i32.const 16
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                br 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 3
                local.set 4
                local.get 5
                local.tee 6
                i32.const 20
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 3
                local.get 6
                i32.load offset=16
                local.tee 5
                br_if 0 (;@6;)
              end
              local.get 4
              i32.const 0
              i32.store
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=28
                local.tee 5
                i32.const 2
                i32.shl
                i32.const 3708
                i32.add
                local.tee 3
                i32.load
                local.get 2
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=3408
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=3408
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 2
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store offset=16
              local.get 3
              local.get 6
              i32.store offset=24
            end
            local.get 2
            i32.load offset=20
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 3
            i32.store
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          i32.const 0
          i32.load offset=3424
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 1
          i32.store offset=3412
          return
        end
        local.get 2
        local.get 3
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
      end
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.shr_u
        local.tee 3
        i32.const 3
        i32.shl
        i32.const 3444
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=3404
            local.tee 5
            i32.const 1
            local.get 3
            i32.shl
            local.tee 3
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 5
            local.get 3
            i32.or
            i32.store offset=3404
            local.get 1
            local.set 3
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.set 3
        end
        local.get 1
        local.get 0
        i32.store offset=8
        local.get 3
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 0
        local.get 3
        i32.store offset=8
        return
      end
      i32.const 0
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const 8
        i32.shr_u
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        i32.const 31
        local.set 3
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        i32.const 1048320
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 8
        i32.and
        local.tee 3
        i32.shl
        local.tee 5
        local.get 5
        i32.const 520192
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 4
        i32.and
        local.tee 5
        i32.shl
        local.tee 6
        local.get 6
        i32.const 245760
        i32.add
        i32.const 16
        i32.shr_u
        i32.const 2
        i32.and
        local.tee 6
        i32.shl
        i32.const 15
        i32.shr_u
        local.get 5
        local.get 3
        i32.or
        local.get 6
        i32.or
        i32.sub
        local.tee 3
        i32.const 1
        i32.shl
        local.get 1
        local.get 3
        i32.const 21
        i32.add
        i32.shr_u
        i32.const 1
        i32.and
        i32.or
        i32.const 28
        i32.add
        local.set 3
      end
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 0
      i32.const 28
      i32.add
      local.get 3
      i32.store
      local.get 3
      i32.const 2
      i32.shl
      i32.const 3708
      i32.add
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=3408
            local.tee 6
            i32.const 1
            local.get 3
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 6
            local.get 2
            i32.or
            i32.store offset=3408
            local.get 5
            local.get 0
            i32.store
            local.get 0
            i32.const 24
            i32.add
            local.get 5
            i32.store
            br 1 (;@3;)
          end
          local.get 1
          i32.const 0
          i32.const 25
          local.get 3
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 3
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 3
          local.get 5
          i32.load
          local.set 6
          loop  ;; label = @4
            local.get 6
            local.tee 5
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 1
            i32.eq
            br_if 2 (;@2;)
            local.get 3
            i32.const 29
            i32.shr_u
            local.set 6
            local.get 3
            i32.const 1
            i32.shl
            local.set 3
            local.get 5
            local.get 6
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 2
            i32.load
            local.tee 6
            br_if 0 (;@4;)
          end
          local.get 2
          local.get 0
          i32.store
          local.get 0
          i32.const 24
          i32.add
          local.get 5
          i32.store
        end
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 5
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 5
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 24
      i32.add
      i32.const 0
      i32.store
      local.get 0
      local.get 5
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
    end)
  (func (;60;) (type 6) (param i32) (result i32)
    (local i32 i32 i32)
    call 7
    local.set 1
    memory.size
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      local.get 0
      i32.add
      local.tee 0
      local.get 2
      i32.const 16
      i32.shl
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      call 67
      br_if 0 (;@1;)
      call 50
      i32.const 48
      i32.store
      i32.const -1
      return
    end
    local.get 1
    local.get 0
    i32.store
    local.get 3)
  (func (;61;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.const 8192
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call 66
      drop
      local.get 0
      return
    end
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.xor
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 1
            i32.ge_s
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            local.get 3
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          i32.const -4
          i32.and
          local.tee 4
          i32.const 64
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.const -64
          i32.add
          local.tee 5
          i32.gt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load
            i32.store
            local.get 2
            local.get 1
            i32.load offset=4
            i32.store offset=4
            local.get 2
            local.get 1
            i32.load offset=8
            i32.store offset=8
            local.get 2
            local.get 1
            i32.load offset=12
            i32.store offset=12
            local.get 2
            local.get 1
            i32.load offset=16
            i32.store offset=16
            local.get 2
            local.get 1
            i32.load offset=20
            i32.store offset=20
            local.get 2
            local.get 1
            i32.load offset=24
            i32.store offset=24
            local.get 2
            local.get 1
            i32.load offset=28
            i32.store offset=28
            local.get 2
            local.get 1
            i32.load offset=32
            i32.store offset=32
            local.get 2
            local.get 1
            i32.load offset=36
            i32.store offset=36
            local.get 2
            local.get 1
            i32.load offset=40
            i32.store offset=40
            local.get 2
            local.get 1
            i32.load offset=44
            i32.store offset=44
            local.get 2
            local.get 1
            i32.load offset=48
            i32.store offset=48
            local.get 2
            local.get 1
            i32.load offset=52
            i32.store offset=52
            local.get 2
            local.get 1
            i32.load offset=56
            i32.store offset=56
            local.get 2
            local.get 1
            i32.load offset=60
            i32.store offset=60
            local.get 1
            i32.const 64
            i32.add
            local.set 1
            local.get 2
            i32.const 64
            i32.add
            local.tee 2
            local.get 5
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        local.get 4
        i32.ge_u
        br_if 1 (;@1;)
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          local.get 4
          i32.lt_u
          br_if 0 (;@3;)
          br 2 (;@1;)
          unreachable
        end
        unreachable
      end
      block  ;; label = @2
        local.get 3
        i32.const 4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.const -4
        i32.add
        local.tee 4
        local.get 0
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 2
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 2
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        local.get 4
        i32.le_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;62;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 1
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=8
      local.get 3
      local.get 1
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 1
      i32.store
      local.get 4
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      i32.store offset=24
      local.get 3
      local.get 1
      i32.store offset=20
      local.get 3
      local.get 1
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 1
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 1
      i32.store
      local.get 4
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 5
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 1
      i64.extend_i32_u
      local.tee 6
      i64.const 32
      i64.shl
      local.get 6
      i64.or
      local.set 6
      local.get 3
      local.get 5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 6
        i64.store offset=24
        local.get 1
        local.get 6
        i64.store offset=16
        local.get 1
        local.get 6
        i64.store offset=8
        local.get 1
        local.get 6
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;63;) (type 5) (param i32)
    local.get 0
    call 2
    unreachable)
  (func (;64;) (type 5) (param i32))
  (func (;65;) (type 5) (param i32))
  (func (;66;) (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 1
        local.get 2
        i32.const 4096
        local.get 2
        i32.const 4096
        i32.lt_u
        select
        local.tee 4
        call 61
        local.set 3
        local.get 1
        i32.const 4096
        i32.add
        local.set 1
        local.get 3
        i32.const 4096
        i32.add
        local.set 3
        local.get 2
        local.get 4
        i32.sub
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;67;) (type 6) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      memory.size
      i32.const 16
      i32.shl
      i32.sub
      i32.const 65535
      i32.add
      i32.const 16
      i32.shr_u
      memory.grow
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    call 6
    i32.const 1)
  (func (;68;) (type 6) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=76
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 0
          call 69
          return
        end
        local.get 0
        call 16
        local.set 1
        local.get 0
        call 69
        local.set 2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        call 17
        local.get 2
        return
      end
      i32.const 0
      local.set 2
      block  ;; label = @2
        i32.const 0
        i32.load offset=2016
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=2016
        call 68
        local.set 2
      end
      block  ;; label = @2
        call 36
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          i32.const 0
          local.set 1
          block  ;; label = @4
            local.get 0
            i32.load offset=76
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 0
            call 16
            local.set 1
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=28
            i32.le_u
            br_if 0 (;@4;)
            local.get 0
            call 69
            local.get 2
            i32.or
            local.set 2
          end
          block  ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            call 17
          end
          local.get 0
          i32.load offset=56
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      call 37
    end
    local.get 2)
  (func (;69;) (type 6) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=20
      local.get 0
      i32.load offset=28
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 0
      local.get 0
      i32.load offset=36
      call_indirect (type 0)
      drop
      local.get 0
      i32.load offset=20
      br_if 0 (;@1;)
      i32.const -1
      return
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=40
      call_indirect (type 3)
      drop
    end
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    i32.const 0)
  (func (;70;) (type 2) (param i32 i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=3900
      br_if 0 (;@1;)
      i32.const 0
      local.get 1
      i32.store offset=3904
      i32.const 0
      local.get 0
      i32.store offset=3900
    end)
  (func (;71;) (type 9) (result i32)
    global.get 0)
  (func (;72;) (type 6) (param i32) (result i32)
    (local i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;73;) (type 5) (param i32)
    local.get 0
    global.set 0)
  (func (;74;) (type 6) (param i32) (result i32)
    local.get 0
    memory.grow)
  (table (;0;) 10 10 funcref)
  (memory (;0;) 256)
  (global (;0;) (mut i32) (i32.const 5246800))
  (global (;1;) i32 (i32.const 3908))
  (export "memory" (memory 0))
  (export "main" (func 9))
  (export "free" (func 56))
  (export "_start" (func 15))
  (export "__errno_location" (func 50))
  (export "fflush" (func 68))
  (export "setThrew" (func 70))
  (export "malloc" (func 55))
  (export "__data_end" (global 1))
  (export "stackSave" (func 71))
  (export "stackAlloc" (func 72))
  (export "stackRestore" (func 73))
  (export "__growWasmMemory" (func 74))
  (elem (;0;) (i32.const 1) 9 8 28 29 33 34 35 40 41)
  (data (;0;) (i32.const 0) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00==BEGIN DUMP_ARRAYS==\0a\00begin dump: %s\00x1\00\0a\00%0.2lf \00\0aend   dump: %s\0a\00x2\00==END   DUMP_ARRAYS==\0a\00[PolyBench] posix_memalign: cannot allocate memory\00-+   0X0x\00(null)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0f\0a\11\11\11\03\0a\07\00\01\13\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\12\12\12\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.\00\00\00\00\c0\06\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\07\00\00\00\f4\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\09\00\00\00\08\09\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0a\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000\0d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\0fP\00"))
