(module
  (type $t0 (func))
  (type $t1 (func (param i32)))
  (type $t2 (func (param i32 i32) (result i32)))
  (type $t3 (func (param i32 i32)))
  (type $t4 (func (param i32) (result i32)))
  (type $t5 (func (param i32 i32 i32) (result i32)))
  (type $t6 (func (result i32)))
  (type $t7 (func (param i32 i32 i32 i32 i32)))
  (type $t8 (func (param i32 i32 i32)))
  (type $t9 (func (param i32 i32 i32 i32) (result i32)))
  (type $t10 (func (param i32 i32 i32 i32)))
  (type $t11 (func (param i32) (result i64)))
  (type $t12 (func (param i32 i32 i32) (result i64)))
  (type $t13 (func (param i32 i32) (result i64)))
  (type $t14 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t15 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type $t16 (func (param i64 i32 i32) (result i32)))
  (func $_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h08b09b139755c240E (type $t6) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    i32.const 0
    local.set $l0
    i32.const 1
    local.set $l1
    local.get $l0
    local.get $l1
    i32.and
    local.set $l2
    local.get $l2
    call $_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17hcc55f094e31e5dadE
    local.set $l3
    local.get $l3
    return)
  (func $_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17hcc55f094e31e5dadE (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    global.get $g0
    local.set $l1
    i32.const 16
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    local.set $l3
    local.get $l3
    global.set $g0
    i32.const 15
    local.set $l4
    local.get $l3
    local.get $l4
    i32.add
    local.set $l5
    local.get $l5
    local.set $l6
    local.get $p0
    local.set $l7
    local.get $l3
    local.get $l7
    i32.store8 offset=15
    local.get $l6
    call $_ZN3std3sys4wasm7process8ExitCode6as_i3217h12482e2d23b592b4E
    local.set $l8
    i32.const 16
    local.set $l9
    local.get $l3
    local.get $l9
    i32.add
    local.set $l10
    local.get $l10
    global.set $g0
    local.get $l8
    return)
  (func $_ZN4main4main17h2d6c3d678af9e020E (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32)
    global.get $g0
    local.set $l0
    i32.const 32
    local.set $l1
    local.get $l0
    local.get $l1
    i32.sub
    local.set $l2
    local.get $l2
    global.set $g0
    i32.const 8
    local.set $l3
    local.get $l2
    local.get $l3
    i32.add
    local.set $l4
    local.get $l4
    local.set $l5
    i32.const 1048592
    local.set $l6
    local.get $l6
    local.set $l7
    i32.const 1
    local.set $l8
    i32.const 1048600
    local.set $l9
    local.get $l9
    local.set $l10
    i32.const 0
    local.set $l11
    local.get $l5
    local.get $l7
    local.get $l8
    local.get $l10
    local.get $l11
    call $_ZN4core3fmt9Arguments6new_v117h1449de1eb9c51069E
    i32.const 8
    local.set $l12
    local.get $l2
    local.get $l12
    i32.add
    local.set $l13
    local.get $l13
    local.set $l14
    local.get $l14
    call $_ZN3std2io5stdio6_print17h0ad43ed2b503000bE
    i32.const 32
    local.set $l15
    local.get $l2
    local.get $l15
    i32.add
    local.set $l16
    local.get $l16
    global.set $g0
    return)
  (func $sum (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32)
    i32.const 0
    local.set $l2
    local.get $p1
    local.get $l2
    i32.lt_s
    local.set $l3
    local.get $p0
    local.get $p1
    i32.add
    local.set $l4
    local.get $l4
    local.get $p0
    i32.lt_s
    local.set $l5
    local.get $l3
    local.get $l5
    i32.xor
    local.set $l6
    i32.const 1
    local.set $l7
    local.get $l6
    local.get $l7
    i32.and
    local.set $l8
    block $B0
      local.get $l8
      br_if $B0
      local.get $l4
      return
    end
    i32.const 1048640
    local.set $l9
    local.get $l9
    local.set $l10
    i32.const 28
    local.set $l11
    i32.const 1048616
    local.set $l12
    local.get $l12
    local.set $l13
    local.get $l10
    local.get $l11
    local.get $l13
    call $_ZN4core9panicking5panic17h8e74859c8f9988caE
    unreachable)
  (func $main (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    i32.const 1
    local.set $l2
    local.get $l2
    local.get $p0
    local.get $p1
    call $_ZN3std2rt10lang_start17h286ad80764e2656fE
    local.set $l3
    local.get $l3
    return)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2f57cf320ff603fbE (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    global.get $g0
    local.set $l1
    i32.const 16
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    local.set $l3
    local.get $l3
    global.set $g0
    local.get $p0
    i32.load
    local.set $l4
    local.get $l4
    call $_ZN4core3ops8function6FnOnce9call_once17hfd090cae155e316fE
    local.set $l5
    i32.const 16
    local.set $l6
    local.get $l3
    local.get $l6
    i32.add
    local.set $l7
    local.get $l7
    global.set $g0
    local.get $l5
    return)
  (func $_ZN4core3ops8function6FnOnce9call_once17hfd090cae155e316fE (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    global.get $g0
    local.set $l1
    i32.const 16
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    local.set $l3
    local.get $l3
    global.set $g0
    i32.const 4
    local.set $l4
    local.get $l3
    local.get $l4
    i32.add
    local.set $l5
    local.get $l5
    local.set $l6
    local.get $l3
    local.get $p0
    i32.store offset=4
    local.get $l6
    call $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7378e2ca5f2faee7E
    local.set $l7
    i32.const 16
    local.set $l8
    local.get $l3
    local.get $l8
    i32.add
    local.set $l9
    local.get $l9
    global.set $g0
    local.get $l7
    return)
  (func $_ZN4core3ops8function6FnOnce9call_once17hc32d20f44eb00963E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    local.set $l1
    i32.const 16
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    local.set $l3
    local.get $l3
    global.set $g0
    local.get $p0
    call_indirect (type $t0) $T0
    i32.const 16
    local.set $l4
    local.get $l3
    local.get $l4
    i32.add
    local.set $l5
    local.get $l5
    global.set $g0
    return)
  (func $_ZN4core3ptr13drop_in_place17h1957c0dcdcc85c00E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    global.get $g0
    local.set $l1
    i32.const 16
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    drop
    return)
  (func $_ZN3std2rt10lang_start17h286ad80764e2656fE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32)
    global.get $g0
    local.set $l3
    i32.const 16
    local.set $l4
    local.get $l3
    local.get $l4
    i32.sub
    local.set $l5
    local.get $l5
    global.set $g0
    i32.const 1048668
    local.set $l6
    local.get $l6
    local.set $l7
    i32.const 12
    local.set $l8
    local.get $l5
    local.get $l8
    i32.add
    local.set $l9
    local.get $l9
    local.set $l10
    local.get $l5
    local.get $p0
    i32.store offset=12
    local.get $l10
    local.get $l7
    local.get $p1
    local.get $p2
    call $_ZN3std2rt19lang_start_internal17hd478170250c88e80E
    local.set $l11
    i32.const 16
    local.set $l12
    local.get $l5
    local.get $l12
    i32.add
    local.set $l13
    local.get $l13
    global.set $g0
    local.get $l11
    return)
  (func $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7378e2ca5f2faee7E (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32)
    local.get $p0
    i32.load
    local.set $l1
    local.get $l1
    call $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h770de63002b4d6c6E
    call $_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h08b09b139755c240E
    local.set $l2
    local.get $l2
    return)
  (func $_ZN4core4hint9black_box17h8603394524c21575E (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    local.set $l0
    i32.const 16
    local.set $l1
    local.get $l0
    local.get $l1
    i32.sub
    local.set $l2
    i32.const 8
    local.set $l3
    local.get $l2
    local.get $l3
    i32.add
    local.set $l4
    local.get $l4
    local.set $l5
    return)
  (func $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h770de63002b4d6c6E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    local.set $l1
    i32.const 16
    local.set $l2
    local.get $l1
    local.get $l2
    i32.sub
    local.set $l3
    local.get $l3
    global.set $g0
    local.get $p0
    call $_ZN4core3ops8function6FnOnce9call_once17hc32d20f44eb00963E
    call $_ZN4core4hint9black_box17h8603394524c21575E
    i32.const 16
    local.set $l4
    local.get $l3
    local.get $l4
    i32.add
    local.set $l5
    local.get $l5
    global.set $g0
    return)
  (func $_ZN4core3fmt9Arguments6new_v117h1449de1eb9c51069E (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    global.get $g0
    local.set $l5
    i32.const 16
    local.set $l6
    local.get $l5
    local.get $l6
    i32.sub
    local.set $l7
    i32.const 0
    local.set $l8
    local.get $l7
    local.get $l8
    i32.store offset=8
    local.get $p0
    local.get $p1
    i32.store
    local.get $p0
    local.get $p2
    i32.store offset=4
    local.get $l7
    i32.load offset=8
    local.set $l9
    local.get $l7
    i32.load offset=12
    local.set $l10
    local.get $p0
    local.get $l9
    i32.store offset=8
    local.get $p0
    local.get $l10
    i32.store offset=12
    local.get $p0
    local.get $p3
    i32.store offset=16
    local.get $p0
    local.get $p4
    i32.store offset=20
    return)
  (func $__rust_alloc (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    local.get $p0
    local.get $p1
    call $__rdl_alloc
    local.set $l2
    local.get $l2
    return)
  (func $__rust_dealloc (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    local.get $p1
    local.get $p2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    local.get $p0
    local.get $p1
    local.get $p2
    local.get $p3
    call $__rdl_realloc
    local.set $l4
    local.get $l4
    return)
  (func $__rust_alloc_error_handler (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $__rg_oom
    return)
  (func $_ZN119_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc311003eb08d80adE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        i32.const 4
        i32.add
        i32.load
        local.tee $l4
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $l5
        i32.sub
        local.get $p2
        local.get $p1
        i32.sub
        local.tee $p2
        i32.lt_u
        br_if $B1
        local.get $p0
        i32.load
        local.set $l4
        br $B0
      end
      block $B2
        local.get $l5
        local.get $p2
        i32.add
        local.tee $l6
        local.get $l5
        i32.lt_u
        br_if $B2
        local.get $l4
        i32.const 1
        i32.shl
        local.tee $l5
        local.get $l6
        local.get $l5
        local.get $l6
        i32.gt_u
        select
        local.tee $l5
        i32.const 8
        local.get $l5
        i32.const 8
        i32.gt_u
        select
        local.set $l5
        block $B3
          block $B4
            local.get $l4
            i32.eqz
            br_if $B4
            local.get $l3
            i32.const 16
            i32.add
            i32.const 8
            i32.add
            i32.const 1
            i32.store
            local.get $l3
            local.get $l4
            i32.store offset=20
            local.get $l3
            local.get $p0
            i32.load
            i32.store offset=16
            br $B3
          end
          local.get $l3
          i32.const 0
          i32.store offset=16
        end
        local.get $l3
        local.get $l5
        i32.const 1
        local.get $l3
        i32.const 16
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h684e32ad59c880d2E
        local.get $l3
        i32.const 8
        i32.add
        i32.load
        local.set $l5
        local.get $l3
        i32.load offset=4
        local.set $l4
        block $B5
          local.get $l3
          i32.load
          i32.const 1
          i32.eq
          br_if $B5
          local.get $p0
          local.get $l4
          i32.store
          local.get $p0
          i32.const 4
          i32.add
          local.get $l5
          i32.store
          local.get $p0
          i32.const 8
          i32.add
          i32.load
          local.set $l5
          br $B0
        end
        local.get $l5
        i32.eqz
        br_if $B2
        local.get $l4
        local.get $l5
        call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
        unreachable
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17hfd481cf132d45bc8E
      unreachable
    end
    local.get $l4
    local.get $l5
    i32.add
    local.get $p1
    local.get $p2
    call $memcpy
    drop
    local.get $p0
    i32.const 8
    i32.add
    local.tee $p0
    local.get $p0
    i32.load
    local.get $p2
    i32.add
    i32.store
    local.get $l3
    i32.const 32
    i32.add
    global.set $g0)
  (func $_ZN5alloc7raw_vec11finish_grow17h684e32ad59c880d2E (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    block $B0
      block $B1
        block $B2
          local.get $p2
          i32.eqz
          br_if $B2
          i32.const 1
          local.set $l4
          local.get $p1
          i32.const 0
          i32.ge_s
          br_if $B1
          i32.const 0
          local.set $p2
          br $B0
        end
        local.get $p0
        local.get $p1
        i32.store offset=4
        i32.const 1
        local.set $l4
        i32.const 0
        local.set $p2
        br $B0
      end
      block $B3
        block $B4
          local.get $p3
          i32.load
          local.tee $l5
          br_if $B4
          block $B5
            local.get $p1
            br_if $B5
            local.get $p2
            local.set $p3
            br $B3
          end
          local.get $p1
          local.get $p2
          call $__rust_alloc
          local.set $p3
          br $B3
        end
        block $B6
          local.get $p3
          i32.load offset=4
          local.tee $p3
          br_if $B6
          block $B7
            local.get $p1
            br_if $B7
            local.get $p2
            local.set $p3
            br $B3
          end
          local.get $p1
          local.get $p2
          call $__rust_alloc
          local.set $p3
          br $B3
        end
        local.get $l5
        local.get $p3
        local.get $p2
        local.get $p1
        call $__rust_realloc
        local.set $p3
      end
      block $B8
        local.get $p3
        br_if $B8
        local.get $p0
        local.get $p1
        i32.store offset=4
        br $B0
      end
      local.get $p0
      local.get $p3
      i32.store offset=4
      i32.const 0
      local.set $l4
      local.get $p1
      local.set $p2
    end
    local.get $p0
    local.get $l4
    i32.store
    local.get $p0
    i32.const 8
    i32.add
    local.get $p2
    i32.store)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5ddc35932bfa82d2E (type $t11) (param $p0 i32) (result i64)
    i64.const -5786388802339902217)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7134204eebcf97edE (type $t11) (param $p0 i32) (result i64)
    i64.const 9147559743429524724)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf14c273f0cad9665E (type $t11) (param $p0 i32) (result i64)
    i64.const -9040091204923801142)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f2d95f17d034da1E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.tee $p0
    i32.load offset=8
    local.set $l3
    local.get $p0
    i32.load
    local.set $p0
    local.get $l2
    local.get $p1
    call $_ZN4core3fmt9Formatter10debug_list17h937013fe24970c18E
    i64.store
    block $B0
      local.get $l3
      i32.eqz
      br_if $B0
      loop $L1
        local.get $l2
        local.get $p0
        i32.store offset=12
        local.get $l2
        local.get $l2
        i32.const 12
        i32.add
        i32.const 1048764
        call $_ZN4core3fmt8builders8DebugSet5entry17h573d3b426d5b3db2E
        drop
        local.get $p0
        i32.const 1
        i32.add
        local.set $p0
        local.get $l3
        i32.const -1
        i32.add
        local.tee $l3
        br_if $L1
      end
    end
    local.get $l2
    call $_ZN4core3fmt8builders9DebugList6finish17ha6c5257eb4646dd0E
    local.set $p0
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he384be2d960c6ad1E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.set $p0
    block $B0
      local.get $p1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17h1a33320600e5fe7fE
      br_if $B0
      block $B1
        local.get $p1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17ha4187b7193506a35E
        br_if $B1
        local.get $p0
        local.get $p1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h6698aec92049b0beE
        return
      end
      local.get $p0
      local.get $p1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hba262f9d0662bd59E
      return
    end
    local.get $p0
    local.get $p1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hbf03e45f18908e6eE)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he7410b3044728bd0E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.set $p0
    block $B0
      local.get $p1
      call $_ZN4core3fmt9Formatter15debug_lower_hex17h1a33320600e5fe7fE
      br_if $B0
      block $B1
        local.get $p1
        call $_ZN4core3fmt9Formatter15debug_upper_hex17ha4187b7193506a35E
        br_if $B1
        local.get $p0
        local.get $p1
        call $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hec75eb987b4d9b2bE
        return
      end
      local.get $p0
      local.get $p1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h6cd23eca2795f5a5E
      return
    end
    local.get $p0
    local.get $p1
    call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17ha5caf19e06be7a5aE)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hef9067cd1ecc3b06E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    call $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h0bf0faa5dce145e0E)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hfa73b6b31429f930E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    local.get $p1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h0c505ead2e56acc7E)
  (func $_ZN4core3fmt5Write10write_char17h3080bb939e6765f7E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 0
    i32.store offset=12
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p1
            i32.const 128
            i32.lt_u
            br_if $B3
            local.get $p1
            i32.const 2048
            i32.lt_u
            br_if $B2
            local.get $l2
            i32.const 12
            i32.add
            local.set $l3
            local.get $p1
            i32.const 65536
            i32.ge_u
            br_if $B1
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set $l4
            br $B0
          end
          local.get $l2
          local.get $p1
          i32.store8 offset=12
          local.get $l2
          i32.const 12
          i32.add
          local.set $l3
          i32.const 1
          local.set $l4
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get $l2
        local.get $p1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        local.get $l2
        i32.const 12
        i32.add
        local.set $l3
        i32.const 2
        local.set $l4
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get $l2
      local.get $p1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get $l2
      local.get $p1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get $l2
      local.get $p1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set $l4
    end
    i32.const 0
    local.set $p1
    block $B4
      local.get $p0
      i32.load
      local.get $l3
      local.get $l4
      call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h5db416053b1560e7E
      local.tee $l5
      i32.wrap_i64
      local.tee $l3
      i32.const 255
      i32.and
      i32.const 3
      i32.eq
      br_if $B4
      local.get $l5
      i64.const 8
      i64.shr_u
      local.set $l5
      block $B5
        block $B6
          i32.const 0
          br_if $B6
          local.get $p0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if $B5
        end
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $p1
        i32.load
        local.get $p1
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B7
          local.get $p1
          i32.load offset=4
          local.tee $l4
          i32.load offset=4
          local.tee $l6
          i32.eqz
          br_if $B7
          local.get $p1
          i32.load
          local.get $l6
          local.get $l4
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p0
      local.get $l3
      i32.store8 offset=4
      local.get $p0
      i32.const 11
      i32.add
      local.get $l5
      i64.const 48
      i64.shr_u
      i64.store8
      local.get $p0
      i32.const 9
      i32.add
      local.get $l5
      i64.const 32
      i64.shr_u
      i64.store16 align=1
      local.get $p0
      i32.const 5
      i32.add
      local.get $l5
      i64.store32 align=1
      i32.const 1
      local.set $p1
    end
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h5db416053b1560e7E (type $t12) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i64)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    local.get $p0
                    i32.load
                    local.tee $p0
                    i32.load
                    br_if $B7
                    local.get $p0
                    i32.const -1
                    i32.store
                    local.get $l3
                    i32.const 10
                    local.get $p1
                    local.get $p2
                    call $_ZN4core5slice6memchr7memrchr17h38c4ba77ee3d51e5E
                    local.get $p0
                    i32.const 4
                    i32.add
                    local.set $l4
                    block $B8
                      block $B9
                        block $B10
                          block $B11
                            block $B12
                              block $B13
                                local.get $l3
                                i32.load
                                i32.eqz
                                br_if $B13
                                local.get $l3
                                i32.load offset=4
                                i32.const 1
                                i32.add
                                local.tee $l5
                                local.get $p2
                                i32.gt_u
                                br_if $B6
                                local.get $p1
                                local.get $l5
                                i32.add
                                local.set $l6
                                local.get $p0
                                i32.const 12
                                i32.add
                                i32.load
                                local.tee $l7
                                i32.eqz
                                br_if $B12
                                block $B14
                                  local.get $l7
                                  local.get $l5
                                  i32.add
                                  local.get $p0
                                  i32.const 8
                                  i32.add
                                  i32.load
                                  local.tee $l8
                                  i32.le_u
                                  br_if $B14
                                  local.get $p0
                                  i32.const 16
                                  i32.add
                                  i32.load8_u
                                  i32.const 1
                                  i32.ne
                                  br_if $B2
                                  i32.const 0
                                  local.set $l7
                                  local.get $p0
                                  i32.const 0
                                  i32.store8 offset=17
                                  local.get $p0
                                  i32.const 12
                                  i32.add
                                  i32.const 0
                                  i32.store
                                end
                                local.get $l8
                                local.get $l5
                                i32.gt_u
                                br_if $B11
                                local.get $p0
                                i32.const 1
                                i32.store8 offset=17
                                local.get $p0
                                i32.const 16
                                i32.add
                                i32.load8_u
                                i32.const 1
                                i32.ne
                                br_if $B1
                                local.get $l4
                                i32.const 0
                                i32.store8 offset=13
                                br $B10
                              end
                              block $B15
                                block $B16
                                  local.get $p0
                                  i32.const 12
                                  i32.add
                                  i32.load
                                  local.tee $l5
                                  br_if $B16
                                  i32.const 0
                                  local.set $l5
                                  br $B15
                                end
                                local.get $l5
                                local.get $l4
                                i32.load
                                i32.add
                                i32.const -1
                                i32.add
                                i32.load8_u
                                i32.const 10
                                i32.ne
                                br_if $B15
                                local.get $p0
                                i32.const 16
                                i32.add
                                i32.load8_u
                                i32.const 1
                                i32.ne
                                br_if $B5
                                i32.const 0
                                local.set $l5
                                local.get $p0
                                i32.const 0
                                i32.store8 offset=17
                                local.get $p0
                                i32.const 12
                                i32.add
                                i32.const 0
                                i32.store
                              end
                              block $B17
                                local.get $l5
                                local.get $p2
                                i32.add
                                local.get $p0
                                i32.const 8
                                i32.add
                                i32.load
                                local.tee $l7
                                i32.le_u
                                br_if $B17
                                local.get $p0
                                i32.const 16
                                i32.add
                                i32.load8_u
                                i32.const 1
                                i32.ne
                                br_if $B4
                                local.get $l5
                                i32.eqz
                                br_if $B17
                                local.get $p0
                                i32.const 0
                                i32.store8 offset=17
                                local.get $p0
                                i32.const 12
                                i32.add
                                i32.const 0
                                i32.store
                              end
                              block $B18
                                local.get $l7
                                local.get $p2
                                i32.le_u
                                br_if $B18
                                local.get $l4
                                local.get $p1
                                local.get $p1
                                local.get $p2
                                i32.add
                                call $_ZN119_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc311003eb08d80adE
                                br $B8
                              end
                              local.get $p0
                              i32.const 1
                              i32.store8 offset=17
                              local.get $p0
                              i32.const 16
                              i32.add
                              i32.load8_u
                              i32.const 1
                              i32.ne
                              br_if $B3
                              local.get $l4
                              i32.const 0
                              i32.store8 offset=13
                              br $B8
                            end
                            local.get $p0
                            i32.const 16
                            i32.add
                            i32.load8_u
                            i32.const 1
                            i32.eq
                            br_if $B9
                            i32.const 1049048
                            i32.const 43
                            i32.const 1049500
                            call $_ZN4core9panicking5panic17h8e74859c8f9988caE
                            unreachable
                          end
                          local.get $l4
                          local.get $p1
                          local.get $l6
                          call $_ZN119_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc311003eb08d80adE
                          local.get $p0
                          i32.const 16
                          i32.add
                          i32.load8_u
                          i32.const 1
                          i32.ne
                          br_if $B0
                          local.get $p0
                          i32.const 12
                          i32.add
                          i32.load
                          local.set $l7
                        end
                        local.get $l7
                        i32.eqz
                        br_if $B9
                        local.get $p0
                        i32.const 0
                        i32.store8 offset=17
                        local.get $p0
                        i32.const 12
                        i32.add
                        i32.const 0
                        i32.store
                      end
                      block $B19
                        local.get $p0
                        i32.const 8
                        i32.add
                        i32.load
                        local.get $p2
                        local.get $l5
                        i32.sub
                        i32.le_u
                        br_if $B19
                        local.get $l4
                        local.get $l6
                        local.get $p1
                        local.get $p2
                        i32.add
                        call $_ZN119_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc311003eb08d80adE
                        br $B8
                      end
                      local.get $l4
                      i32.const 0
                      i32.store8 offset=13
                    end
                    local.get $p0
                    local.get $p0
                    i32.load
                    i32.const 1
                    i32.add
                    i32.store
                    local.get $l3
                    i32.const 16
                    i32.add
                    global.set $g0
                    i64.const 3
                    return
                  end
                  i32.const 1048780
                  i32.const 16
                  local.get $l3
                  i32.const 8
                  i32.add
                  i32.const 1049092
                  i32.const 1049904
                  call $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE
                  unreachable
                end
                i32.const 1048920
                i32.const 35
                i32.const 1049032
                call $_ZN4core9panicking5panic17h8e74859c8f9988caE
                unreachable
              end
              i32.const 1049048
              i32.const 43
              i32.const 1049484
              call $_ZN4core9panicking5panic17h8e74859c8f9988caE
              unreachable
            end
            i32.const 1049048
            i32.const 43
            i32.const 1049484
            call $_ZN4core9panicking5panic17h8e74859c8f9988caE
            unreachable
          end
          i32.const 1049048
          i32.const 43
          i32.const 1049500
          call $_ZN4core9panicking5panic17h8e74859c8f9988caE
          unreachable
        end
        i32.const 1049048
        i32.const 43
        i32.const 1049484
        call $_ZN4core9panicking5panic17h8e74859c8f9988caE
        unreachable
      end
      i32.const 1049048
      i32.const 43
      i32.const 1049500
      call $_ZN4core9panicking5panic17h8e74859c8f9988caE
      unreachable
    end
    i32.const 1049048
    i32.const 43
    i32.const 1049484
    call $_ZN4core9panicking5panic17h8e74859c8f9988caE
    unreachable)
  (func $_ZN4core3fmt5Write10write_char17h335a205655d81582E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 0
    i32.store offset=12
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p1
            i32.const 128
            i32.lt_u
            br_if $B3
            local.get $p1
            i32.const 2048
            i32.lt_u
            br_if $B2
            local.get $l2
            i32.const 12
            i32.add
            local.set $l3
            local.get $p1
            i32.const 65536
            i32.ge_u
            br_if $B1
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set $p1
            br $B0
          end
          local.get $l2
          local.get $p1
          i32.store8 offset=12
          local.get $l2
          i32.const 12
          i32.add
          local.set $l3
          i32.const 1
          local.set $p1
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get $l2
        local.get $p1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        local.get $l2
        i32.const 12
        i32.add
        local.set $l3
        i32.const 2
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get $l2
      local.get $p1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get $l2
      local.get $p1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get $l2
      local.get $p1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set $p1
    end
    local.get $p0
    i32.load
    local.get $l3
    local.get $l3
    local.get $p1
    i32.add
    call $_ZN119_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc311003eb08d80adE
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    i32.const 0)
  (func $_ZN4core3fmt5Write9write_fmt17h28d762786ea1687cE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1048692
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN4core3fmt5Write9write_fmt17h5b33a41cd0e61b61E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1048716
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2d52a615cd4ce459E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        block $B2
          i32.const 0
          i32.load offset=1054800
          i32.const 3
          i32.ne
          br_if $B2
          i32.const 0
          i32.load offset=1054804
          br_if $B1
          i32.const 0
          local.set $l2
          i32.const 0
          i32.const -1
          i32.store offset=1054804
          block $B3
            i32.const 0
            i32.load8_u offset=1054820
            local.tee $l3
            i32.eqz
            br_if $B3
            i32.const 0
            i32.load8_u offset=1054821
            i32.const 255
            i32.and
            br_if $B3
            local.get $l3
            i32.const 1
            i32.ne
            br_if $B0
            i32.const 0
            i32.load offset=1054816
            i32.eqz
            br_if $B3
            i32.const 0
            i32.const 0
            i32.store offset=1054816
            i32.const 0
            i32.const 0
            i32.store8 offset=1054821
          end
          block $B4
            i32.const 0
            i32.load offset=1054808
            local.tee $l3
            i32.eqz
            br_if $B4
            i32.const 0
            i32.load offset=1054812
            local.tee $l4
            i32.eqz
            br_if $B4
            local.get $l3
            local.get $l4
            i32.const 1
            call $__rust_dealloc
            i32.const 0
            i32.load offset=1054804
            i32.const 1
            i32.add
            local.set $l2
          end
          i32.const 0
          i32.const 1
          i32.store16 offset=1054820
          i32.const 0
          i64.const 1
          i64.store offset=1054808 align=4
          i32.const 0
          local.get $l2
          i32.store offset=1054804
          i32.const 0
          i32.const 0
          i32.store offset=1054816
        end
        local.get $l1
        i32.const 16
        i32.add
        global.set $g0
        return
      end
      i32.const 1048780
      i32.const 16
      local.get $l1
      i32.const 8
      i32.add
      i32.const 1049092
      i32.const 1049888
      call $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE
      unreachable
    end
    i32.const 1049048
    i32.const 43
    i32.const 1049484
    call $_ZN4core9panicking5panic17h8e74859c8f9988caE
    unreachable)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8a7a06e4a7921b64E (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=12
    local.get $l2
    i32.const 12
    i32.add
    local.get $p1
    call $_ZN3std4sync4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h287779af2e20826bE
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0)
  (func $_ZN3std4sync4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h287779af2e20826bE (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.tee $p0
    i32.load
    local.set $l3
    local.get $p0
    i32.const 0
    i32.store
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $l3
                i32.eqz
                br_if $B5
                i32.const 0
                i32.load8_u offset=1055338
                local.set $p0
                i32.const 0
                i32.const 1
                i32.store8 offset=1055338
                local.get $l2
                local.get $p0
                i32.store8 offset=15
                local.get $p0
                br_if $B4
                block $B6
                  block $B7
                    i32.const 0
                    i32.load offset=1054824
                    local.tee $p0
                    br_table $B7 $B0 $B6
                  end
                  i32.const 12
                  i32.const 4
                  call $__rust_alloc
                  local.tee $p0
                  i32.eqz
                  br_if $B3
                  local.get $p0
                  i32.const 0
                  i32.store offset=8
                  local.get $p0
                  i64.const 4
                  i64.store align=4
                  i32.const 0
                  local.get $p0
                  i32.store offset=1054824
                end
                block $B8
                  local.get $p0
                  i32.load offset=8
                  local.tee $l4
                  local.get $p0
                  i32.const 4
                  i32.add
                  i32.load
                  i32.eq
                  br_if $B8
                  local.get $p0
                  i32.load
                  local.set $l5
                  br $B1
                end
                local.get $l4
                i32.const 1
                i32.add
                local.tee $l5
                local.get $l4
                i32.lt_u
                br_if $B2
                local.get $l4
                i32.const 1
                i32.shl
                local.tee $l6
                local.get $l5
                local.get $l6
                local.get $l5
                i32.gt_u
                select
                local.tee $l5
                i32.const 4
                local.get $l5
                i32.const 4
                i32.gt_u
                select
                local.tee $l5
                i32.const 536870911
                i32.and
                local.get $l5
                i32.eq
                i32.const 2
                i32.shl
                local.set $l6
                local.get $l5
                i32.const 3
                i32.shl
                local.set $l5
                block $B9
                  block $B10
                    local.get $l4
                    i32.eqz
                    br_if $B10
                    local.get $p0
                    i32.load
                    local.set $l7
                    local.get $l2
                    i32.const 80
                    i32.add
                    i32.const 4
                    i32.store
                    local.get $l2
                    local.get $l4
                    i32.const 3
                    i32.shl
                    i32.store offset=76
                    local.get $l2
                    local.get $l7
                    i32.store offset=72
                    br $B9
                  end
                  local.get $l2
                  i32.const 0
                  i32.store offset=72
                end
                local.get $l2
                i32.const 40
                i32.add
                local.get $l5
                local.get $l6
                local.get $l2
                i32.const 72
                i32.add
                call $_ZN5alloc7raw_vec11finish_grow17h684e32ad59c880d2E
                local.get $l2
                i32.const 48
                i32.add
                i32.load
                local.set $l4
                local.get $l2
                i32.load offset=44
                local.set $l5
                block $B11
                  local.get $l2
                  i32.load offset=40
                  i32.const 1
                  i32.eq
                  br_if $B11
                  local.get $p0
                  local.get $l5
                  i32.store
                  local.get $p0
                  i32.const 4
                  i32.add
                  local.get $l4
                  i32.const 3
                  i32.shr_u
                  i32.store
                  local.get $p0
                  i32.load offset=8
                  local.set $l4
                  br $B1
                end
                local.get $l4
                i32.eqz
                br_if $B2
                local.get $l5
                local.get $l4
                call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
                unreachable
              end
              i32.const 1049048
              i32.const 43
              i32.const 1050132
              call $_ZN4core9panicking5panic17h8e74859c8f9988caE
              unreachable
            end
            local.get $l2
            i32.const 40
            i32.add
            i32.const 20
            i32.add
            i32.const 5
            i32.store
            local.get $l2
            i32.const 52
            i32.add
            i32.const 6
            i32.store
            local.get $l2
            i32.const 16
            i32.add
            i32.const 20
            i32.add
            i32.const 3
            i32.store
            local.get $l2
            local.get $l2
            i32.const 15
            i32.add
            i32.store offset=64
            local.get $l2
            i32.const 1049440
            i32.store offset=68
            local.get $l2
            i32.const 72
            i32.add
            i32.const 20
            i32.add
            i32.const 0
            i32.store
            local.get $l2
            i64.const 3
            i64.store offset=20 align=4
            local.get $l2
            i32.const 1050912
            i32.store offset=16
            local.get $l2
            i32.const 6
            i32.store offset=44
            local.get $l2
            i32.const 1048780
            i32.store offset=88
            local.get $l2
            i64.const 1
            i64.store offset=76 align=4
            local.get $l2
            i32.const 1051196
            i32.store offset=72
            local.get $l2
            local.get $l2
            i32.const 40
            i32.add
            i32.store offset=32
            local.get $l2
            local.get $l2
            i32.const 72
            i32.add
            i32.store offset=56
            local.get $l2
            local.get $l2
            i32.const 68
            i32.add
            i32.store offset=48
            local.get $l2
            local.get $l2
            i32.const 64
            i32.add
            i32.store offset=40
            local.get $l2
            i32.const 16
            i32.add
            i32.const 1051252
            call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
            unreachable
          end
          i32.const 12
          i32.const 4
          call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
          unreachable
        end
        call $_ZN5alloc7raw_vec17capacity_overflow17hfd481cf132d45bc8E
        unreachable
      end
      local.get $l5
      local.get $l4
      i32.const 3
      i32.shl
      i32.add
      local.tee $l4
      i32.const 1050612
      i32.store offset=4
      local.get $l4
      i32.const 1
      i32.store
      local.get $p0
      local.get $p0
      i32.load offset=8
      i32.const 1
      i32.add
      i32.store offset=8
    end
    i32.const 0
    i32.const 0
    i32.store8 offset=1055338
    block $B12
      i32.const 1024
      i32.const 1
      call $__rust_alloc
      local.tee $l4
      i32.eqz
      br_if $B12
      local.get $l3
      i32.load
      local.tee $p0
      i32.const 1
      i32.store16 offset=16
      local.get $p0
      i64.const 1024
      i64.store offset=8 align=4
      local.get $p0
      local.get $l4
      i32.store offset=4
      local.get $p0
      i32.const 0
      i32.store
      local.get $l2
      i32.const 96
      i32.add
      global.set $g0
      return
    end
    i32.const 1024
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
    unreachable)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcf8854751614c1e7E (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=12
    local.get $l2
    i32.const 12
    i32.add
    local.get $p1
    call $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17hd096e490552fba44E
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0)
  (func $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17hd096e490552fba44E (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.tee $p0
    i32.load8_u
    local.set $l3
    local.get $p0
    i32.const 0
    i32.store8
    block $B0
      local.get $l3
      i32.const 1
      i32.and
      i32.eqz
      br_if $B0
      i32.const 1
      local.set $l4
      loop $L1
        i32.const 0
        i32.load8_u offset=1055338
        local.set $p0
        i32.const 0
        i32.const 1
        i32.store8 offset=1055338
        local.get $l2
        local.get $p0
        i32.store8 offset=15
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $p0
                br_if $B5
                i32.const 0
                i32.load offset=1054824
                local.set $l5
                i32.const 0
                local.get $l4
                i32.const 10
                i32.eq
                i32.store offset=1054824
                i32.const 0
                i32.const 0
                i32.store8 offset=1055338
                block $B6
                  block $B7
                    local.get $l5
                    br_table $B2 $B7 $B6
                  end
                  i32.const 1050320
                  i32.const 31
                  i32.const 1050392
                  call $_ZN4core9panicking5panic17h8e74859c8f9988caE
                  unreachable
                end
                local.get $l5
                i32.load
                local.tee $l6
                local.get $l5
                i32.load offset=8
                local.tee $l3
                i32.const 3
                i32.shl
                i32.add
                local.set $l7
                local.get $l5
                i32.load offset=4
                local.set $l8
                local.get $l6
                local.set $p0
                local.get $l3
                i32.eqz
                br_if $B4
                local.get $l6
                local.set $p0
                loop $L8
                  block $B9
                    local.get $p0
                    i32.load
                    local.tee $l3
                    br_if $B9
                    local.get $p0
                    i32.const 8
                    i32.add
                    local.set $p0
                    br $B4
                  end
                  local.get $l3
                  local.get $p0
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee $l9
                  i32.load offset=12
                  call_indirect (type $t1) $T0
                  block $B10
                    local.get $l9
                    i32.load offset=4
                    local.tee $l10
                    i32.eqz
                    br_if $B10
                    local.get $l3
                    local.get $l10
                    local.get $l9
                    i32.load offset=8
                    call $__rust_dealloc
                  end
                  local.get $p0
                  i32.const 8
                  i32.add
                  local.tee $p0
                  local.get $l7
                  i32.ne
                  br_if $L8
                  br $B3
                end
              end
              local.get $l2
              i32.const 40
              i32.add
              i32.const 20
              i32.add
              i32.const 5
              i32.store
              local.get $l2
              i32.const 52
              i32.add
              i32.const 6
              i32.store
              local.get $l2
              i32.const 16
              i32.add
              i32.const 20
              i32.add
              i32.const 3
              i32.store
              local.get $l2
              local.get $l2
              i32.const 15
              i32.add
              i32.store offset=64
              local.get $l2
              i32.const 1049440
              i32.store offset=68
              local.get $l2
              i32.const 72
              i32.add
              i32.const 20
              i32.add
              i32.const 0
              i32.store
              local.get $l2
              i64.const 3
              i64.store offset=20 align=4
              local.get $l2
              i32.const 1050912
              i32.store offset=16
              local.get $l2
              i32.const 6
              i32.store offset=44
              local.get $l2
              i32.const 1048780
              i32.store offset=88
              local.get $l2
              i64.const 1
              i64.store offset=76 align=4
              local.get $l2
              i32.const 1051196
              i32.store offset=72
              local.get $l2
              local.get $l2
              i32.const 40
              i32.add
              i32.store offset=32
              local.get $l2
              local.get $l2
              i32.const 72
              i32.add
              i32.store offset=56
              local.get $l2
              local.get $l2
              i32.const 68
              i32.add
              i32.store offset=48
              local.get $l2
              local.get $l2
              i32.const 64
              i32.add
              i32.store offset=40
              local.get $l2
              i32.const 16
              i32.add
              i32.const 1051252
              call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
              unreachable
            end
            local.get $l7
            local.get $p0
            i32.eq
            br_if $B3
            loop $L11
              local.get $p0
              i32.load
              local.get $p0
              i32.const 4
              i32.add
              local.tee $l3
              i32.load
              i32.load
              call_indirect (type $t1) $T0
              block $B12
                local.get $l3
                i32.load
                local.tee $l3
                i32.load offset=4
                local.tee $l9
                i32.eqz
                br_if $B12
                local.get $p0
                i32.load
                local.get $l9
                local.get $l3
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get $p0
              i32.const 8
              i32.add
              local.tee $p0
              local.get $l7
              i32.ne
              br_if $L11
            end
          end
          block $B13
            local.get $l8
            i32.eqz
            br_if $B13
            local.get $l8
            i32.const 3
            i32.shl
            local.tee $p0
            i32.eqz
            br_if $B13
            local.get $l6
            local.get $p0
            i32.const 4
            call $__rust_dealloc
          end
          local.get $l5
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        local.get $l4
        i32.const 9
        i32.gt_u
        local.set $p0
        local.get $l4
        i32.const 1
        i32.add
        i32.const 10
        local.get $l4
        i32.const 10
        i32.lt_u
        select
        local.tee $l3
        local.set $l4
        local.get $l3
        i32.const 11
        i32.lt_u
        local.get $p0
        i32.const 1
        i32.xor
        i32.and
        br_if $L1
      end
      local.get $l2
      i32.const 96
      i32.add
      global.set $g0
      return
    end
    i32.const 1049048
    i32.const 43
    i32.const 1050096
    call $_ZN4core9panicking5panic17h8e74859c8f9988caE
    unreachable)
  (func $_ZN4core3ptr13drop_in_place17h048b5e3abdc16383E (type $t1) (param $p0 i32))
  (func $_ZN4core3ptr13drop_in_place17h091a79c5c0c7dc5dE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    block $B0
      block $B1
        i32.const 0
        br_if $B1
        local.get $p0
        i32.load8_u offset=4
        i32.const 2
        i32.ne
        br_if $B0
      end
      local.get $p0
      i32.const 8
      i32.add
      i32.load
      local.tee $l1
      i32.load
      local.get $l1
      i32.load offset=4
      i32.load
      call_indirect (type $t1) $T0
      block $B2
        local.get $l1
        i32.load offset=4
        local.tee $l2
        i32.load offset=4
        local.tee $l3
        i32.eqz
        br_if $B2
        local.get $l1
        i32.load
        local.get $l3
        local.get $l2
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get $p0
      i32.load offset=8
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN3std9panicking11panic_count17is_zero_slow_path17hc46895f918293b52E (type $t6) (result i32)
    block $B0
      i32.const 0
      i32.load offset=1055328
      i32.const 1
      i32.ne
      br_if $B0
      i32.const 0
      i32.load offset=1055332
      i32.eqz
      return
    end
    i32.const 0
    i64.const 1
    i64.store offset=1055328
    i32.const 1)
  (func $_ZN4core3ptr13drop_in_place17h1f40655422319526E (type $t1) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load8_u offset=4
      br_if $B0
      i32.const 0
      i32.load offset=1054848
      i32.eqz
      br_if $B0
      local.get $p0
      i32.load
      local.set $l1
      call $_ZN3std9panicking11panic_count17is_zero_slow_path17hc46895f918293b52E
      br_if $B0
      local.get $l1
      i32.const 1
      i32.store8 offset=1
    end
    local.get $p0
    i32.load
    i32.const 0
    i32.store8)
  (func $_ZN4core3ptr13drop_in_place17h4b533a0374418de7E (type $t1) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $p0
      i32.const 4
      i32.add
      i32.load
      local.tee $p0
      i32.eqz
      br_if $B0
      local.get $l1
      local.get $p0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr13drop_in_place17h8d1571f79390c810E (type $t1) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $p0
      i32.const 8
      i32.add
      i32.load
      local.tee $p0
      i32.eqz
      br_if $B0
      local.get $l1
      local.get $p0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr13drop_in_place17hf96175c0cde0b7f8E (type $t1) (param $p0 i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l1
      i32.eqz
      br_if $B0
      local.get $p0
      i32.const 8
      i32.add
      i32.load
      local.tee $p0
      i32.eqz
      br_if $B0
      local.get $l1
      local.get $p0
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17h8d3acfec673f4aefE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    block $B0
      local.get $p0
      br_if $B0
      i32.const 1049048
      i32.const 43
      local.get $p1
      call $_ZN4core9panicking5panic17h8e74859c8f9988caE
      unreachable
    end
    local.get $p0)
  (func $_ZN4core6option15Option$LT$T$GT$6unwrap17hc1570540b608140fE (type $t4) (param $p0 i32) (result i32)
    block $B0
      local.get $p0
      br_if $B0
      i32.const 1049048
      i32.const 43
      i32.const 1050672
      call $_ZN4core9panicking5panic17h8e74859c8f9988caE
      unreachable
    end
    local.get $p0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h62f6de824ad3367bE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    call $_ZN4core3fmt5Write10write_char17h3080bb939e6765f7E)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8dbc9aa948a0e144E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $p0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $p1
                i32.const 128
                i32.lt_u
                br_if $B5
                local.get $l2
                i32.const 0
                i32.store offset=16
                local.get $p1
                i32.const 2048
                i32.lt_u
                br_if $B4
                local.get $l2
                i32.const 16
                i32.add
                local.set $l3
                block $B6
                  local.get $p1
                  i32.const 65536
                  i32.ge_u
                  br_if $B6
                  local.get $l2
                  local.get $p1
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=18
                  local.get $l2
                  local.get $p1
                  i32.const 12
                  i32.shr_u
                  i32.const 224
                  i32.or
                  i32.store8 offset=16
                  local.get $l2
                  local.get $p1
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=17
                  i32.const 3
                  local.set $p1
                  br $B1
                end
                local.get $l2
                local.get $p1
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=19
                local.get $l2
                local.get $p1
                i32.const 18
                i32.shr_u
                i32.const 240
                i32.or
                i32.store8 offset=16
                local.get $l2
                local.get $p1
                i32.const 6
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=18
                local.get $l2
                local.get $p1
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.const 128
                i32.or
                i32.store8 offset=17
                i32.const 4
                local.set $p1
                br $B1
              end
              block $B7
                local.get $p0
                i32.load offset=8
                local.tee $l3
                local.get $p0
                i32.const 4
                i32.add
                i32.load
                i32.eq
                br_if $B7
                local.get $p0
                i32.load
                local.set $l4
                br $B2
              end
              local.get $l3
              i32.const 1
              i32.add
              local.tee $l4
              local.get $l3
              i32.lt_u
              br_if $B3
              local.get $l3
              i32.const 1
              i32.shl
              local.tee $l5
              local.get $l4
              local.get $l5
              local.get $l4
              i32.gt_u
              select
              local.tee $l4
              i32.const 8
              local.get $l4
              i32.const 8
              i32.gt_u
              select
              local.set $l4
              block $B8
                block $B9
                  local.get $l3
                  i32.eqz
                  br_if $B9
                  local.get $l2
                  i32.const 16
                  i32.add
                  i32.const 8
                  i32.add
                  i32.const 1
                  i32.store
                  local.get $l2
                  local.get $l3
                  i32.store offset=20
                  local.get $l2
                  local.get $p0
                  i32.load
                  i32.store offset=16
                  br $B8
                end
                local.get $l2
                i32.const 0
                i32.store offset=16
              end
              local.get $l2
              local.get $l4
              i32.const 1
              local.get $l2
              i32.const 16
              i32.add
              call $_ZN5alloc7raw_vec11finish_grow17h684e32ad59c880d2E
              local.get $l2
              i32.const 8
              i32.add
              i32.load
              local.set $l3
              local.get $l2
              i32.load offset=4
              local.set $l4
              block $B10
                local.get $l2
                i32.load
                i32.const 1
                i32.eq
                br_if $B10
                local.get $p0
                local.get $l4
                i32.store
                local.get $p0
                i32.const 4
                i32.add
                local.get $l3
                i32.store
                local.get $p0
                i32.load offset=8
                local.set $l3
                br $B2
              end
              local.get $l3
              i32.eqz
              br_if $B3
              local.get $l4
              local.get $l3
              call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
              unreachable
            end
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=17
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8 offset=16
            local.get $l2
            i32.const 16
            i32.add
            local.set $l3
            i32.const 2
            local.set $p1
            br $B1
          end
          call $_ZN5alloc7raw_vec17capacity_overflow17hfd481cf132d45bc8E
          unreachable
        end
        local.get $l4
        local.get $l3
        i32.add
        local.get $p1
        i32.store8
        local.get $p0
        local.get $p0
        i32.load offset=8
        i32.const 1
        i32.add
        i32.store offset=8
        br $B0
      end
      local.get $p0
      local.get $l3
      local.get $l3
      local.get $p1
      i32.add
      call $_ZN119_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc311003eb08d80adE
    end
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hc51306909f33c414E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $l3
    local.get $l2
    i32.const 0
    i32.store offset=12
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p1
            i32.const 128
            i32.lt_u
            br_if $B3
            local.get $p1
            i32.const 2048
            i32.lt_u
            br_if $B2
            local.get $l2
            i32.const 12
            i32.add
            local.set $p0
            local.get $p1
            i32.const 65536
            i32.ge_u
            br_if $B1
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set $p1
            br $B0
          end
          local.get $l2
          local.get $p1
          i32.store8 offset=12
          local.get $l2
          i32.const 12
          i32.add
          local.set $p0
          i32.const 1
          local.set $p1
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get $l2
        local.get $p1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        local.get $l2
        i32.const 12
        i32.add
        local.set $p0
        i32.const 2
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get $l2
      local.get $p1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get $l2
      local.get $p1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get $l2
      local.get $p1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set $p1
    end
    local.get $l3
    i32.load
    local.get $p0
    local.get $p0
    local.get $p1
    i32.add
    call $_ZN119_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc311003eb08d80adE
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h1548d2104ad03c57E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1048716
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hb43130e8617dcddeE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1048740
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he3d8419f874b7ae6E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1048692
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h5efd725e3db8a76cE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i64) (local $l5 i32)
    i32.const 0
    local.set $l3
    block $B0
      local.get $p0
      i32.load
      local.tee $p0
      i32.load
      local.get $p1
      local.get $p2
      call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h5db416053b1560e7E
      local.tee $l4
      i32.wrap_i64
      local.tee $p1
      i32.const 255
      i32.and
      i32.const 3
      i32.eq
      br_if $B0
      local.get $l4
      i64.const 8
      i64.shr_u
      local.set $l4
      block $B1
        block $B2
          i32.const 0
          br_if $B2
          local.get $p0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if $B1
        end
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $l3
        i32.load
        local.get $l3
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B3
          local.get $l3
          i32.load offset=4
          local.tee $p2
          i32.load offset=4
          local.tee $l5
          i32.eqz
          br_if $B3
          local.get $l3
          i32.load
          local.get $l5
          local.get $p2
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p0
      local.get $p1
      i32.store8 offset=4
      local.get $p0
      i32.const 11
      i32.add
      local.get $l4
      i64.const 48
      i64.shr_u
      i64.store8
      local.get $p0
      i32.const 9
      i32.add
      local.get $l4
      i64.const 32
      i64.shr_u
      i64.store16 align=1
      local.get $p0
      i32.const 5
      i32.add
      local.get $l4
      i64.store32 align=1
      i32.const 1
      local.set $l3
    end
    local.get $l3)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h5f8ccbea4ea1f91cE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.load
    i32.load
    local.get $p1
    local.get $p1
    local.get $p2
    i32.add
    call $_ZN119_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc311003eb08d80adE
    i32.const 0)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha137423ab39c4222E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p1
    local.get $p2
    i32.add
    call $_ZN119_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc311003eb08d80adE
    i32.const 0)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h10390f6f2a161d8eE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    block $B0
      local.get $p0
      i32.load
      local.tee $l1
      i32.load offset=12
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $l1
      i32.const 16
      i32.add
      i32.load
      local.tee $l3
      i32.eqz
      br_if $B0
      local.get $l2
      local.get $l3
      i32.const 1
      call $__rust_dealloc
      local.get $p0
      i32.load
      local.set $l1
    end
    block $B1
      local.get $l1
      i32.const -1
      i32.eq
      br_if $B1
      local.get $l1
      local.get $l1
      i32.load offset=4
      local.tee $p0
      i32.const -1
      i32.add
      i32.store offset=4
      local.get $p0
      i32.const 1
      i32.ne
      br_if $B1
      local.get $l1
      i32.const 24
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hec1f1c349e161980E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32)
    block $B0
      local.get $p0
      i32.load
      local.tee $l1
      i32.load offset=16
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $l2
      i32.const 0
      i32.store8
      block $B1
        local.get $l1
        i32.const 20
        i32.add
        i32.load
        local.tee $l2
        i32.eqz
        br_if $B1
        local.get $l1
        i32.load offset=16
        local.get $l2
        i32.const 1
        call $__rust_dealloc
      end
      local.get $p0
      i32.load
      local.set $l1
    end
    block $B2
      local.get $l1
      i32.const -1
      i32.eq
      br_if $B2
      local.get $l1
      local.get $l1
      i32.load offset=4
      local.tee $p0
      i32.const -1
      i32.add
      i32.store offset=4
      local.get $p0
      i32.const 1
      i32.ne
      br_if $B2
      local.get $l1
      i32.const 32
      i32.const 8
      call $__rust_dealloc
    end)
  (func $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17hfffd727e6ccfd577E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=8
    local.get $p1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h0c505ead2e56acc7E)
  (func $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h7e46d7a6b7d95ef5E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    block $B0
      block $B1
        local.get $p1
        i32.const 9
        i32.lt_u
        br_if $B1
        block $B2
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.get $p1
          i32.le_u
          br_if $B2
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $p1
        end
        i32.const 0
        local.set $l2
        i32.const 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
        local.set $l3
        local.get $l3
        local.get $l3
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        i32.sub
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        i32.sub
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        i32.sub
        i32.const -65544
        i32.add
        i32.const -9
        i32.and
        i32.const -3
        i32.add
        local.tee $l3
        i32.const 0
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        i32.const 2
        i32.shl
        i32.sub
        local.tee $l4
        local.get $l3
        local.get $l4
        i32.lt_u
        select
        local.get $p1
        i32.sub
        local.get $p0
        i32.le_u
        br_if $B0
        local.get $p1
        i32.const 16
        local.get $p0
        i32.const 4
        i32.add
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        i32.const -5
        i32.add
        local.get $p0
        i32.gt_u
        select
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.tee $l4
        i32.add
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        i32.add
        i32.const -4
        i32.add
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h7ab0b040e29210e9E
        local.tee $l3
        i32.eqz
        br_if $B0
        local.get $l3
        call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h0a47b93129983de6E
        local.set $p0
        block $B3
          block $B4
            local.get $p1
            i32.const -1
            i32.add
            local.tee $l2
            local.get $l3
            i32.and
            br_if $B4
            local.get $p0
            local.set $p1
            br $B3
          end
          local.get $l2
          local.get $l3
          i32.add
          i32.const 0
          local.get $p1
          i32.sub
          i32.and
          call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h0a47b93129983de6E
          local.set $l2
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l3
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
          local.get $l2
          local.get $l2
          local.get $p1
          i32.add
          local.get $l2
          local.get $p0
          i32.sub
          local.get $l3
          i32.gt_u
          select
          local.tee $p1
          local.get $p0
          i32.sub
          local.tee $l2
          i32.sub
          local.set $l3
          block $B5
            local.get $p0
            call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17hdf27da0aa80094a5E
            br_if $B5
            local.get $p1
            local.get $l3
            call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
            local.get $p0
            local.get $l2
            call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
            local.get $p0
            local.get $l2
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h2d2ef18898d7852eE
            br $B3
          end
          local.get $p0
          i32.load
          local.set $p0
          local.get $p1
          local.get $l3
          i32.store offset=4
          local.get $p1
          local.get $p0
          local.get $l2
          i32.add
          i32.store
        end
        block $B6
          local.get $p1
          call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17hdf27da0aa80094a5E
          br_if $B6
          local.get $p1
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
          local.tee $p0
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.get $l4
          i32.add
          i32.le_u
          br_if $B6
          local.get $p1
          local.get $l4
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
          local.set $l2
          local.get $p1
          local.get $l4
          call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
          local.get $l2
          local.get $p0
          local.get $l4
          i32.sub
          local.tee $p0
          call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
          local.get $l2
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h2d2ef18898d7852eE
        end
        local.get $p1
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
        local.set $p0
        local.get $p1
        call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17hdf27da0aa80094a5E
        drop
        local.get $p0
        return
      end
      local.get $p0
      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h7ab0b040e29210e9E
      local.set $l2
    end
    local.get $l2)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h7ab0b040e29210e9E (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i64)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p0
          i32.const 245
          i32.lt_u
          br_if $B2
          i32.const 0
          local.set $l2
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
          local.set $l3
          local.get $l3
          local.get $l3
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          i32.sub
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          i32.sub
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          i32.sub
          i32.const -65544
          i32.add
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee $l3
          i32.const 0
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          i32.const 2
          i32.shl
          i32.sub
          local.tee $l4
          local.get $l3
          local.get $l4
          i32.lt_u
          select
          local.get $p0
          i32.le_u
          br_if $B0
          local.get $p0
          i32.const 4
          i32.add
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l3
          i32.const 0
          i32.load offset=1054880
          i32.eqz
          br_if $B1
          i32.const 0
          local.set $l5
          block $B3
            local.get $l3
            i32.const 8
            i32.shr_u
            local.tee $p0
            i32.eqz
            br_if $B3
            i32.const 31
            local.set $l5
            local.get $l3
            i32.const 16777215
            i32.gt_u
            br_if $B3
            local.get $l3
            i32.const 6
            local.get $p0
            i32.clz
            local.tee $p0
            i32.sub
            i32.const 31
            i32.and
            i32.shr_u
            i32.const 1
            i32.and
            local.get $p0
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set $l5
          end
          i32.const 0
          local.get $l3
          i32.sub
          local.set $l2
          block $B4
            block $B5
              block $B6
                local.get $l5
                i32.const 2
                i32.shl
                i32.const 1055148
                i32.add
                i32.load
                local.tee $p0
                i32.eqz
                br_if $B6
                local.get $l3
                local.get $l5
                call $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h9b4329b924da3806E
                i32.const 31
                i32.and
                i32.shl
                local.set $l6
                i32.const 0
                local.set $l7
                i32.const 0
                local.set $l4
                loop $L7
                  block $B8
                    local.get $p0
                    call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
                    call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
                    local.tee $l8
                    local.get $l3
                    i32.lt_u
                    br_if $B8
                    local.get $l8
                    local.get $l3
                    i32.sub
                    local.tee $l8
                    local.get $l2
                    i32.ge_u
                    br_if $B8
                    local.get $l8
                    local.set $l2
                    local.get $p0
                    local.set $l4
                    local.get $l8
                    br_if $B8
                    i32.const 0
                    local.set $l2
                    local.get $p0
                    local.set $l4
                    br $B5
                  end
                  local.get $p0
                  i32.const 20
                  i32.add
                  i32.load
                  local.tee $l8
                  local.get $l7
                  local.get $l8
                  local.get $p0
                  local.get $l6
                  i32.const 29
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.add
                  i32.const 16
                  i32.add
                  i32.load
                  local.tee $p0
                  i32.ne
                  select
                  local.get $l7
                  local.get $l8
                  select
                  local.set $l7
                  local.get $l6
                  i32.const 1
                  i32.shl
                  local.set $l6
                  local.get $p0
                  br_if $L7
                end
                block $B9
                  local.get $l7
                  i32.eqz
                  br_if $B9
                  local.get $l7
                  local.set $p0
                  br $B5
                end
                local.get $l4
                br_if $B4
              end
              i32.const 0
              local.set $l4
              i32.const 1
              local.get $l5
              i32.const 31
              i32.and
              i32.shl
              call $_ZN8dlmalloc8dlmalloc9left_bits17hf3af6a3cf27f52baE
              i32.const 0
              i32.load offset=1054880
              i32.and
              local.tee $p0
              i32.eqz
              br_if $B1
              local.get $p0
              call $_ZN8dlmalloc8dlmalloc9least_bit17hb51608d101ddd310E
              i32.ctz
              i32.const 2
              i32.shl
              i32.const 1055148
              i32.add
              i32.load
              local.tee $p0
              i32.eqz
              br_if $B1
            end
            loop $L10
              local.get $p0
              local.get $l4
              local.get $p0
              call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
              call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
              local.tee $l7
              local.get $l3
              i32.ge_u
              local.get $l7
              local.get $l3
              i32.sub
              local.tee $l7
              local.get $l2
              i32.lt_u
              i32.and
              local.tee $l6
              select
              local.set $l4
              local.get $l7
              local.get $l2
              local.get $l6
              select
              local.set $l2
              local.get $p0
              call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hee9e748f74add279E
              local.tee $p0
              br_if $L10
            end
            local.get $l4
            i32.eqz
            br_if $B1
          end
          block $B11
            i32.const 0
            i32.load offset=1055276
            local.tee $p0
            local.get $l3
            i32.lt_u
            br_if $B11
            local.get $l2
            local.get $p0
            local.get $l3
            i32.sub
            i32.ge_u
            br_if $B1
          end
          local.get $l4
          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
          local.tee $p0
          local.get $l3
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
          local.set $l7
          local.get $l4
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h3bb903924552643eE
          block $B12
            block $B13
              local.get $l2
              i32.const 16
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
              i32.lt_u
              br_if $B13
              local.get $p0
              local.get $l3
              call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h257f0d39ed5602e1E
              local.get $l7
              local.get $l2
              call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E
              block $B14
                local.get $l2
                i32.const 256
                i32.lt_u
                br_if $B14
                local.get $l7
                local.get $l2
                call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7863e6ad3ce1f364E
                br $B12
              end
              local.get $l2
              i32.const 3
              i32.shr_u
              local.tee $l4
              i32.const 3
              i32.shl
              i32.const 1054884
              i32.add
              local.set $l2
              block $B15
                block $B16
                  i32.const 0
                  i32.load offset=1054876
                  local.tee $l6
                  i32.const 1
                  local.get $l4
                  i32.shl
                  local.tee $l4
                  i32.and
                  i32.eqz
                  br_if $B16
                  local.get $l2
                  i32.load offset=8
                  local.set $l4
                  br $B15
                end
                i32.const 0
                local.get $l6
                local.get $l4
                i32.or
                i32.store offset=1054876
                local.get $l2
                local.set $l4
              end
              local.get $l2
              local.get $l7
              i32.store offset=8
              local.get $l4
              local.get $l7
              i32.store offset=12
              local.get $l7
              local.get $l2
              i32.store offset=12
              local.get $l7
              local.get $l4
              i32.store offset=8
              br $B12
            end
            local.get $p0
            local.get $l2
            local.get $l3
            i32.add
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17hbd5ca068f6a65247E
          end
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
          local.tee $l2
          br_if $B0
          br $B1
        end
        i32.const 16
        local.get $p0
        i32.const 4
        i32.add
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        i32.const -5
        i32.add
        local.get $p0
        i32.gt_u
        select
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.set $l3
        block $B17
          block $B18
            block $B19
              block $B20
                block $B21
                  block $B22
                    block $B23
                      i32.const 0
                      i32.load offset=1054876
                      local.tee $l7
                      local.get $l3
                      i32.const 3
                      i32.shr_u
                      local.tee $l2
                      i32.const 31
                      i32.and
                      local.tee $l4
                      i32.shr_u
                      local.tee $p0
                      i32.const 3
                      i32.and
                      br_if $B23
                      local.get $l3
                      i32.const 0
                      i32.load offset=1055276
                      i32.le_u
                      br_if $B1
                      local.get $p0
                      br_if $B22
                      i32.const 0
                      i32.load offset=1054880
                      local.tee $p0
                      i32.eqz
                      br_if $B1
                      local.get $p0
                      call $_ZN8dlmalloc8dlmalloc9least_bit17hb51608d101ddd310E
                      i32.ctz
                      i32.const 2
                      i32.shl
                      i32.const 1055148
                      i32.add
                      i32.load
                      local.tee $l4
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
                      call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
                      local.get $l3
                      i32.sub
                      local.set $l2
                      block $B24
                        local.get $l4
                        call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hee9e748f74add279E
                        local.tee $p0
                        i32.eqz
                        br_if $B24
                        loop $L25
                          local.get $p0
                          call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
                          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
                          local.get $l3
                          i32.sub
                          local.tee $l7
                          local.get $l2
                          local.get $l7
                          local.get $l2
                          i32.lt_u
                          local.tee $l7
                          select
                          local.set $l2
                          local.get $p0
                          local.get $l4
                          local.get $l7
                          select
                          local.set $l4
                          local.get $p0
                          call $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hee9e748f74add279E
                          local.tee $p0
                          br_if $L25
                        end
                      end
                      local.get $l4
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
                      local.tee $p0
                      local.get $l3
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                      local.set $l7
                      local.get $l4
                      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h3bb903924552643eE
                      local.get $l2
                      i32.const 16
                      i32.const 8
                      call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
                      i32.lt_u
                      br_if $B18
                      local.get $l7
                      call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
                      local.set $l7
                      local.get $p0
                      local.get $l3
                      call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h257f0d39ed5602e1E
                      local.get $l7
                      local.get $l2
                      call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E
                      i32.const 0
                      i32.load offset=1055276
                      local.tee $l4
                      i32.eqz
                      br_if $B19
                      local.get $l4
                      i32.const 3
                      i32.shr_u
                      local.tee $l8
                      i32.const 3
                      i32.shl
                      i32.const 1054884
                      i32.add
                      local.set $l6
                      i32.const 0
                      i32.load offset=1055284
                      local.set $l4
                      i32.const 0
                      i32.load offset=1054876
                      local.tee $l5
                      i32.const 1
                      local.get $l8
                      i32.const 31
                      i32.and
                      i32.shl
                      local.tee $l8
                      i32.and
                      i32.eqz
                      br_if $B21
                      local.get $l6
                      i32.load offset=8
                      local.set $l8
                      br $B20
                    end
                    block $B26
                      block $B27
                        local.get $p0
                        i32.const -1
                        i32.xor
                        i32.const 1
                        i32.and
                        local.get $l2
                        i32.add
                        local.tee $l3
                        i32.const 3
                        i32.shl
                        local.tee $l4
                        i32.const 1054892
                        i32.add
                        i32.load
                        local.tee $p0
                        i32.const 8
                        i32.add
                        i32.load
                        local.tee $l2
                        local.get $l4
                        i32.const 1054884
                        i32.add
                        local.tee $l4
                        i32.eq
                        br_if $B27
                        local.get $l2
                        local.get $l4
                        i32.store offset=12
                        local.get $l4
                        local.get $l2
                        i32.store offset=8
                        br $B26
                      end
                      i32.const 0
                      local.get $l7
                      i32.const -2
                      local.get $l3
                      i32.rotl
                      i32.and
                      i32.store offset=1054876
                    end
                    local.get $p0
                    local.get $l3
                    i32.const 3
                    i32.shl
                    call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17hbd5ca068f6a65247E
                    local.get $p0
                    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
                    local.set $l2
                    br $B0
                  end
                  block $B28
                    block $B29
                      i32.const 1
                      local.get $l4
                      i32.shl
                      call $_ZN8dlmalloc8dlmalloc9left_bits17hf3af6a3cf27f52baE
                      local.get $p0
                      local.get $l4
                      i32.shl
                      i32.and
                      call $_ZN8dlmalloc8dlmalloc9least_bit17hb51608d101ddd310E
                      i32.ctz
                      local.tee $l2
                      i32.const 3
                      i32.shl
                      local.tee $l7
                      i32.const 1054892
                      i32.add
                      i32.load
                      local.tee $p0
                      i32.const 8
                      i32.add
                      i32.load
                      local.tee $l4
                      local.get $l7
                      i32.const 1054884
                      i32.add
                      local.tee $l7
                      i32.eq
                      br_if $B29
                      local.get $l4
                      local.get $l7
                      i32.store offset=12
                      local.get $l7
                      local.get $l4
                      i32.store offset=8
                      br $B28
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1054876
                    i32.const -2
                    local.get $l2
                    i32.rotl
                    i32.and
                    i32.store offset=1054876
                  end
                  local.get $p0
                  local.get $l3
                  call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h257f0d39ed5602e1E
                  local.get $p0
                  local.get $l3
                  call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                  local.tee $l4
                  local.get $l2
                  i32.const 3
                  i32.shl
                  local.get $l3
                  i32.sub
                  local.tee $l7
                  call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E
                  block $B30
                    i32.const 0
                    i32.load offset=1055276
                    local.tee $l3
                    i32.eqz
                    br_if $B30
                    local.get $l3
                    i32.const 3
                    i32.shr_u
                    local.tee $l6
                    i32.const 3
                    i32.shl
                    i32.const 1054884
                    i32.add
                    local.set $l2
                    i32.const 0
                    i32.load offset=1055284
                    local.set $l3
                    block $B31
                      block $B32
                        i32.const 0
                        i32.load offset=1054876
                        local.tee $l8
                        i32.const 1
                        local.get $l6
                        i32.const 31
                        i32.and
                        i32.shl
                        local.tee $l6
                        i32.and
                        i32.eqz
                        br_if $B32
                        local.get $l2
                        i32.load offset=8
                        local.set $l6
                        br $B31
                      end
                      i32.const 0
                      local.get $l8
                      local.get $l6
                      i32.or
                      i32.store offset=1054876
                      local.get $l2
                      local.set $l6
                    end
                    local.get $l2
                    local.get $l3
                    i32.store offset=8
                    local.get $l6
                    local.get $l3
                    i32.store offset=12
                    local.get $l3
                    local.get $l2
                    i32.store offset=12
                    local.get $l3
                    local.get $l6
                    i32.store offset=8
                  end
                  i32.const 0
                  local.get $l4
                  i32.store offset=1055284
                  i32.const 0
                  local.get $l7
                  i32.store offset=1055276
                  local.get $p0
                  call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
                  local.set $l2
                  br $B0
                end
                i32.const 0
                local.get $l5
                local.get $l8
                i32.or
                i32.store offset=1054876
                local.get $l6
                local.set $l8
              end
              local.get $l6
              local.get $l4
              i32.store offset=8
              local.get $l8
              local.get $l4
              i32.store offset=12
              local.get $l4
              local.get $l6
              i32.store offset=12
              local.get $l4
              local.get $l8
              i32.store offset=8
            end
            i32.const 0
            local.get $l7
            i32.store offset=1055284
            i32.const 0
            local.get $l2
            i32.store offset=1055276
            br $B17
          end
          local.get $p0
          local.get $l2
          local.get $l3
          i32.add
          call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17hbd5ca068f6a65247E
        end
        local.get $p0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
        local.tee $l2
        br_if $B0
      end
      block $B33
        block $B34
          block $B35
            block $B36
              block $B37
                block $B38
                  i32.const 0
                  i32.load offset=1055276
                  local.tee $l2
                  local.get $l3
                  i32.ge_u
                  br_if $B38
                  i32.const 0
                  i32.load offset=1055280
                  local.tee $p0
                  local.get $l3
                  i32.gt_u
                  br_if $B35
                  i32.const 0
                  local.set $l2
                  local.get $l1
                  i32.const 1054876
                  local.get $l3
                  i32.const 0
                  call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
                  local.tee $p0
                  i32.sub
                  local.get $p0
                  i32.const 8
                  call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
                  i32.add
                  i32.const 20
                  i32.const 8
                  call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
                  i32.add
                  i32.const 16
                  i32.const 8
                  call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
                  i32.add
                  i32.const 8
                  i32.add
                  i32.const 65536
                  call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
                  call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5alloc17h398516a010cfe955E
                  local.get $l1
                  i32.load
                  local.tee $l6
                  i32.eqz
                  br_if $B0
                  local.get $l1
                  i32.load offset=8
                  local.set $l9
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055292
                  local.get $l1
                  i32.load offset=4
                  local.tee $l8
                  i32.add
                  local.tee $p0
                  i32.store offset=1055292
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055296
                  local.tee $l2
                  local.get $p0
                  local.get $l2
                  local.get $p0
                  i32.gt_u
                  select
                  i32.store offset=1055296
                  i32.const 0
                  i32.load offset=1055288
                  i32.eqz
                  br_if $B37
                  i32.const 1055300
                  local.set $p0
                  loop $L39
                    local.get $l6
                    local.get $p0
                    call $_ZN8dlmalloc8dlmalloc7Segment3top17h2e0a3d92a053d403E
                    i32.eq
                    br_if $B36
                    local.get $p0
                    i32.load offset=8
                    local.tee $p0
                    br_if $L39
                    br $B34
                  end
                end
                i32.const 0
                i32.load offset=1055284
                local.set $p0
                block $B40
                  local.get $l2
                  local.get $l3
                  i32.sub
                  local.tee $l2
                  i32.const 16
                  i32.const 8
                  call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
                  i32.ge_u
                  br_if $B40
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055284
                  i32.const 0
                  i32.load offset=1055276
                  local.set $l3
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055276
                  local.get $p0
                  local.get $l3
                  call $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17hbd5ca068f6a65247E
                  local.get $p0
                  call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
                  local.set $l2
                  br $B0
                end
                local.get $p0
                local.get $l3
                call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                local.set $l4
                i32.const 0
                local.get $l2
                i32.store offset=1055276
                i32.const 0
                local.get $l4
                i32.store offset=1055284
                local.get $l4
                local.get $l2
                call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E
                local.get $p0
                local.get $l3
                call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h257f0d39ed5602e1E
                local.get $p0
                call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
                local.set $l2
                br $B0
              end
              block $B41
                block $B42
                  i32.const 0
                  i32.load offset=1055320
                  local.tee $p0
                  i32.eqz
                  br_if $B42
                  local.get $l6
                  local.get $p0
                  i32.ge_u
                  br_if $B41
                end
                i32.const 0
                local.get $l6
                i32.store offset=1055320
              end
              i32.const 0
              i32.const 4095
              i32.store offset=1055324
              i32.const 0
              local.get $l9
              i32.store offset=1055312
              i32.const 0
              local.get $l8
              i32.store offset=1055304
              i32.const 0
              local.get $l6
              i32.store offset=1055300
              i32.const 0
              i32.const 1054884
              i32.store offset=1054896
              i32.const 0
              i32.const 1054892
              i32.store offset=1054904
              i32.const 0
              i32.const 1054884
              i32.store offset=1054892
              i32.const 0
              i32.const 1054900
              i32.store offset=1054912
              i32.const 0
              i32.const 1054892
              i32.store offset=1054900
              i32.const 0
              i32.const 1054908
              i32.store offset=1054920
              i32.const 0
              i32.const 1054900
              i32.store offset=1054908
              i32.const 0
              i32.const 1054916
              i32.store offset=1054928
              i32.const 0
              i32.const 1054908
              i32.store offset=1054916
              i32.const 0
              i32.const 1054924
              i32.store offset=1054936
              i32.const 0
              i32.const 1054916
              i32.store offset=1054924
              i32.const 0
              i32.const 1054932
              i32.store offset=1054944
              i32.const 0
              i32.const 1054924
              i32.store offset=1054932
              i32.const 0
              i32.const 1054940
              i32.store offset=1054952
              i32.const 0
              i32.const 1054932
              i32.store offset=1054940
              i32.const 0
              i32.const 1054948
              i32.store offset=1054960
              i32.const 0
              i32.const 1054940
              i32.store offset=1054948
              i32.const 0
              i32.const 1054948
              i32.store offset=1054956
              i32.const 0
              i32.const 1054956
              i32.store offset=1054968
              i32.const 0
              i32.const 1054956
              i32.store offset=1054964
              i32.const 0
              i32.const 1054964
              i32.store offset=1054976
              i32.const 0
              i32.const 1054964
              i32.store offset=1054972
              i32.const 0
              i32.const 1054972
              i32.store offset=1054984
              i32.const 0
              i32.const 1054972
              i32.store offset=1054980
              i32.const 0
              i32.const 1054980
              i32.store offset=1054992
              i32.const 0
              i32.const 1054980
              i32.store offset=1054988
              i32.const 0
              i32.const 1054988
              i32.store offset=1055000
              i32.const 0
              i32.const 1054988
              i32.store offset=1054996
              i32.const 0
              i32.const 1054996
              i32.store offset=1055008
              i32.const 0
              i32.const 1054996
              i32.store offset=1055004
              i32.const 0
              i32.const 1055004
              i32.store offset=1055016
              i32.const 0
              i32.const 1055004
              i32.store offset=1055012
              i32.const 0
              i32.const 1055012
              i32.store offset=1055024
              i32.const 0
              i32.const 1055020
              i32.store offset=1055032
              i32.const 0
              i32.const 1055012
              i32.store offset=1055020
              i32.const 0
              i32.const 1055028
              i32.store offset=1055040
              i32.const 0
              i32.const 1055020
              i32.store offset=1055028
              i32.const 0
              i32.const 1055036
              i32.store offset=1055048
              i32.const 0
              i32.const 1055028
              i32.store offset=1055036
              i32.const 0
              i32.const 1055044
              i32.store offset=1055056
              i32.const 0
              i32.const 1055036
              i32.store offset=1055044
              i32.const 0
              i32.const 1055052
              i32.store offset=1055064
              i32.const 0
              i32.const 1055044
              i32.store offset=1055052
              i32.const 0
              i32.const 1055060
              i32.store offset=1055072
              i32.const 0
              i32.const 1055052
              i32.store offset=1055060
              i32.const 0
              i32.const 1055068
              i32.store offset=1055080
              i32.const 0
              i32.const 1055060
              i32.store offset=1055068
              i32.const 0
              i32.const 1055076
              i32.store offset=1055088
              i32.const 0
              i32.const 1055068
              i32.store offset=1055076
              i32.const 0
              i32.const 1055084
              i32.store offset=1055096
              i32.const 0
              i32.const 1055076
              i32.store offset=1055084
              i32.const 0
              i32.const 1055092
              i32.store offset=1055104
              i32.const 0
              i32.const 1055084
              i32.store offset=1055092
              i32.const 0
              i32.const 1055100
              i32.store offset=1055112
              i32.const 0
              i32.const 1055092
              i32.store offset=1055100
              i32.const 0
              i32.const 1055108
              i32.store offset=1055120
              i32.const 0
              i32.const 1055100
              i32.store offset=1055108
              i32.const 0
              i32.const 1055116
              i32.store offset=1055128
              i32.const 0
              i32.const 1055108
              i32.store offset=1055116
              i32.const 0
              i32.const 1055124
              i32.store offset=1055136
              i32.const 0
              i32.const 1055116
              i32.store offset=1055124
              i32.const 0
              i32.const 1055132
              i32.store offset=1055144
              i32.const 0
              i32.const 1055124
              i32.store offset=1055132
              i32.const 0
              i32.const 1055132
              i32.store offset=1055140
              i32.const 0
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
              local.tee $l2
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
              local.set $l4
              i32.const 20
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
              local.set $l7
              i32.const 16
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
              local.set $l5
              local.get $l6
              local.get $l6
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
              local.tee $p0
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
              local.get $p0
              i32.sub
              local.tee $l9
              call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
              local.set $p0
              i32.const 0
              local.get $l8
              local.get $l2
              i32.add
              local.get $l4
              i32.sub
              local.get $l7
              i32.sub
              local.get $l5
              i32.sub
              local.get $l9
              i32.sub
              local.tee $l2
              i32.store offset=1055280
              i32.const 0
              local.get $p0
              i32.store offset=1055288
              local.get $p0
              local.get $l2
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
              local.tee $l4
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
              local.set $l7
              i32.const 20
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
              local.set $l6
              i32.const 16
              i32.const 8
              call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
              local.set $l8
              local.get $p0
              local.get $l2
              call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
              local.get $l8
              local.get $l6
              local.get $l7
              local.get $l4
              i32.sub
              i32.add
              i32.add
              i32.store offset=4
              i32.const 0
              i32.const 2097152
              i32.store offset=1055316
              br $B33
            end
            local.get $p0
            call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17h9cd61a1d370e9f36E
            br_if $B34
            local.get $p0
            call $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17h880553e1894926d7E
            local.get $l9
            i32.ne
            br_if $B34
            local.get $p0
            i32.const 0
            i32.load offset=1055288
            call $_ZN8dlmalloc8dlmalloc7Segment5holds17h4aedcd2981ce6526E
            i32.eqz
            br_if $B34
            local.get $p0
            local.get $p0
            i32.load offset=4
            local.get $l8
            i32.add
            i32.store offset=4
            i32.const 0
            i32.load offset=1055280
            local.set $l2
            i32.const 0
            i32.load offset=1055288
            local.set $p0
            local.get $p0
            local.get $p0
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
            local.tee $l4
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
            local.get $l4
            i32.sub
            local.tee $l4
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
            local.set $p0
            i32.const 0
            local.get $l2
            local.get $l8
            i32.add
            local.get $l4
            i32.sub
            local.tee $l2
            i32.store offset=1055280
            i32.const 0
            local.get $p0
            i32.store offset=1055288
            local.get $p0
            local.get $l2
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
            local.tee $l4
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
            local.set $l7
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
            local.set $l6
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
            local.set $l8
            local.get $p0
            local.get $l2
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
            local.get $l8
            local.get $l6
            local.get $l7
            local.get $l4
            i32.sub
            i32.add
            i32.add
            i32.store offset=4
            i32.const 0
            i32.const 2097152
            i32.store offset=1055316
            br $B33
          end
          i32.const 0
          local.get $p0
          local.get $l3
          i32.sub
          local.tee $l2
          i32.store offset=1055280
          i32.const 0
          i32.const 0
          i32.load offset=1055288
          local.tee $p0
          local.get $l3
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
          local.tee $l4
          i32.store offset=1055288
          local.get $l4
          local.get $l2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $p0
          local.get $l3
          call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h257f0d39ed5602e1E
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
          local.set $l2
          br $B0
        end
        i32.const 0
        i32.const 0
        i32.load offset=1055320
        local.tee $p0
        local.get $l6
        local.get $l6
        local.get $p0
        i32.gt_u
        select
        i32.store offset=1055320
        local.get $l6
        local.get $l8
        i32.add
        local.set $l2
        i32.const 1055300
        local.set $p0
        block $B43
          block $B44
            loop $L45
              local.get $p0
              i32.load
              local.get $l2
              i32.eq
              br_if $B44
              local.get $p0
              i32.load offset=8
              local.tee $p0
              br_if $L45
              br $B43
            end
          end
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17h9cd61a1d370e9f36E
          br_if $B43
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17h880553e1894926d7E
          local.get $l9
          i32.ne
          br_if $B43
          local.get $p0
          i32.load
          local.set $l7
          local.get $p0
          local.get $l6
          i32.store
          local.get $p0
          local.get $p0
          i32.load offset=4
          local.get $l8
          i32.add
          i32.store offset=4
          local.get $l6
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
          local.tee $p0
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l2
          local.get $l7
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
          local.tee $l8
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l5
          local.get $l6
          local.get $l2
          local.get $p0
          i32.sub
          i32.add
          local.tee $l2
          local.get $l3
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
          local.set $l4
          local.get $l2
          local.get $l3
          call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h257f0d39ed5602e1E
          local.get $l7
          local.get $l5
          local.get $l8
          i32.sub
          i32.add
          local.tee $p0
          local.get $l2
          i32.sub
          local.get $l3
          i32.sub
          local.set $l3
          block $B46
            block $B47
              i32.const 0
              i32.load offset=1055288
              local.get $p0
              i32.eq
              br_if $B47
              i32.const 0
              i32.load offset=1055284
              local.get $p0
              i32.eq
              br_if $B46
              block $B48
                local.get $p0
                call $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h34d218dfa2012cecE
                br_if $B48
                block $B49
                  block $B50
                    local.get $p0
                    call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
                    local.tee $l7
                    i32.const 256
                    i32.lt_u
                    br_if $B50
                    local.get $p0
                    call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h3bb903924552643eE
                    br $B49
                  end
                  block $B51
                    local.get $p0
                    i32.const 12
                    i32.add
                    i32.load
                    local.tee $l6
                    local.get $p0
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee $l8
                    i32.eq
                    br_if $B51
                    local.get $l8
                    local.get $l6
                    i32.store offset=12
                    local.get $l6
                    local.get $l8
                    i32.store offset=8
                    br $B49
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1054876
                  i32.const -2
                  local.get $l7
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1054876
                end
                local.get $l7
                local.get $l3
                i32.add
                local.set $l3
                local.get $p0
                local.get $l7
                call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                local.set $p0
              end
              local.get $l4
              local.get $l3
              local.get $p0
              call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h617e866239ac2847E
              block $B52
                local.get $l3
                i32.const 256
                i32.lt_u
                br_if $B52
                local.get $l4
                local.get $l3
                call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7863e6ad3ce1f364E
                local.get $l2
                call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
                local.set $l2
                br $B0
              end
              local.get $l3
              i32.const 3
              i32.shr_u
              local.tee $l3
              i32.const 3
              i32.shl
              i32.const 1054884
              i32.add
              local.set $p0
              block $B53
                block $B54
                  i32.const 0
                  i32.load offset=1054876
                  local.tee $l7
                  i32.const 1
                  local.get $l3
                  i32.shl
                  local.tee $l3
                  i32.and
                  i32.eqz
                  br_if $B54
                  local.get $p0
                  i32.load offset=8
                  local.set $l3
                  br $B53
                end
                i32.const 0
                local.get $l7
                local.get $l3
                i32.or
                i32.store offset=1054876
                local.get $p0
                local.set $l3
              end
              local.get $p0
              local.get $l4
              i32.store offset=8
              local.get $l3
              local.get $l4
              i32.store offset=12
              local.get $l4
              local.get $p0
              i32.store offset=12
              local.get $l4
              local.get $l3
              i32.store offset=8
              local.get $l2
              call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
              local.set $l2
              br $B0
            end
            i32.const 0
            local.get $l4
            i32.store offset=1055288
            i32.const 0
            i32.const 0
            i32.load offset=1055280
            local.get $l3
            i32.add
            local.tee $p0
            i32.store offset=1055280
            local.get $l4
            local.get $p0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get $l2
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
            local.set $l2
            br $B0
          end
          i32.const 0
          local.get $l4
          i32.store offset=1055284
          i32.const 0
          i32.const 0
          i32.load offset=1055276
          local.get $l3
          i32.add
          local.tee $p0
          i32.store offset=1055276
          local.get $l4
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E
          local.get $l2
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
          local.set $l2
          br $B0
        end
        i32.const 0
        i32.load offset=1055288
        local.set $l4
        i32.const 1055300
        local.set $p0
        block $B55
          loop $L56
            block $B57
              local.get $p0
              i32.load
              local.get $l4
              i32.gt_u
              br_if $B57
              local.get $p0
              call $_ZN8dlmalloc8dlmalloc7Segment3top17h2e0a3d92a053d403E
              local.get $l4
              i32.gt_u
              br_if $B55
            end
            local.get $p0
            i32.load offset=8
            local.tee $p0
            br_if $L56
          end
          i32.const 0
          local.set $p0
        end
        local.get $p0
        call $_ZN8dlmalloc8dlmalloc7Segment3top17h2e0a3d92a053d403E
        local.tee $l7
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.tee $l10
        i32.sub
        i32.const -23
        i32.add
        local.set $p0
        local.get $l4
        local.get $p0
        local.get $p0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
        local.tee $l2
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.get $l2
        i32.sub
        i32.add
        local.tee $p0
        local.get $p0
        local.get $l4
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        i32.add
        i32.lt_u
        select
        local.tee $l5
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
        local.set $l2
        local.get $l5
        local.get $l10
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
        local.set $p0
        i32.const 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
        local.tee $l11
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.set $l12
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.set $l13
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.set $l14
        local.get $l6
        local.get $l6
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
        local.tee $l15
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.get $l15
        i32.sub
        local.tee $l16
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
        local.set $l15
        i32.const 0
        local.get $l8
        local.get $l11
        i32.add
        local.get $l12
        i32.sub
        local.get $l13
        i32.sub
        local.get $l14
        i32.sub
        local.get $l16
        i32.sub
        local.tee $l11
        i32.store offset=1055280
        i32.const 0
        local.get $l15
        i32.store offset=1055288
        local.get $l15
        local.get $l11
        i32.const 1
        i32.or
        i32.store offset=4
        i32.const 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
        local.tee $l12
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.set $l13
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.set $l14
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.set $l16
        local.get $l15
        local.get $l11
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
        local.get $l16
        local.get $l14
        local.get $l13
        local.get $l12
        i32.sub
        i32.add
        i32.add
        i32.store offset=4
        i32.const 0
        i32.const 2097152
        i32.store offset=1055316
        local.get $l5
        local.get $l10
        call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h257f0d39ed5602e1E
        i32.const 0
        i64.load offset=1055300 align=4
        local.set $l17
        local.get $l2
        i32.const 8
        i32.add
        i32.const 0
        i64.load offset=1055308 align=4
        i64.store align=4
        local.get $l2
        local.get $l17
        i64.store align=4
        i32.const 0
        local.get $l9
        i32.store offset=1055312
        i32.const 0
        local.get $l8
        i32.store offset=1055304
        i32.const 0
        local.get $l6
        i32.store offset=1055300
        i32.const 0
        local.get $l2
        i32.store offset=1055308
        loop $L58
          local.get $p0
          i32.const 4
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
          local.set $l2
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17h11539503ed18caffE
          i32.store offset=4
          local.get $l2
          local.set $p0
          local.get $l7
          local.get $l2
          i32.const 4
          i32.add
          i32.gt_u
          br_if $L58
        end
        local.get $l5
        local.get $l4
        i32.eq
        br_if $B33
        local.get $l5
        local.get $l4
        i32.sub
        local.set $p0
        local.get $l4
        local.get $p0
        local.get $l4
        local.get $p0
        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
        call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h617e866239ac2847E
        block $B59
          local.get $p0
          i32.const 256
          i32.lt_u
          br_if $B59
          local.get $l4
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7863e6ad3ce1f364E
          br $B33
        end
        local.get $p0
        i32.const 3
        i32.shr_u
        local.tee $l2
        i32.const 3
        i32.shl
        i32.const 1054884
        i32.add
        local.set $p0
        block $B60
          block $B61
            i32.const 0
            i32.load offset=1054876
            local.tee $l7
            i32.const 1
            local.get $l2
            i32.shl
            local.tee $l2
            i32.and
            i32.eqz
            br_if $B61
            local.get $p0
            i32.load offset=8
            local.set $l2
            br $B60
          end
          i32.const 0
          local.get $l7
          local.get $l2
          i32.or
          i32.store offset=1054876
          local.get $p0
          local.set $l2
        end
        local.get $p0
        local.get $l4
        i32.store offset=8
        local.get $l2
        local.get $l4
        i32.store offset=12
        local.get $l4
        local.get $p0
        i32.store offset=12
        local.get $l4
        local.get $l2
        i32.store offset=8
      end
      i32.const 0
      local.set $l2
      i32.const 0
      i32.load offset=1055280
      local.tee $p0
      local.get $l3
      i32.le_u
      br_if $B0
      i32.const 0
      local.get $p0
      local.get $l3
      i32.sub
      local.tee $l2
      i32.store offset=1055280
      i32.const 0
      i32.const 0
      i32.load offset=1055288
      local.tee $p0
      local.get $l3
      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
      local.tee $l4
      i32.store offset=1055288
      local.get $l4
      local.get $l2
      i32.const 1
      i32.or
      i32.store offset=4
      local.get $p0
      local.get $l3
      call $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h257f0d39ed5602e1E
      local.get $p0
      call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
      local.set $l2
    end
    local.get $l1
    i32.const 16
    i32.add
    global.set $g0
    local.get $l2)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h2d2ef18898d7852eE (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    local.get $p0
    local.get $p1
    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
    local.set $l2
    block $B0
      block $B1
        local.get $p0
        call $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h5cffe14aa7c194e2E
        br_if $B1
        local.get $p0
        i32.load
        local.set $l3
        block $B2
          block $B3
            local.get $p0
            call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17hdf27da0aa80094a5E
            br_if $B3
            local.get $l3
            local.get $p1
            i32.add
            local.set $p1
            local.get $p0
            local.get $l3
            call $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h5836e33872568a2cE
            local.tee $p0
            i32.const 0
            i32.load offset=1055284
            i32.ne
            br_if $B2
            local.get $l2
            i32.load offset=4
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if $B1
            i32.const 0
            local.get $p1
            i32.store offset=1055276
            local.get $p0
            local.get $p1
            local.get $l2
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h617e866239ac2847E
            return
          end
          i32.const 1054876
          local.get $p0
          local.get $l3
          i32.sub
          local.get $l3
          local.get $p1
          i32.add
          i32.const 16
          i32.add
          local.tee $p0
          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17hdc5562e28b8d4fecE
          i32.eqz
          br_if $B0
          i32.const 0
          i32.const 0
          i32.load offset=1055292
          local.get $p0
          i32.sub
          i32.store offset=1055292
          return
        end
        block $B4
          local.get $l3
          i32.const 256
          i32.lt_u
          br_if $B4
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h3bb903924552643eE
          br $B1
        end
        block $B5
          local.get $p0
          i32.const 12
          i32.add
          i32.load
          local.tee $l4
          local.get $p0
          i32.const 8
          i32.add
          i32.load
          local.tee $l5
          i32.eq
          br_if $B5
          local.get $l5
          local.get $l4
          i32.store offset=12
          local.get $l4
          local.get $l5
          i32.store offset=8
          br $B1
        end
        i32.const 0
        i32.const 0
        i32.load offset=1054876
        i32.const -2
        local.get $l3
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store offset=1054876
      end
      block $B6
        block $B7
          local.get $l2
          call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17hc320b72a27c644b9E
          i32.eqz
          br_if $B7
          local.get $p0
          local.get $p1
          local.get $l2
          call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h617e866239ac2847E
          br $B6
        end
        block $B8
          block $B9
            local.get $l2
            i32.const 0
            i32.load offset=1055288
            i32.eq
            br_if $B9
            local.get $l2
            i32.const 0
            i32.load offset=1055284
            i32.ne
            br_if $B8
            i32.const 0
            local.get $p0
            i32.store offset=1055284
            i32.const 0
            i32.const 0
            i32.load offset=1055276
            local.get $p1
            i32.add
            local.tee $p1
            i32.store offset=1055276
            local.get $p0
            local.get $p1
            call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E
            return
          end
          i32.const 0
          local.get $p0
          i32.store offset=1055288
          i32.const 0
          i32.const 0
          i32.load offset=1055280
          local.get $p1
          i32.add
          local.tee $p1
          i32.store offset=1055280
          local.get $p0
          local.get $p1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get $p0
          i32.const 0
          i32.load offset=1055284
          i32.ne
          br_if $B0
          i32.const 0
          i32.const 0
          i32.store offset=1055276
          i32.const 0
          i32.const 0
          i32.store offset=1055284
          return
        end
        local.get $l2
        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
        local.tee $l3
        local.get $p1
        i32.add
        local.set $p1
        block $B10
          block $B11
            local.get $l3
            i32.const 256
            i32.lt_u
            br_if $B11
            local.get $l2
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h3bb903924552643eE
            br $B10
          end
          block $B12
            local.get $l2
            i32.const 12
            i32.add
            i32.load
            local.tee $l4
            local.get $l2
            i32.const 8
            i32.add
            i32.load
            local.tee $l2
            i32.eq
            br_if $B12
            local.get $l2
            local.get $l4
            i32.store offset=12
            local.get $l4
            local.get $l2
            i32.store offset=8
            br $B10
          end
          i32.const 0
          i32.const 0
          i32.load offset=1054876
          i32.const -2
          local.get $l3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1054876
        end
        local.get $p0
        local.get $p1
        call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E
        local.get $p0
        i32.const 0
        i32.load offset=1055284
        i32.ne
        br_if $B6
        i32.const 0
        local.get $p1
        i32.store offset=1055276
        return
      end
      block $B13
        local.get $p1
        i32.const 256
        i32.lt_u
        br_if $B13
        local.get $p0
        local.get $p1
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7863e6ad3ce1f364E
        return
      end
      local.get $p1
      i32.const 3
      i32.shr_u
      local.tee $l2
      i32.const 3
      i32.shl
      i32.const 1054884
      i32.add
      local.set $p1
      block $B14
        block $B15
          i32.const 0
          i32.load offset=1054876
          local.tee $l3
          i32.const 1
          local.get $l2
          i32.shl
          local.tee $l2
          i32.and
          i32.eqz
          br_if $B15
          local.get $p1
          i32.load offset=8
          local.set $l2
          br $B14
        end
        i32.const 0
        local.get $l3
        local.get $l2
        i32.or
        i32.store offset=1054876
        local.get $p1
        local.set $l2
      end
      local.get $p1
      local.get $p0
      i32.store offset=8
      local.get $l2
      local.get $p0
      i32.store offset=12
      local.get $p0
      local.get $p1
      i32.store offset=12
      local.get $p0
      local.get $l2
      i32.store offset=8
    end)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h3bb903924552643eE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    local.get $p0
    i32.load offset=24
    local.set $l1
    block $B0
      block $B1
        block $B2
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc9TreeChunk4next17hf934e74ed9870c33E
          local.get $p0
          i32.ne
          br_if $B2
          local.get $p0
          i32.const 20
          i32.const 16
          local.get $p0
          i32.const 20
          i32.add
          local.tee $l2
          i32.load
          local.tee $l3
          select
          i32.add
          i32.load
          local.tee $l4
          br_if $B1
          i32.const 0
          local.set $l3
          br $B0
        end
        local.get $p0
        call $_ZN8dlmalloc8dlmalloc9TreeChunk4prev17hdfdcb34973fc147dE
        local.tee $l4
        local.get $p0
        call $_ZN8dlmalloc8dlmalloc9TreeChunk4next17hf934e74ed9870c33E
        local.tee $l3
        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
        i32.store offset=12
        local.get $l3
        local.get $l4
        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
        i32.store offset=8
        br $B0
      end
      local.get $l2
      local.get $p0
      i32.const 16
      i32.add
      local.get $l3
      select
      local.set $l2
      loop $L3
        local.get $l2
        local.set $l5
        block $B4
          local.get $l4
          local.tee $l3
          i32.const 20
          i32.add
          local.tee $l2
          i32.load
          local.tee $l4
          br_if $B4
          local.get $l3
          i32.const 16
          i32.add
          local.set $l2
          local.get $l3
          i32.load offset=16
          local.set $l4
        end
        local.get $l4
        br_if $L3
      end
      local.get $l5
      i32.const 0
      i32.store
    end
    block $B5
      local.get $l1
      i32.eqz
      br_if $B5
      block $B6
        block $B7
          local.get $p0
          i32.load offset=28
          i32.const 2
          i32.shl
          i32.const 1055148
          i32.add
          local.tee $l4
          i32.load
          local.get $p0
          i32.eq
          br_if $B7
          local.get $l1
          i32.const 16
          i32.const 20
          local.get $l1
          i32.load offset=16
          local.get $p0
          i32.eq
          select
          i32.add
          local.get $l3
          i32.store
          local.get $l3
          i32.eqz
          br_if $B5
          br $B6
        end
        local.get $l4
        local.get $l3
        i32.store
        local.get $l3
        br_if $B6
        i32.const 0
        i32.const 0
        i32.load offset=1054880
        i32.const -2
        local.get $p0
        i32.load offset=28
        i32.rotl
        i32.and
        i32.store offset=1054880
        br $B5
      end
      local.get $l3
      local.get $l1
      i32.store offset=24
      block $B8
        local.get $p0
        i32.load offset=16
        local.tee $l4
        i32.eqz
        br_if $B8
        local.get $l3
        local.get $l4
        i32.store offset=16
        local.get $l4
        local.get $l3
        i32.store offset=24
      end
      local.get $p0
      i32.const 20
      i32.add
      i32.load
      local.tee $l4
      i32.eqz
      br_if $B5
      local.get $l3
      i32.const 20
      i32.add
      local.get $l4
      i32.store
      local.get $l4
      local.get $l3
      i32.store offset=24
      return
    end)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7863e6ad3ce1f364E (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    i32.const 0
    local.set $l2
    block $B0
      local.get $p1
      i32.const 8
      i32.shr_u
      local.tee $l3
      i32.eqz
      br_if $B0
      i32.const 31
      local.set $l2
      local.get $p1
      i32.const 16777215
      i32.gt_u
      br_if $B0
      local.get $p1
      i32.const 6
      local.get $l3
      i32.clz
      local.tee $l2
      i32.sub
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      local.get $l2
      i32.const 1
      i32.shl
      i32.sub
      i32.const 62
      i32.add
      local.set $l2
    end
    local.get $p0
    i64.const 0
    i64.store offset=16 align=4
    local.get $p0
    local.get $l2
    i32.store offset=28
    local.get $l2
    i32.const 2
    i32.shl
    i32.const 1055148
    i32.add
    local.set $l3
    local.get $p0
    call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
    local.set $l4
    block $B1
      block $B2
        block $B3
          block $B4
            block $B5
              i32.const 0
              i32.load offset=1054880
              local.tee $l5
              i32.const 1
              local.get $l2
              i32.const 31
              i32.and
              i32.shl
              local.tee $l6
              i32.and
              i32.eqz
              br_if $B5
              local.get $l3
              i32.load
              local.set $l5
              local.get $l2
              call $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h9b4329b924da3806E
              local.set $l2
              local.get $l5
              call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
              call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
              local.get $p1
              i32.ne
              br_if $B4
              local.get $l5
              local.set $l2
              br $B3
            end
            i32.const 0
            local.get $l5
            local.get $l6
            i32.or
            i32.store offset=1054880
            local.get $l3
            local.get $p0
            i32.store
            local.get $p0
            local.get $l3
            i32.store offset=24
            br $B1
          end
          local.get $p1
          local.get $l2
          i32.const 31
          i32.and
          i32.shl
          local.set $l3
          loop $L6
            local.get $l5
            local.get $l3
            i32.const 29
            i32.shr_u
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee $l6
            i32.load
            local.tee $l2
            i32.eqz
            br_if $B2
            local.get $l3
            i32.const 1
            i32.shl
            local.set $l3
            local.get $l2
            local.set $l5
            local.get $l2
            call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
            local.get $p1
            i32.ne
            br_if $L6
          end
        end
        local.get $l2
        call $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E
        local.tee $l2
        i32.load offset=8
        local.tee $l3
        local.get $l4
        i32.store offset=12
        local.get $l2
        local.get $l4
        i32.store offset=8
        local.get $l4
        local.get $l2
        i32.store offset=12
        local.get $l4
        local.get $l3
        i32.store offset=8
        local.get $p0
        i32.const 0
        i32.store offset=24
        return
      end
      local.get $l6
      local.get $p0
      i32.store
      local.get $p0
      local.get $l5
      i32.store offset=24
    end
    local.get $l4
    local.get $l4
    i32.store offset=8
    local.get $l4
    local.get $l4
    i32.store offset=12)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h61d3eef6bc101679E (type $t6) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32)
    block $B0
      i32.const 0
      i32.load offset=1055308
      local.tee $l0
      br_if $B0
      i32.const 0
      i32.const 4095
      i32.store offset=1055324
      i32.const 0
      return
    end
    i32.const 1055300
    local.set $l1
    i32.const 0
    local.set $l2
    i32.const 0
    local.set $l3
    loop $L1
      local.get $l0
      local.tee $l4
      i32.load offset=8
      local.set $l0
      local.get $l4
      i32.load offset=4
      local.set $l5
      local.get $l4
      i32.load
      local.set $l6
      block $B2
        block $B3
          i32.const 1054876
          local.get $l4
          i32.const 12
          i32.add
          i32.load
          i32.const 1
          i32.shr_u
          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hff68dc9a608e0af2E
          br_if $B3
          local.get $l4
          local.set $l1
          br $B2
        end
        block $B4
          local.get $l4
          call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17h9cd61a1d370e9f36E
          i32.eqz
          br_if $B4
          local.get $l4
          local.set $l1
          br $B2
        end
        local.get $l6
        local.get $l6
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
        local.tee $l7
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.get $l7
        i32.sub
        i32.add
        local.tee $l7
        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
        local.set $l8
        i32.const 0
        call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
        local.tee $l9
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.set $l10
        i32.const 20
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.set $l11
        i32.const 16
        i32.const 8
        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
        local.set $l12
        local.get $l7
        call $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h34d218dfa2012cecE
        local.set $l13
        block $B5
          local.get $l7
          local.get $l8
          i32.add
          local.get $l6
          local.get $l5
          local.get $l9
          i32.add
          local.get $l10
          i32.sub
          local.get $l11
          i32.sub
          local.get $l12
          i32.sub
          i32.add
          i32.ge_u
          br_if $B5
          local.get $l4
          local.set $l1
          br $B2
        end
        block $B6
          local.get $l13
          i32.eqz
          br_if $B6
          local.get $l4
          local.set $l1
          br $B2
        end
        block $B7
          block $B8
            i32.const 0
            i32.load offset=1055284
            local.get $l7
            i32.eq
            br_if $B8
            local.get $l7
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h3bb903924552643eE
            br $B7
          end
          i32.const 0
          i32.const 0
          i32.store offset=1055276
          i32.const 0
          i32.const 0
          i32.store offset=1055284
        end
        block $B9
          i32.const 1054876
          local.get $l6
          local.get $l5
          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17hdc5562e28b8d4fecE
          br_if $B9
          local.get $l7
          local.get $l8
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7863e6ad3ce1f364E
          local.get $l4
          local.set $l1
          br $B2
        end
        i32.const 0
        i32.const 0
        i32.load offset=1055292
        local.get $l5
        i32.sub
        i32.store offset=1055292
        local.get $l1
        local.get $l0
        i32.store offset=8
        local.get $l5
        local.get $l2
        i32.add
        local.set $l2
      end
      local.get $l3
      i32.const 1
      i32.add
      local.set $l3
      local.get $l0
      br_if $L1
    end
    i32.const 0
    local.get $l3
    i32.const 4095
    local.get $l3
    i32.const 4095
    i32.gt_u
    select
    i32.store offset=1055324
    local.get $l2)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8d5ccda4ec9dab0cE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    local.get $p0
    call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h0a47b93129983de6E
    local.set $p0
    local.get $p0
    local.get $p0
    call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
    local.tee $l1
    call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
    local.set $l2
    block $B0
      block $B1
        local.get $p0
        call $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h5cffe14aa7c194e2E
        br_if $B1
        local.get $p0
        i32.load
        local.set $l3
        block $B2
          block $B3
            local.get $p0
            call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17hdf27da0aa80094a5E
            br_if $B3
            local.get $l3
            local.get $l1
            i32.add
            local.set $l1
            local.get $p0
            local.get $l3
            call $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h5836e33872568a2cE
            local.tee $p0
            i32.const 0
            i32.load offset=1055284
            i32.ne
            br_if $B2
            local.get $l2
            i32.load offset=4
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if $B1
            i32.const 0
            local.get $l1
            i32.store offset=1055276
            local.get $p0
            local.get $l1
            local.get $l2
            call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h617e866239ac2847E
            return
          end
          i32.const 1054876
          local.get $p0
          local.get $l3
          i32.sub
          local.get $l3
          local.get $l1
          i32.add
          i32.const 16
          i32.add
          local.tee $p0
          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17hdc5562e28b8d4fecE
          i32.eqz
          br_if $B0
          i32.const 0
          i32.const 0
          i32.load offset=1055292
          local.get $p0
          i32.sub
          i32.store offset=1055292
          return
        end
        block $B4
          local.get $l3
          i32.const 256
          i32.lt_u
          br_if $B4
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h3bb903924552643eE
          br $B1
        end
        block $B5
          local.get $p0
          i32.const 12
          i32.add
          i32.load
          local.tee $l4
          local.get $p0
          i32.const 8
          i32.add
          i32.load
          local.tee $l5
          i32.eq
          br_if $B5
          local.get $l5
          local.get $l4
          i32.store offset=12
          local.get $l4
          local.get $l5
          i32.store offset=8
          br $B1
        end
        i32.const 0
        i32.const 0
        i32.load offset=1054876
        i32.const -2
        local.get $l3
        i32.const 3
        i32.shr_u
        i32.rotl
        i32.and
        i32.store offset=1054876
      end
      block $B6
        block $B7
          local.get $l2
          call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17hc320b72a27c644b9E
          i32.eqz
          br_if $B7
          local.get $p0
          local.get $l1
          local.get $l2
          call $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h617e866239ac2847E
          br $B6
        end
        block $B8
          block $B9
            local.get $l2
            i32.const 0
            i32.load offset=1055288
            i32.eq
            br_if $B9
            local.get $l2
            i32.const 0
            i32.load offset=1055284
            i32.ne
            br_if $B8
            i32.const 0
            local.get $p0
            i32.store offset=1055284
            i32.const 0
            i32.const 0
            i32.load offset=1055276
            local.get $l1
            i32.add
            local.tee $l1
            i32.store offset=1055276
            local.get $p0
            local.get $l1
            call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E
            return
          end
          i32.const 0
          local.get $p0
          i32.store offset=1055288
          i32.const 0
          i32.const 0
          i32.load offset=1055280
          local.get $l1
          i32.add
          local.tee $l1
          i32.store offset=1055280
          local.get $p0
          local.get $l1
          i32.const 1
          i32.or
          i32.store offset=4
          block $B10
            local.get $p0
            i32.const 0
            i32.load offset=1055284
            i32.ne
            br_if $B10
            i32.const 0
            i32.const 0
            i32.store offset=1055276
            i32.const 0
            i32.const 0
            i32.store offset=1055284
          end
          i32.const 0
          i32.load offset=1055316
          local.get $l1
          i32.ge_u
          br_if $B0
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
          local.tee $p0
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l1
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l2
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l3
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l4
          i32.const 0
          i32.load offset=1055288
          i32.eqz
          br_if $B0
          local.get $p0
          local.get $l1
          i32.sub
          local.get $l2
          i32.sub
          local.get $l3
          i32.sub
          i32.const -65544
          i32.add
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee $p0
          i32.const 0
          local.get $l4
          i32.const 2
          i32.shl
          i32.sub
          local.tee $l1
          local.get $p0
          local.get $l1
          i32.lt_u
          select
          i32.eqz
          br_if $B0
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
          local.tee $p0
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l1
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l3
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l4
          i32.const 0
          local.set $l2
          block $B11
            i32.const 0
            i32.load offset=1055280
            local.tee $l5
            local.get $l4
            local.get $l3
            local.get $l1
            local.get $p0
            i32.sub
            i32.add
            i32.add
            local.tee $p0
            i32.le_u
            br_if $B11
            local.get $l5
            local.get $p0
            i32.const -1
            i32.xor
            i32.add
            i32.const -65536
            i32.and
            local.set $l3
            i32.const 0
            i32.load offset=1055288
            local.set $l1
            i32.const 1055300
            local.set $p0
            block $B12
              loop $L13
                block $B14
                  local.get $p0
                  i32.load
                  local.get $l1
                  i32.gt_u
                  br_if $B14
                  local.get $p0
                  call $_ZN8dlmalloc8dlmalloc7Segment3top17h2e0a3d92a053d403E
                  local.get $l1
                  i32.gt_u
                  br_if $B12
                end
                local.get $p0
                i32.load offset=8
                local.tee $p0
                br_if $L13
              end
              i32.const 0
              local.set $p0
            end
            i32.const 0
            local.set $l2
            local.get $p0
            call $_ZN8dlmalloc8dlmalloc7Segment9is_extern17h9cd61a1d370e9f36E
            br_if $B11
            i32.const 1054876
            local.get $p0
            i32.const 12
            i32.add
            i32.load
            i32.const 1
            i32.shr_u
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hff68dc9a608e0af2E
            i32.eqz
            br_if $B11
            local.get $p0
            i32.load offset=4
            local.get $l3
            i32.lt_u
            br_if $B11
            i32.const 1055300
            local.set $l1
            loop $L15
              local.get $p0
              local.get $l1
              call $_ZN8dlmalloc8dlmalloc7Segment5holds17h4aedcd2981ce6526E
              br_if $B11
              local.get $l1
              i32.load offset=8
              local.tee $l1
              br_if $L15
            end
            i32.const 1054876
            local.get $p0
            i32.load
            local.get $p0
            i32.load offset=4
            local.tee $l1
            local.get $l1
            local.get $l3
            i32.sub
            call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9free_part17hc15b46083d78a1a0E
            local.set $l1
            local.get $l3
            i32.eqz
            br_if $B11
            local.get $l1
            i32.eqz
            br_if $B11
            local.get $p0
            local.get $p0
            i32.load offset=4
            local.get $l3
            i32.sub
            i32.store offset=4
            i32.const 0
            i32.const 0
            i32.load offset=1055292
            local.get $l3
            i32.sub
            i32.store offset=1055292
            i32.const 0
            i32.load offset=1055280
            local.set $l1
            i32.const 0
            i32.load offset=1055288
            local.set $p0
            local.get $p0
            local.get $p0
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
            local.tee $l2
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
            local.get $l2
            i32.sub
            local.tee $l2
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
            local.set $p0
            i32.const 0
            local.get $l1
            local.get $l3
            i32.sub
            local.get $l2
            i32.sub
            local.tee $l1
            i32.store offset=1055280
            i32.const 0
            local.get $p0
            i32.store offset=1055288
            local.get $p0
            local.get $l1
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
            local.tee $l2
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
            local.set $l4
            i32.const 20
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
            local.set $l5
            i32.const 16
            i32.const 8
            call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
            local.set $l6
            local.get $p0
            local.get $l1
            call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
            local.get $l6
            local.get $l5
            local.get $l4
            local.get $l2
            i32.sub
            i32.add
            i32.add
            i32.store offset=4
            i32.const 0
            i32.const 2097152
            i32.store offset=1055316
            local.get $l3
            local.set $l2
          end
          local.get $l2
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h61d3eef6bc101679E
          i32.sub
          i32.ne
          br_if $B0
          i32.const 0
          i32.load offset=1055280
          i32.const 0
          i32.load offset=1055316
          i32.le_u
          br_if $B0
          i32.const 0
          i32.const -1
          i32.store offset=1055316
          return
        end
        local.get $l2
        call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
        local.tee $l3
        local.get $l1
        i32.add
        local.set $l1
        block $B16
          block $B17
            local.get $l3
            i32.const 256
            i32.lt_u
            br_if $B17
            local.get $l2
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h3bb903924552643eE
            br $B16
          end
          block $B18
            local.get $l2
            i32.const 12
            i32.add
            i32.load
            local.tee $l4
            local.get $l2
            i32.const 8
            i32.add
            i32.load
            local.tee $l2
            i32.eq
            br_if $B18
            local.get $l2
            local.get $l4
            i32.store offset=12
            local.get $l4
            local.get $l2
            i32.store offset=8
            br $B16
          end
          i32.const 0
          i32.const 0
          i32.load offset=1054876
          i32.const -2
          local.get $l3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1054876
        end
        local.get $p0
        local.get $l1
        call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E
        local.get $p0
        i32.const 0
        i32.load offset=1055284
        i32.ne
        br_if $B6
        i32.const 0
        local.get $l1
        i32.store offset=1055276
        return
      end
      block $B19
        local.get $l1
        i32.const 256
        i32.lt_u
        br_if $B19
        local.get $p0
        local.get $l1
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h7863e6ad3ce1f364E
        i32.const 0
        i32.const 0
        i32.load offset=1055324
        i32.const -1
        i32.add
        local.tee $p0
        i32.store offset=1055324
        local.get $p0
        br_if $B0
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$23release_unused_segments17h61d3eef6bc101679E
        drop
        return
      end
      local.get $l1
      i32.const 3
      i32.shr_u
      local.tee $l2
      i32.const 3
      i32.shl
      i32.const 1054884
      i32.add
      local.set $l1
      block $B20
        block $B21
          i32.const 0
          i32.load offset=1054876
          local.tee $l3
          i32.const 1
          local.get $l2
          i32.shl
          local.tee $l2
          i32.and
          i32.eqz
          br_if $B21
          local.get $l1
          i32.load offset=8
          local.set $l2
          br $B20
        end
        i32.const 0
        local.get $l3
        local.get $l2
        i32.or
        i32.store offset=1054876
        local.get $l1
        local.set $l2
      end
      local.get $l1
      local.get $p0
      i32.store offset=8
      local.get $l2
      local.get $p0
      i32.store offset=12
      local.get $p0
      local.get $l1
      i32.store offset=12
      local.get $p0
      local.get $l2
      i32.store offset=8
    end)
  (func $_ZN3std10sys_common11thread_info10ThreadInfo4with28_$u7b$$u7b$closure$u7d$$u7d$17hd667a7d84594570aE (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p0
            i32.load
            local.tee $l2
            i32.const 1
            i32.add
            i32.const 0
            i32.le_s
            br_if $B3
            local.get $p0
            local.get $l2
            i32.store
            block $B4
              local.get $p0
              i32.load offset=4
              local.tee $l3
              br_if $B4
              local.get $l1
              i32.const 0
              i32.store offset=8
              local.get $l1
              i32.const 8
              i32.add
              call $_ZN3std6thread6Thread3new17h8e5b02a7cc2f78a3E
              local.set $l3
              local.get $p0
              i32.load
              br_if $B2
              local.get $p0
              i32.const -1
              i32.store
              block $B5
                local.get $p0
                i32.load offset=4
                local.tee $l2
                i32.eqz
                br_if $B5
                local.get $l2
                local.get $l2
                i32.load
                local.tee $l4
                i32.const -1
                i32.add
                i32.store
                local.get $l4
                i32.const 1
                i32.ne
                br_if $B5
                local.get $p0
                i32.const 4
                i32.add
                call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hec1f1c349e161980E
              end
              local.get $p0
              local.get $l3
              i32.store offset=4
              local.get $p0
              local.get $p0
              i32.load
              i32.const 1
              i32.add
              local.tee $l2
              i32.store
            end
            local.get $l2
            br_if $B1
            local.get $p0
            i32.const -1
            i32.store
            local.get $l3
            local.get $l3
            i32.load
            local.tee $l2
            i32.const 1
            i32.add
            i32.store
            local.get $l2
            i32.const -1
            i32.le_s
            br_if $B0
            local.get $p0
            local.get $p0
            i32.load
            i32.const 1
            i32.add
            i32.store
            local.get $l1
            i32.const 32
            i32.add
            global.set $g0
            local.get $l3
            return
          end
          i32.const 1048796
          i32.const 24
          local.get $l1
          i32.const 24
          i32.add
          i32.const 1049124
          i32.const 1050476
          call $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE
          unreachable
        end
        i32.const 1048780
        i32.const 16
        local.get $l1
        i32.const 24
        i32.add
        i32.const 1049092
        i32.const 1050492
        call $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE
        unreachable
      end
      i32.const 1048780
      i32.const 16
      local.get $l1
      i32.const 24
      i32.add
      i32.const 1049092
      i32.const 1050508
      call $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE
      unreachable
    end
    unreachable
    unreachable)
  (func $_ZN3std6thread4park17h7ce754abe2de9354E (type $t0)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l0
    global.set $g0
    block $B0
      i32.const 0
      i32.load offset=1054864
      i32.const 1
      i32.eq
      br_if $B0
      i32.const 0
      i64.const 1
      i64.store offset=1054864 align=4
      i32.const 0
      i32.const 0
      i32.store offset=1054872
    end
    i32.const 1054868
    call $_ZN3std10sys_common11thread_info10ThreadInfo4with28_$u7b$$u7b$closure$u7d$$u7d$17hd667a7d84594570aE
    local.tee $l1
    i32.const 0
    local.get $l1
    i32.load offset=24
    local.tee $l2
    local.get $l2
    i32.const 2
    i32.eq
    local.tee $l2
    select
    i32.store offset=24
    local.get $l0
    local.get $l1
    i32.store offset=8
    block $B1
      block $B2
        block $B3
          block $B4
            block $B5
              block $B6
                local.get $l2
                br_if $B6
                local.get $l1
                i32.const 24
                i32.add
                local.tee $l1
                i32.load8_u offset=4
                local.set $l2
                local.get $l1
                i32.const 1
                i32.store8 offset=4
                local.get $l0
                local.get $l2
                i32.const 1
                i32.and
                local.tee $l2
                i32.store8 offset=12
                local.get $l2
                br_if $B3
                i32.const 0
                local.set $l3
                block $B7
                  i32.const 0
                  i32.load offset=1054848
                  i32.eqz
                  br_if $B7
                  call $_ZN3std9panicking11panic_count17is_zero_slow_path17hc46895f918293b52E
                  i32.const 1
                  i32.xor
                  local.set $l3
                end
                local.get $l1
                i32.const 4
                i32.add
                local.set $l4
                local.get $l1
                i32.const 5
                i32.add
                i32.load8_u
                br_if $B2
                local.get $l1
                local.get $l1
                i32.load
                local.tee $l2
                i32.const 1
                local.get $l2
                select
                i32.store
                local.get $l2
                i32.eqz
                br_if $B4
                local.get $l2
                i32.const 2
                i32.ne
                br_if $B1
                local.get $l1
                i32.load
                local.set $l2
                local.get $l1
                i32.const 0
                i32.store
                local.get $l0
                local.get $l2
                i32.store offset=12
                local.get $l2
                i32.const 2
                i32.ne
                br_if $B5
                block $B8
                  local.get $l3
                  br_if $B8
                  i32.const 0
                  i32.load offset=1054848
                  i32.eqz
                  br_if $B8
                  call $_ZN3std9panicking11panic_count17is_zero_slow_path17hc46895f918293b52E
                  br_if $B8
                  local.get $l1
                  i32.const 1
                  i32.store8 offset=5
                end
                local.get $l4
                i32.const 0
                i32.store8
              end
              local.get $l0
              i32.load offset=8
              local.tee $l1
              local.get $l1
              i32.load
              local.tee $l1
              i32.const -1
              i32.add
              i32.store
              block $B9
                local.get $l1
                i32.const 1
                i32.ne
                br_if $B9
                local.get $l0
                i32.const 8
                i32.add
                call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hec1f1c349e161980E
              end
              local.get $l0
              i32.const 96
              i32.add
              global.set $g0
              return
            end
            local.get $l0
            i32.const 40
            i32.add
            i32.const 20
            i32.add
            i32.const 5
            i32.store
            local.get $l0
            i32.const 52
            i32.add
            i32.const 7
            i32.store
            local.get $l0
            i32.const 16
            i32.add
            i32.const 20
            i32.add
            i32.const 3
            i32.store
            local.get $l0
            local.get $l0
            i32.const 12
            i32.add
            i32.store offset=64
            local.get $l0
            i32.const 1050284
            i32.store offset=68
            local.get $l0
            i32.const 72
            i32.add
            i32.const 20
            i32.add
            i32.const 0
            i32.store
            local.get $l0
            i64.const 3
            i64.store offset=20 align=4
            local.get $l0
            i32.const 1050912
            i32.store offset=16
            local.get $l0
            i32.const 7
            i32.store offset=44
            local.get $l0
            i32.const 1048780
            i32.store offset=88
            local.get $l0
            i64.const 1
            i64.store offset=76 align=4
            local.get $l0
            i32.const 1050968
            i32.store offset=72
            local.get $l0
            local.get $l0
            i32.const 40
            i32.add
            i32.store offset=32
            local.get $l0
            local.get $l0
            i32.const 72
            i32.add
            i32.store offset=56
            local.get $l0
            local.get $l0
            i32.const 68
            i32.add
            i32.store offset=48
            local.get $l0
            local.get $l0
            i32.const 64
            i32.add
            i32.store offset=40
            local.get $l0
            i32.const 16
            i32.add
            i32.const 1050976
            call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
            unreachable
          end
          call $_ZN3std10sys_common7condvar7Condvar4wait17h9a149b4dd0c7b6d1E
          unreachable
        end
        local.get $l0
        i32.const 40
        i32.add
        i32.const 20
        i32.add
        i32.const 5
        i32.store
        local.get $l0
        i32.const 52
        i32.add
        i32.const 6
        i32.store
        local.get $l0
        i32.const 16
        i32.add
        i32.const 20
        i32.add
        i32.const 3
        i32.store
        local.get $l0
        local.get $l0
        i32.const 12
        i32.add
        i32.store offset=64
        local.get $l0
        i32.const 1049440
        i32.store offset=68
        local.get $l0
        i32.const 72
        i32.add
        i32.const 20
        i32.add
        i32.const 0
        i32.store
        local.get $l0
        i64.const 3
        i64.store offset=20 align=4
        local.get $l0
        i32.const 1050912
        i32.store offset=16
        local.get $l0
        i32.const 6
        i32.store offset=44
        local.get $l0
        i32.const 1048780
        i32.store offset=88
        local.get $l0
        i64.const 1
        i64.store offset=76 align=4
        local.get $l0
        i32.const 1051196
        i32.store offset=72
        local.get $l0
        local.get $l0
        i32.const 40
        i32.add
        i32.store offset=32
        local.get $l0
        local.get $l0
        i32.const 72
        i32.add
        i32.store offset=56
        local.get $l0
        local.get $l0
        i32.const 68
        i32.add
        i32.store offset=48
        local.get $l0
        local.get $l0
        i32.const 64
        i32.add
        i32.store offset=40
        local.get $l0
        i32.const 16
        i32.add
        i32.const 1051252
        call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
        unreachable
      end
      local.get $l0
      local.get $l3
      i32.store8 offset=76
      local.get $l0
      local.get $l4
      i32.store offset=72
      i32.const 1049140
      i32.const 43
      local.get $l0
      i32.const 72
      i32.add
      i32.const 1049184
      i32.const 1050856
      call $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE
      unreachable
    end
    i32.const 1050872
    i32.const 23
    i32.const 1050896
    call $_ZN3std9panicking11begin_panic17h500a2937ff20cfd7E
    unreachable)
  (func $_ZN3std10sys_common7condvar7Condvar4wait17h9a149b4dd0c7b6d1E (type $t0)
    (local $l0 i32)
    local.get $l0
    local.get $l0
    call $_ZN3std3sys4wasm7condvar7Condvar4wait17h45143a33b7b04f01E
    unreachable)
  (func $_ZN3std9panicking11begin_panic17h500a2937ff20cfd7E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p2
    call $_ZN4core5panic8Location6caller17hece3bb8b9903df35E
    i32.store offset=8
    local.get $l3
    local.get $p1
    i32.store offset=4
    local.get $l3
    local.get $p0
    i32.store
    local.get $l3
    call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h706c23cb5ca53ba5E
    unreachable)
  (func $_ZN3std6thread6Thread3new17h8e5b02a7cc2f78a3E (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i64)
    global.get $g0
    i32.const 112
    i32.sub
    local.tee $l1
    global.set $g0
    block $B0
      block $B1
        local.get $p0
        i32.load
        local.tee $l2
        br_if $B1
        i32.const 0
        local.set $l3
        br $B0
      end
      local.get $l1
      local.get $p0
      i64.load offset=4 align=4
      i64.store offset=92 align=4
      local.get $l1
      local.get $l2
      i32.store offset=88
      local.get $l1
      i32.const 56
      i32.add
      local.get $l1
      i32.const 88
      i32.add
      call $_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17hca52868aa31f0b01E
      local.get $l1
      i32.load offset=56
      local.set $l3
      block $B2
        block $B3
          block $B4
            local.get $l1
            i32.load offset=64
            local.tee $l2
            i32.const 7
            i32.gt_u
            br_if $B4
            local.get $l2
            i32.eqz
            br_if $B2
            i32.const 0
            local.set $p0
            loop $L5
              local.get $l3
              local.get $p0
              i32.add
              i32.load8_u
              i32.eqz
              br_if $B3
              local.get $l2
              local.get $p0
              i32.const 1
              i32.add
              local.tee $p0
              i32.ne
              br_if $L5
              br $B2
            end
          end
          local.get $l1
          i32.const 16
          i32.add
          i32.const 0
          local.get $l3
          local.get $l2
          call $_ZN4core5slice6memchr19memchr_general_case17h64949346494b2e13E
          local.get $l1
          i32.load offset=16
          i32.eqz
          br_if $B2
          local.get $l1
          i32.load offset=20
          local.set $p0
        end
        local.get $l1
        i32.const 96
        i32.add
        local.get $l1
        i64.load offset=60 align=4
        i64.store
        local.get $l1
        local.get $l3
        i32.store offset=92
        local.get $l1
        local.get $p0
        i32.store offset=88
        i32.const 1049332
        i32.const 47
        local.get $l1
        i32.const 88
        i32.add
        i32.const 1049108
        i32.const 1049380
        call $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE
        unreachable
      end
      local.get $l1
      i32.const 88
      i32.add
      i32.const 8
      i32.add
      local.get $l1
      i32.const 56
      i32.add
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get $l1
      local.get $l1
      i64.load offset=56
      i64.store offset=88
      local.get $l1
      i32.const 8
      i32.add
      local.get $l1
      i32.const 88
      i32.add
      call $_ZN3std3ffi5c_str7CString18from_vec_unchecked17h20e1b7a4d13a8f23E
      local.get $l1
      i32.load offset=12
      local.set $l2
      local.get $l1
      i32.load offset=8
      local.set $l3
    end
    i32.const 0
    i32.load8_u offset=1055336
    local.set $p0
    i32.const 0
    i32.const 1
    i32.store8 offset=1055336
    local.get $l1
    local.get $p0
    i32.store8 offset=31
    block $B6
      block $B7
        local.get $p0
        br_if $B7
        block $B8
          block $B9
            i32.const 0
            i64.load offset=1054792
            local.tee $l4
            i64.const -1
            i64.eq
            br_if $B9
            i32.const 0
            local.get $l4
            i64.const 1
            i64.add
            i64.store offset=1054792
            local.get $l4
            i64.const 0
            i64.ne
            br_if $B8
            i32.const 1049048
            i32.const 43
            i32.const 1049316
            call $_ZN4core9panicking5panic17h8e74859c8f9988caE
            unreachable
          end
          i32.const 1049245
          i32.const 55
          i32.const 1049300
          call $_ZN3std9panicking11begin_panic17h500a2937ff20cfd7E
          unreachable
        end
        i32.const 0
        i32.const 0
        i32.store8 offset=1055336
        i32.const 32
        i32.const 8
        call $__rust_alloc
        local.tee $p0
        i32.eqz
        br_if $B6
        local.get $p0
        i64.const 0
        i64.store offset=24
        local.get $p0
        local.get $l2
        i32.store offset=20
        local.get $p0
        local.get $l3
        i32.store offset=16
        local.get $p0
        local.get $l4
        i64.store offset=8
        local.get $p0
        i64.const 4294967297
        i64.store
        local.get $l1
        i32.const 112
        i32.add
        global.set $g0
        local.get $p0
        return
      end
      local.get $l1
      i32.const 56
      i32.add
      i32.const 20
      i32.add
      i32.const 5
      i32.store
      local.get $l1
      i32.const 68
      i32.add
      i32.const 6
      i32.store
      local.get $l1
      i32.const 32
      i32.add
      i32.const 20
      i32.add
      i32.const 3
      i32.store
      local.get $l1
      local.get $l1
      i32.const 31
      i32.add
      i32.store offset=80
      local.get $l1
      i32.const 1049440
      i32.store offset=84
      local.get $l1
      i32.const 88
      i32.add
      i32.const 20
      i32.add
      i32.const 0
      i32.store
      local.get $l1
      i64.const 3
      i64.store offset=36 align=4
      local.get $l1
      i32.const 1050912
      i32.store offset=32
      local.get $l1
      i32.const 6
      i32.store offset=60
      local.get $l1
      i32.const 1048780
      i32.store offset=104
      local.get $l1
      i64.const 1
      i64.store offset=92 align=4
      local.get $l1
      i32.const 1051196
      i32.store offset=88
      local.get $l1
      local.get $l1
      i32.const 56
      i32.add
      i32.store offset=48
      local.get $l1
      local.get $l1
      i32.const 88
      i32.add
      i32.store offset=72
      local.get $l1
      local.get $l1
      i32.const 84
      i32.add
      i32.store offset=64
      local.get $l1
      local.get $l1
      i32.const 80
      i32.add
      i32.store offset=56
      local.get $l1
      i32.const 32
      i32.add
      i32.const 1051252
      call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
      unreachable
    end
    i32.const 32
    i32.const 8
    call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
    unreachable)
  (func $_ZN3std3ffi5c_str7CString18from_vec_unchecked17h20e1b7a4d13a8f23E (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p1
              i32.const 4
              i32.add
              i32.load
              local.tee $l3
              local.get $p1
              i32.load offset=8
              local.tee $l4
              i32.ne
              br_if $B4
              local.get $l4
              i32.const 1
              i32.add
              local.tee $l3
              local.get $l4
              i32.lt_u
              br_if $B1
              block $B5
                block $B6
                  local.get $l4
                  i32.eqz
                  br_if $B6
                  local.get $l2
                  i32.const 24
                  i32.add
                  i32.const 1
                  i32.store
                  local.get $l2
                  local.get $l4
                  i32.store offset=20
                  local.get $l2
                  local.get $p1
                  i32.load
                  i32.store offset=16
                  br $B5
                end
                local.get $l2
                i32.const 0
                i32.store offset=16
              end
              local.get $l2
              local.get $l3
              i32.const 1
              local.get $l2
              i32.const 16
              i32.add
              call $_ZN5alloc7raw_vec11finish_grow17h684e32ad59c880d2E
              local.get $l2
              i32.const 8
              i32.add
              i32.load
              local.set $l3
              local.get $l2
              i32.load offset=4
              local.set $l5
              local.get $l2
              i32.load
              i32.const 1
              i32.eq
              br_if $B3
              local.get $p1
              local.get $l5
              i32.store
              local.get $p1
              i32.const 4
              i32.add
              local.get $l3
              i32.store
            end
            local.get $l4
            local.get $l3
            i32.eq
            br_if $B2
            local.get $l4
            i32.const 1
            i32.add
            local.set $l3
            local.get $p1
            i32.load
            local.set $l5
            br $B0
          end
          local.get $l3
          i32.eqz
          br_if $B1
          local.get $l5
          local.get $l3
          call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
          unreachable
        end
        local.get $l4
        i32.const 1
        i32.add
        local.tee $l3
        local.get $l4
        i32.lt_u
        br_if $B1
        local.get $l4
        i32.const 1
        i32.shl
        local.tee $l5
        local.get $l3
        local.get $l5
        local.get $l3
        i32.gt_u
        select
        local.tee $l5
        i32.const 8
        local.get $l5
        i32.const 8
        i32.gt_u
        select
        local.set $l5
        block $B7
          block $B8
            local.get $l4
            i32.eqz
            br_if $B8
            local.get $l2
            i32.const 16
            i32.add
            i32.const 8
            i32.add
            i32.const 1
            i32.store
            local.get $l2
            local.get $l4
            i32.store offset=20
            local.get $l2
            local.get $p1
            i32.load
            i32.store offset=16
            br $B7
          end
          local.get $l2
          i32.const 0
          i32.store offset=16
        end
        local.get $l2
        local.get $l5
        i32.const 1
        local.get $l2
        i32.const 16
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h684e32ad59c880d2E
        local.get $l2
        i32.const 8
        i32.add
        i32.load
        local.set $l6
        local.get $l2
        i32.load offset=4
        local.set $l5
        block $B9
          local.get $l2
          i32.load
          i32.const 1
          i32.eq
          br_if $B9
          local.get $p1
          local.get $l5
          i32.store
          local.get $p1
          i32.const 4
          i32.add
          local.get $l6
          i32.store
          br $B0
        end
        local.get $l6
        i32.eqz
        br_if $B1
        local.get $l5
        local.get $l6
        call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
        unreachable
      end
      call $_ZN5alloc7raw_vec17capacity_overflow17hfd481cf132d45bc8E
      unreachable
    end
    local.get $l5
    local.get $l4
    i32.add
    i32.const 0
    i32.store8
    local.get $p1
    local.get $l3
    i32.store offset=8
    block $B10
      block $B11
        block $B12
          local.get $p1
          i32.const 4
          i32.add
          i32.load
          local.tee $l4
          local.get $l3
          i32.gt_u
          br_if $B12
          local.get $l5
          local.set $p1
          br $B11
        end
        block $B13
          local.get $l3
          br_if $B13
          i32.const 1
          local.set $p1
          local.get $l5
          local.get $l4
          i32.const 1
          call $__rust_dealloc
          br $B11
        end
        local.get $l5
        local.get $l4
        i32.const 1
        local.get $l3
        call $__rust_realloc
        local.tee $p1
        i32.eqz
        br_if $B10
      end
      local.get $p0
      local.get $l3
      i32.store offset=4
      local.get $p0
      local.get $p1
      i32.store
      local.get $l2
      i32.const 32
      i32.add
      global.set $g0
      return
    end
    local.get $l3
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
    unreachable)
  (func $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h640ade9e579b53c1E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p0
              i32.load8_u
              br_table $B3 $B4 $B2 $B3
            end
            i32.const 1049516
            local.set $l3
            i32.const 22
            local.set $l4
            block $B5
              block $B6
                block $B7
                  block $B8
                    block $B9
                      block $B10
                        block $B11
                          block $B12
                            block $B13
                              block $B14
                                block $B15
                                  block $B16
                                    block $B17
                                      block $B18
                                        block $B19
                                          block $B20
                                            block $B21
                                              block $B22
                                                block $B23
                                                  local.get $p0
                                                  i32.load8_u offset=1
                                                  br_table $B23 $B22 $B21 $B20 $B19 $B18 $B17 $B16 $B15 $B14 $B13 $B12 $B11 $B10 $B9 $B8 $B7 $B5 $B23
                                                end
                                                i32.const 1049797
                                                local.set $l3
                                                i32.const 16
                                                local.set $l4
                                                br $B5
                                              end
                                              i32.const 1049780
                                              local.set $l3
                                              i32.const 17
                                              local.set $l4
                                              br $B5
                                            end
                                            i32.const 1049762
                                            local.set $l3
                                            i32.const 18
                                            local.set $l4
                                            br $B5
                                          end
                                          i32.const 1049746
                                          local.set $l3
                                          i32.const 16
                                          local.set $l4
                                          br $B5
                                        end
                                        i32.const 1049728
                                        local.set $l3
                                        i32.const 18
                                        local.set $l4
                                        br $B5
                                      end
                                      i32.const 1049715
                                      local.set $l3
                                      i32.const 13
                                      local.set $l4
                                      br $B5
                                    end
                                    i32.const 1049701
                                    local.set $l3
                                    br $B6
                                  end
                                  i32.const 1049680
                                  local.set $l3
                                  i32.const 21
                                  local.set $l4
                                  br $B5
                                end
                                i32.const 1049669
                                local.set $l3
                                i32.const 11
                                local.set $l4
                                br $B5
                              end
                              i32.const 1049648
                              local.set $l3
                              i32.const 21
                              local.set $l4
                              br $B5
                            end
                            i32.const 1049627
                            local.set $l3
                            i32.const 21
                            local.set $l4
                            br $B5
                          end
                          i32.const 1049604
                          local.set $l3
                          i32.const 23
                          local.set $l4
                          br $B5
                        end
                        i32.const 1049592
                        local.set $l3
                        i32.const 12
                        local.set $l4
                        br $B5
                      end
                      i32.const 1049583
                      local.set $l3
                      i32.const 9
                      local.set $l4
                      br $B5
                    end
                    i32.const 1049573
                    local.set $l3
                    i32.const 10
                    local.set $l4
                    br $B5
                  end
                  i32.const 1049552
                  local.set $l3
                  i32.const 21
                  local.set $l4
                  br $B5
                end
                i32.const 1049538
                local.set $l3
              end
              i32.const 14
              local.set $l4
            end
            local.get $l2
            i32.const 60
            i32.add
            i32.const 1
            i32.store
            local.get $l2
            local.get $l4
            i32.store offset=28
            local.get $l2
            local.get $l3
            i32.store offset=24
            local.get $l2
            i32.const 8
            i32.store offset=12
            local.get $l2
            i64.const 1
            i64.store offset=44 align=4
            local.get $l2
            i32.const 1049816
            i32.store offset=40
            local.get $l2
            local.get $l2
            i32.const 24
            i32.add
            i32.store offset=8
            local.get $l2
            local.get $l2
            i32.const 8
            i32.add
            i32.store offset=56
            local.get $p1
            local.get $l2
            i32.const 40
            i32.add
            call $_ZN4core3fmt9Formatter9write_fmt17hbbc427c9716a7dbcE
            local.set $p0
            br $B1
          end
          local.get $l2
          local.get $p0
          i32.const 4
          i32.add
          i32.load
          i32.store offset=4
          i32.const 20
          i32.const 1
          call $__rust_alloc
          local.tee $p0
          i32.eqz
          br_if $B0
          local.get $p0
          i32.const 16
          i32.add
          i32.const 0
          i32.load offset=1051068 align=1
          i32.store align=1
          local.get $p0
          i32.const 8
          i32.add
          i32.const 0
          i64.load offset=1051060 align=1
          i64.store align=1
          local.get $p0
          i32.const 0
          i64.load offset=1051052 align=1
          i64.store align=1
          local.get $l2
          i64.const 85899345940
          i64.store offset=12 align=4
          local.get $l2
          local.get $p0
          i32.store offset=8
          local.get $l2
          i32.const 40
          i32.add
          i32.const 20
          i32.add
          i32.const 2
          i32.store
          local.get $l2
          i32.const 36
          i32.add
          i32.const 9
          i32.store
          local.get $l2
          i64.const 3
          i64.store offset=44 align=4
          local.get $l2
          i32.const 1049836
          i32.store offset=40
          local.get $l2
          i32.const 10
          i32.store offset=28
          local.get $l2
          local.get $l2
          i32.const 24
          i32.add
          i32.store offset=56
          local.get $l2
          local.get $l2
          i32.const 4
          i32.add
          i32.store offset=32
          local.get $l2
          local.get $l2
          i32.const 8
          i32.add
          i32.store offset=24
          local.get $p1
          local.get $l2
          i32.const 40
          i32.add
          call $_ZN4core3fmt9Formatter9write_fmt17hbbc427c9716a7dbcE
          local.set $p0
          local.get $l2
          i32.load offset=8
          local.tee $p1
          i32.eqz
          br_if $B1
          local.get $l2
          i32.load offset=12
          local.tee $l3
          i32.eqz
          br_if $B1
          local.get $p1
          local.get $l3
          i32.const 1
          call $__rust_dealloc
          br $B1
        end
        local.get $p0
        i32.const 4
        i32.add
        i32.load
        local.tee $p0
        i32.load
        local.get $p1
        local.get $p0
        i32.load offset=4
        i32.load offset=32
        call_indirect (type $t2) $T0
        local.set $p0
      end
      local.get $l2
      i32.const 64
      i32.add
      global.set $g0
      local.get $p0
      return
    end
    i32.const 20
    i32.const 1
    call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
    unreachable)
  (func $_ZN3std9panicking15begin_panic_fmt17hf0ddb2cbe0cdc73aE (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    call $_ZN4core5panic8Location6caller17hece3bb8b9903df35E
    i32.store offset=12
    local.get $l2
    local.get $p0
    i32.store offset=8
    local.get $l2
    i32.const 1048904
    i32.store offset=4
    local.get $l2
    i32.const 1048780
    i32.store
    local.get $l2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN3std5error5Error7type_id17h3b13ad09f2d121c4E (type $t11) (param $p0 i32) (result i64)
    i64.const -4350135987026107355)
  (func $_ZN3std5error5Error9backtrace17hcd2abcae457e1561E (type $t4) (param $p0 i32) (result i32)
    i32.const 0)
  (func $_ZN3std5error5Error5cause17h8214aa27e0c9608bE (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    i32.const 0
    i32.store)
  (func $_ZN243_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$std..error..Error$GT$11description17h8130d7f7dfc98ec4E (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i32.load offset=8
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.load
    i32.store)
  (func $_ZN244_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Display$GT$3fmt17h3cd45fe01c227ac7E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=8
    local.get $p1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h0c505ead2e56acc7E)
  (func $_ZN242_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Debug$GT$3fmt17h37d3a9c04493b89bE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=8
    local.get $p1
    call $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a288c25be52f87aE)
  (func $_ZN3std4sync4once4Once10call_inner17hd3d269a4946f2df2E (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    local.get $l4
    i32.const 16
    i32.add
    i32.const 2
    i32.or
    local.set $l5
    local.get $p0
    i32.load
    local.set $l6
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $p1
                br_if $B5
                br $B4
              end
              loop $L6
                block $B7
                  block $B8
                    local.get $l6
                    local.tee $p1
                    br_table $B8 $B8 $B7 $B1 $B7
                  end
                  local.get $p0
                  i32.const 2
                  local.get $p0
                  i32.load
                  local.tee $l6
                  local.get $l6
                  local.get $p1
                  i32.eq
                  local.tee $l7
                  select
                  i32.store
                  local.get $l7
                  i32.eqz
                  br_if $L6
                  br $B2
                end
                local.get $p1
                i32.const 3
                i32.and
                i32.const 2
                i32.ne
                br_if $B3
                block $B9
                  loop $L10
                    local.get $p1
                    local.set $l6
                    block $B11
                      i32.const 0
                      i32.load offset=1054864
                      i32.const 1
                      i32.eq
                      br_if $B11
                      i32.const 0
                      i64.const 1
                      i64.store offset=1054864 align=4
                      i32.const 0
                      i32.const 0
                      i32.store offset=1054872
                    end
                    i32.const 1054868
                    call $_ZN3std10sys_common11thread_info10ThreadInfo4with28_$u7b$$u7b$closure$u7d$$u7d$17hd667a7d84594570aE
                    local.set $l7
                    local.get $p0
                    local.get $l5
                    local.get $p0
                    i32.load
                    local.tee $p1
                    local.get $p1
                    local.get $l6
                    i32.eq
                    local.tee $l8
                    select
                    i32.store
                    local.get $l4
                    i32.const 0
                    i32.store8 offset=24
                    local.get $l4
                    local.get $l7
                    i32.store offset=16
                    local.get $l4
                    local.get $l6
                    i32.const -4
                    i32.and
                    i32.store offset=20
                    block $B12
                      local.get $l8
                      br_if $B12
                      block $B13
                        local.get $l4
                        i32.load offset=16
                        local.tee $l6
                        i32.eqz
                        br_if $B13
                        local.get $l6
                        local.get $l6
                        i32.load
                        local.tee $l7
                        i32.const -1
                        i32.add
                        i32.store
                        local.get $l7
                        i32.const 1
                        i32.ne
                        br_if $B13
                        local.get $l4
                        i32.const 16
                        i32.add
                        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hec1f1c349e161980E
                      end
                      local.get $p1
                      i32.const 3
                      i32.and
                      i32.const 2
                      i32.eq
                      br_if $L10
                      br $B9
                    end
                  end
                  block $B14
                    local.get $l4
                    i32.load8_u offset=24
                    br_if $B14
                    loop $L15
                      call $_ZN3std6thread4park17h7ce754abe2de9354E
                      local.get $l4
                      i32.load8_u offset=24
                      i32.eqz
                      br_if $L15
                    end
                  end
                  local.get $l4
                  i32.load offset=16
                  local.tee $p1
                  i32.eqz
                  br_if $B9
                  local.get $p1
                  local.get $p1
                  i32.load
                  local.tee $l6
                  i32.const -1
                  i32.add
                  i32.store
                  local.get $l6
                  i32.const 1
                  i32.ne
                  br_if $B9
                  local.get $l4
                  i32.const 16
                  i32.add
                  call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hec1f1c349e161980E
                end
                local.get $p0
                i32.load
                local.set $l6
                br $L6
              end
            end
            loop $L16
              block $B17
                block $B18
                  local.get $l6
                  br_table $B18 $B0 $B17 $B1 $B17
                end
                local.get $p0
                local.get $p0
                i32.load
                local.tee $l6
                i32.const 2
                local.get $l6
                select
                i32.store
                local.get $l6
                br_if $L16
                i32.const 0
                local.set $p1
                br $B2
              end
              local.get $l6
              i32.const 3
              i32.and
              i32.const 2
              i32.ne
              br_if $B3
              block $B19
                block $B20
                  loop $L21
                    local.get $l6
                    local.set $p1
                    block $B22
                      i32.const 0
                      i32.load offset=1054864
                      i32.const 1
                      i32.eq
                      br_if $B22
                      i32.const 0
                      i64.const 1
                      i64.store offset=1054864 align=4
                      i32.const 0
                      i32.const 0
                      i32.store offset=1054872
                    end
                    i32.const 1054868
                    call $_ZN3std10sys_common11thread_info10ThreadInfo4with28_$u7b$$u7b$closure$u7d$$u7d$17hd667a7d84594570aE
                    local.set $l7
                    local.get $p0
                    local.get $l5
                    local.get $p0
                    i32.load
                    local.tee $l6
                    local.get $l6
                    local.get $p1
                    i32.eq
                    select
                    i32.store
                    local.get $l4
                    i32.const 0
                    i32.store8 offset=24
                    local.get $l4
                    local.get $l7
                    i32.store offset=16
                    local.get $l4
                    local.get $p1
                    i32.const -4
                    i32.and
                    i32.store offset=20
                    block $B23
                      block $B24
                        local.get $l6
                        local.get $p1
                        i32.ne
                        br_if $B24
                        local.get $l4
                        i32.load8_u offset=24
                        i32.eqz
                        br_if $B23
                        br $B20
                      end
                      block $B25
                        local.get $l4
                        i32.load offset=16
                        local.tee $p1
                        i32.eqz
                        br_if $B25
                        local.get $p1
                        local.get $p1
                        i32.load
                        local.tee $l7
                        i32.const -1
                        i32.add
                        i32.store
                        local.get $l7
                        i32.const 1
                        i32.ne
                        br_if $B25
                        local.get $l4
                        i32.const 16
                        i32.add
                        call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hec1f1c349e161980E
                      end
                      local.get $l6
                      i32.const 3
                      i32.and
                      i32.const 2
                      i32.eq
                      br_if $L21
                      br $B19
                    end
                  end
                  loop $L26
                    call $_ZN3std6thread4park17h7ce754abe2de9354E
                    local.get $l4
                    i32.load8_u offset=24
                    i32.eqz
                    br_if $L26
                  end
                end
                local.get $l4
                i32.load offset=16
                local.tee $p1
                i32.eqz
                br_if $B19
                local.get $p1
                local.get $p1
                i32.load
                local.tee $l6
                i32.const -1
                i32.add
                i32.store
                local.get $l6
                i32.const 1
                i32.ne
                br_if $B19
                local.get $l4
                i32.const 16
                i32.add
                call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hec1f1c349e161980E
              end
              local.get $p0
              i32.load
              local.set $l6
              br $L16
            end
          end
          i32.const 1050148
          i32.const 57
          i32.const 1050208
          call $_ZN4core9panicking5panic17h8e74859c8f9988caE
          unreachable
        end
        local.get $l4
        local.get $p0
        i32.store offset=8
        local.get $l4
        i32.const 3
        i32.store offset=16
        local.get $l4
        local.get $p1
        i32.const 1
        i32.eq
        i32.store8 offset=20
        local.get $p2
        local.get $l4
        i32.const 16
        i32.add
        local.get $p3
        i32.load offset=12
        call_indirect (type $t3) $T0
        local.get $l4
        local.get $l4
        i32.load offset=16
        i32.store offset=12
        local.get $l4
        i32.const 8
        i32.add
        call $_ZN70_$LT$std..sync..once..WaiterQueue$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc9694b41bce43c33E
      end
      local.get $l4
      i32.const 32
      i32.add
      global.set $g0
      return
    end
    i32.const 1050224
    i32.const 42
    i32.const 1050268
    call $_ZN3std9panicking11begin_panic17h500a2937ff20cfd7E
    unreachable)
  (func $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17ha89304ead35eb8b7E (type $t13) (param $p0 i32) (param $p1 i32) (result i64)
    (local $l2 i32) (local $l3 i64) (local $l4 i64) (local $l5 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 3
    i32.store8 offset=12
    local.get $l2
    local.get $l2
    i32.const 4
    i32.add
    i32.store offset=8
    local.get $l2
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=24
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1050024
    local.get $l2
    i32.const 24
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p0
    local.get $l2
    i32.load8_u offset=12
    local.set $p1
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $p0
                i32.eqz
                br_if $B5
                local.get $p1
                i32.const 255
                i32.and
                i32.const 3
                i32.ne
                br_if $B4
                i32.const 15
                i32.const 1
                call $__rust_alloc
                local.tee $p1
                i32.eqz
                br_if $B2
                local.get $p1
                i32.const 7
                i32.add
                i32.const 0
                i64.load offset=1049989 align=1
                i64.store align=1
                local.get $p1
                i32.const 0
                i64.load offset=1049982 align=1
                i64.store align=1
                i32.const 12
                i32.const 4
                call $__rust_alloc
                local.tee $p0
                i32.eqz
                br_if $B1
                local.get $p0
                i64.const 64424509455
                i64.store offset=4 align=4
                local.get $p0
                local.get $p1
                i32.store
                i32.const 12
                i32.const 4
                call $__rust_alloc
                local.tee $p1
                i32.eqz
                br_if $B0
                local.get $p1
                i32.const 16
                i32.store8 offset=8
                local.get $p1
                i32.const 1049400
                i32.store offset=4
                local.get $p1
                local.get $p0
                i32.store
                local.get $p1
                local.get $l2
                i32.load16_u offset=24 align=1
                i32.store16 offset=9 align=1
                local.get $p1
                i32.const 11
                i32.add
                local.get $l2
                i32.const 26
                i32.add
                i32.load8_u
                i32.store8
                local.get $p1
                i64.extend_i32_u
                i64.const 24
                i64.shl
                local.set $l3
                i64.const 2
                local.set $l4
                br $B3
              end
              i64.const 3
              local.set $l4
              block $B6
                i32.const 0
                br_if $B6
                local.get $p1
                i32.const 3
                i32.and
                i32.const 2
                i32.eq
                br_if $B6
                br $B3
              end
              local.get $l2
              i32.const 16
              i32.add
              i32.load
              local.tee $p1
              i32.load
              local.get $p1
              i32.load offset=4
              i32.load
              call_indirect (type $t1) $T0
              block $B7
                local.get $p1
                i32.load offset=4
                local.tee $p0
                i32.load offset=4
                local.tee $l5
                i32.eqz
                br_if $B7
                local.get $p1
                i32.load
                local.get $l5
                local.get $p0
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get $l2
              i32.load offset=16
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              br $B3
            end
            local.get $p1
            i64.extend_i32_u
            i64.const 255
            i64.and
            local.set $l4
            local.get $l2
            i64.load32_u offset=13 align=1
            local.get $l2
            i32.const 17
            i32.add
            i64.load16_u align=1
            local.get $l2
            i32.const 19
            i32.add
            i64.load8_u
            i64.const 16
            i64.shl
            i64.or
            i64.const 32
            i64.shl
            i64.or
            local.set $l3
          end
          local.get $l2
          i32.const 48
          i32.add
          global.set $g0
          local.get $l3
          i64.const 8
          i64.shl
          local.get $l4
          i64.or
          return
        end
        i32.const 15
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
        unreachable
      end
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
      unreachable
    end
    i32.const 12
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
    unreachable)
  (func $_ZN3std2io5stdio6_print17h0ad43ed2b503000bE (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i64) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l1
    local.get $p0
    i64.load align=4
    i64.store offset=8
    local.get $l1
    i32.const 6
    i32.store offset=36
    local.get $l1
    i32.const 1049976
    i32.store offset=32
    block $B0
      block $B1
        block $B2
          i32.const 0
          i32.load8_u offset=1055337
          i32.eqz
          br_if $B2
          block $B3
            i32.const 0
            i32.load offset=1054856
            i32.const 1
            i32.eq
            br_if $B3
            i32.const 0
            i64.const 1
            i64.store offset=1054856
            br $B2
          end
          i32.const 0
          i32.load offset=1054860
          local.set $p0
          i32.const 0
          i32.const 0
          i32.store offset=1054860
          local.get $p0
          i32.eqz
          br_if $B2
          local.get $p0
          i32.load8_u offset=8
          local.set $l2
          i32.const 1
          local.set $l3
          local.get $p0
          i32.const 1
          i32.store8 offset=8
          local.get $l1
          local.get $l2
          i32.const 1
          i32.and
          local.tee $l2
          i32.store8 offset=47
          block $B4
            local.get $l2
            br_if $B4
            block $B5
              i32.const 0
              i32.load offset=1054848
              i32.eqz
              br_if $B5
              call $_ZN3std9panicking11panic_count17is_zero_slow_path17hc46895f918293b52E
              local.set $l3
            end
            local.get $l1
            i32.const 104
            i32.add
            i32.const 16
            i32.add
            local.get $l1
            i32.const 8
            i32.add
            i32.const 16
            i32.add
            i64.load
            i64.store
            local.get $l1
            i32.const 104
            i32.add
            i32.const 8
            i32.add
            local.get $l1
            i32.const 8
            i32.add
            i32.const 8
            i32.add
            i64.load
            i64.store
            local.get $l1
            local.get $l1
            i64.load offset=8
            i64.store offset=104
            local.get $p0
            i32.const 12
            i32.add
            local.get $l1
            i32.const 104
            i32.add
            call $_ZN3std2io5Write9write_fmt17h9702e9f704479c57E
            local.set $l4
            block $B6
              block $B7
                i32.const 0
                br_if $B7
                local.get $l4
                i32.wrap_i64
                i32.const 3
                i32.and
                i32.const 2
                i32.ne
                br_if $B6
              end
              local.get $l4
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              local.tee $l2
              i32.load
              local.get $l2
              i32.load offset=4
              i32.load
              call_indirect (type $t1) $T0
              block $B8
                local.get $l2
                i32.load offset=4
                local.tee $l5
                i32.load offset=4
                local.tee $l6
                i32.eqz
                br_if $B8
                local.get $l2
                i32.load
                local.get $l6
                local.get $l5
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get $l2
              i32.const 12
              i32.const 4
              call $__rust_dealloc
            end
            block $B9
              local.get $l3
              i32.eqz
              br_if $B9
              i32.const 0
              i32.load offset=1054848
              i32.eqz
              br_if $B9
              call $_ZN3std9panicking11panic_count17is_zero_slow_path17hc46895f918293b52E
              br_if $B9
              local.get $p0
              i32.const 1
              i32.store8 offset=9
            end
            local.get $p0
            i32.const 0
            i32.store8 offset=8
            i32.const 0
            i32.load offset=1054860
            local.set $l3
            i32.const 0
            local.get $p0
            i32.store offset=1054860
            local.get $l1
            local.get $l3
            i32.store offset=104
            local.get $l3
            i32.eqz
            br_if $B1
            local.get $l3
            local.get $l3
            i32.load
            local.tee $p0
            i32.const -1
            i32.add
            i32.store
            local.get $p0
            i32.const 1
            i32.ne
            br_if $B1
            local.get $l1
            i32.const 104
            i32.add
            call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h10390f6f2a161d8eE
            br $B1
          end
          local.get $l1
          i32.const 72
          i32.add
          i32.const 20
          i32.add
          i32.const 5
          i32.store
          local.get $l1
          i32.const 84
          i32.add
          i32.const 6
          i32.store
          local.get $l1
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 3
          i32.store
          local.get $l1
          local.get $l1
          i32.const 47
          i32.add
          i32.store offset=96
          local.get $l1
          i32.const 1049440
          i32.store offset=100
          local.get $l1
          i32.const 104
          i32.add
          i32.const 20
          i32.add
          i32.const 0
          i32.store
          local.get $l1
          i64.const 3
          i64.store offset=52 align=4
          local.get $l1
          i32.const 1050912
          i32.store offset=48
          local.get $l1
          i32.const 6
          i32.store offset=76
          local.get $l1
          i32.const 1048780
          i32.store offset=120
          local.get $l1
          i64.const 1
          i64.store offset=108 align=4
          local.get $l1
          i32.const 1051196
          i32.store offset=104
          local.get $l1
          local.get $l1
          i32.const 72
          i32.add
          i32.store offset=64
          local.get $l1
          local.get $l1
          i32.const 104
          i32.add
          i32.store offset=88
          local.get $l1
          local.get $l1
          i32.const 100
          i32.add
          i32.store offset=80
          local.get $l1
          local.get $l1
          i32.const 96
          i32.add
          i32.store offset=72
          local.get $l1
          i32.const 48
          i32.add
          i32.const 1051252
          call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
          unreachable
        end
        block $B10
          i32.const 0
          i32.load offset=1054800
          i32.const 3
          i32.eq
          br_if $B10
          local.get $l1
          i32.const 1054804
          i32.store offset=48
          i32.const 0
          i32.load offset=1054800
          i32.const 3
          i32.eq
          br_if $B10
          local.get $l1
          local.get $l1
          i32.const 48
          i32.add
          i32.store offset=72
          local.get $l1
          local.get $l1
          i32.const 72
          i32.add
          i32.store offset=104
          i32.const 1054800
          i32.const 1
          local.get $l1
          i32.const 104
          i32.add
          i32.const 1050112
          call $_ZN3std4sync4once4Once10call_inner17hd3d269a4946f2df2E
        end
        local.get $l1
        i32.const 1054804
        i32.store offset=100
        local.get $l1
        local.get $l1
        i32.const 100
        i32.add
        i32.store offset=72
        local.get $l1
        i32.const 104
        i32.add
        i32.const 16
        i32.add
        local.get $l1
        i32.const 8
        i32.add
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get $l1
        i32.const 104
        i32.add
        i32.const 8
        i32.add
        local.get $l1
        i32.const 8
        i32.add
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get $l1
        local.get $l1
        i64.load offset=8
        i64.store offset=104
        local.get $l1
        i32.const 72
        i32.add
        local.get $l1
        i32.const 104
        i32.add
        call $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17ha89304ead35eb8b7E
        local.tee $l4
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.set $p0
        local.get $l4
        i32.wrap_i64
        local.tee $l3
        i32.const 255
        i32.and
        i32.const 3
        i32.ne
        br_if $B0
        block $B11
          i32.const 0
          br_if $B11
          local.get $l3
          i32.const 3
          i32.and
          i32.const 2
          i32.ne
          br_if $B1
        end
        local.get $p0
        i32.load
        local.get $p0
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B12
          local.get $p0
          i32.load offset=4
          local.tee $l3
          i32.load offset=4
          local.tee $l2
          i32.eqz
          br_if $B12
          local.get $p0
          i32.load
          local.get $l2
          local.get $l3
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $l1
      i32.const 128
      i32.add
      global.set $g0
      return
    end
    local.get $l1
    local.get $p0
    i32.store offset=52
    local.get $l1
    local.get $l4
    i64.store32 offset=48
    local.get $l1
    i32.const 124
    i32.add
    i32.const 2
    i32.store
    local.get $l1
    i32.const 84
    i32.add
    i32.const 11
    i32.store
    local.get $l1
    i64.const 2
    i64.store offset=108 align=4
    local.get $l1
    i32.const 1049944
    i32.store offset=104
    local.get $l1
    i32.const 8
    i32.store offset=76
    local.get $l1
    local.get $l1
    i32.const 72
    i32.add
    i32.store offset=120
    local.get $l1
    local.get $l1
    i32.const 48
    i32.add
    i32.store offset=80
    local.get $l1
    local.get $l1
    i32.const 32
    i32.add
    i32.store offset=72
    local.get $l1
    i32.const 104
    i32.add
    i32.const 1049960
    call $_ZN3std9panicking15begin_panic_fmt17hf0ddb2cbe0cdc73aE
    unreachable)
  (func $_ZN3std2io5Write9write_fmt17h9702e9f704479c57E (type $t13) (param $p0 i32) (param $p1 i32) (result i64)
    (local $l2 i32) (local $l3 i64) (local $l4 i64) (local $l5 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 3
    i32.store8 offset=12
    local.get $l2
    local.get $p0
    i32.store offset=8
    local.get $l2
    i32.const 24
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 24
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=24
    local.get $l2
    i32.const 8
    i32.add
    i32.const 1050000
    local.get $l2
    i32.const 24
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p0
    local.get $l2
    i32.load8_u offset=12
    local.set $p1
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                local.get $p0
                i32.eqz
                br_if $B5
                local.get $p1
                i32.const 255
                i32.and
                i32.const 3
                i32.ne
                br_if $B4
                i32.const 15
                i32.const 1
                call $__rust_alloc
                local.tee $p1
                i32.eqz
                br_if $B3
                local.get $p1
                i32.const 7
                i32.add
                i32.const 0
                i64.load offset=1049989 align=1
                i64.store align=1
                local.get $p1
                i32.const 0
                i64.load offset=1049982 align=1
                i64.store align=1
                i32.const 12
                i32.const 4
                call $__rust_alloc
                local.tee $p0
                i32.eqz
                br_if $B2
                local.get $p0
                i64.const 64424509455
                i64.store offset=4 align=4
                local.get $p0
                local.get $p1
                i32.store
                i32.const 12
                i32.const 4
                call $__rust_alloc
                local.tee $p1
                i32.eqz
                br_if $B1
                local.get $p1
                i32.const 16
                i32.store8 offset=8
                local.get $p1
                i32.const 1049400
                i32.store offset=4
                local.get $p1
                local.get $p0
                i32.store
                local.get $p1
                local.get $l2
                i32.load16_u offset=24 align=1
                i32.store16 offset=9 align=1
                local.get $p1
                i32.const 11
                i32.add
                local.get $l2
                i32.const 26
                i32.add
                i32.load8_u
                i32.store8
                local.get $p1
                i64.extend_i32_u
                i64.const 24
                i64.shl
                local.set $l3
                i64.const 2
                local.set $l4
                br $B0
              end
              i64.const 3
              local.set $l4
              block $B6
                i32.const 0
                br_if $B6
                local.get $p1
                i32.const 3
                i32.and
                i32.const 2
                i32.eq
                br_if $B6
                br $B0
              end
              local.get $l2
              i32.const 16
              i32.add
              i32.load
              local.tee $p1
              i32.load
              local.get $p1
              i32.load offset=4
              i32.load
              call_indirect (type $t1) $T0
              block $B7
                local.get $p1
                i32.load offset=4
                local.tee $p0
                i32.load offset=4
                local.tee $l5
                i32.eqz
                br_if $B7
                local.get $p1
                i32.load
                local.get $l5
                local.get $p0
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get $l2
              i32.load offset=16
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              br $B0
            end
            local.get $p1
            i64.extend_i32_u
            i64.const 255
            i64.and
            local.set $l4
            local.get $l2
            i64.load32_u offset=13 align=1
            local.get $l2
            i32.const 17
            i32.add
            i64.load16_u align=1
            local.get $l2
            i32.const 19
            i32.add
            i64.load8_u
            i64.const 16
            i64.shl
            i64.or
            i64.const 32
            i64.shl
            i64.or
            local.set $l3
            br $B0
          end
          i32.const 15
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
          unreachable
        end
        i32.const 12
        i32.const 4
        call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
        unreachable
      end
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
      unreachable
    end
    local.get $l2
    i32.const 48
    i32.add
    global.set $g0
    local.get $l3
    i64.const 8
    i64.shl
    local.get $l4
    i64.or)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adaptor$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h6aa37e88d6e88ebdE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p1
    local.get $p2
    i32.add
    call $_ZN119_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc311003eb08d80adE
    i32.const 0)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adaptor$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17he4cd47fc37292186E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i64) (local $l5 i32)
    i32.const 0
    local.set $l3
    block $B0
      local.get $p0
      i32.load
      local.get $p1
      local.get $p2
      call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17h5db416053b1560e7E
      local.tee $l4
      i32.wrap_i64
      local.tee $p1
      i32.const 255
      i32.and
      i32.const 3
      i32.eq
      br_if $B0
      local.get $l4
      i64.const 8
      i64.shr_u
      local.set $l4
      block $B1
        block $B2
          i32.const 0
          br_if $B2
          local.get $p0
          i32.load8_u offset=4
          i32.const 2
          i32.ne
          br_if $B1
        end
        local.get $p0
        i32.const 8
        i32.add
        i32.load
        local.tee $l3
        i32.load
        local.get $l3
        i32.load offset=4
        i32.load
        call_indirect (type $t1) $T0
        block $B3
          local.get $l3
          i32.load offset=4
          local.tee $p2
          i32.load offset=4
          local.tee $l5
          i32.eqz
          br_if $B3
          local.get $l3
          i32.load
          local.get $l5
          local.get $p2
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get $p0
        i32.load offset=8
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get $p0
      local.get $p1
      i32.store8 offset=4
      local.get $p0
      i32.const 11
      i32.add
      local.get $l4
      i64.const 48
      i64.shr_u
      i64.store8
      local.get $p0
      i32.const 9
      i32.add
      local.get $l4
      i64.const 32
      i64.shr_u
      i64.store16 align=1
      local.get $p0
      i32.const 5
      i32.add
      local.get $l4
      i64.store32 align=1
      i32.const 1
      local.set $l3
    end
    local.get $l3)
  (func $_ZN3std10sys_common13thread_parker7generic6Parker6unpark17hf894a53e2be587d7E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 96
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $p0
    i32.load
    local.set $l2
    local.get $p0
    i32.const 2
    i32.store
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $l2
            br_table $B1 $B2 $B1 $B3
          end
          i32.const 1050992
          i32.const 28
          i32.const 1051020
          call $_ZN3std9panicking11begin_panic17h500a2937ff20cfd7E
          unreachable
        end
        local.get $p0
        i32.load8_u offset=4
        local.set $l2
        local.get $p0
        i32.const 1
        i32.store8 offset=4
        local.get $l1
        local.get $l2
        i32.const 1
        i32.and
        local.tee $l2
        i32.store8 offset=15
        local.get $l2
        br_if $B0
        local.get $p0
        i32.const 4
        i32.add
        local.set $l2
        i32.const 0
        local.set $l3
        block $B4
          block $B5
            block $B6
              block $B7
                block $B8
                  i32.const 0
                  i32.load offset=1054848
                  i32.eqz
                  br_if $B8
                  call $_ZN3std9panicking11panic_count17is_zero_slow_path17hc46895f918293b52E
                  local.set $l3
                  local.get $p0
                  i32.const 5
                  i32.add
                  i32.load8_u
                  i32.eqz
                  br_if $B6
                  local.get $l3
                  i32.const 1
                  i32.xor
                  local.set $l3
                  br $B7
                end
                local.get $p0
                i32.const 5
                i32.add
                i32.load8_u
                i32.eqz
                br_if $B5
              end
              local.get $l1
              local.get $l3
              i32.store8 offset=76
              local.get $l1
              local.get $l2
              i32.store offset=72
              i32.const 1049140
              i32.const 43
              local.get $l1
              i32.const 72
              i32.add
              i32.const 1049184
              i32.const 1051036
              call $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE
              unreachable
            end
            local.get $l3
            i32.eqz
            br_if $B4
          end
          i32.const 0
          i32.load offset=1054848
          i32.eqz
          br_if $B4
          call $_ZN3std9panicking11panic_count17is_zero_slow_path17hc46895f918293b52E
          br_if $B4
          local.get $p0
          i32.const 5
          i32.add
          i32.const 1
          i32.store8
        end
        local.get $l2
        i32.const 0
        i32.store8
      end
      local.get $l1
      i32.const 96
      i32.add
      global.set $g0
      return
    end
    local.get $l1
    i32.const 40
    i32.add
    i32.const 20
    i32.add
    i32.const 5
    i32.store
    local.get $l1
    i32.const 52
    i32.add
    i32.const 6
    i32.store
    local.get $l1
    i32.const 16
    i32.add
    i32.const 20
    i32.add
    i32.const 3
    i32.store
    local.get $l1
    local.get $l1
    i32.const 15
    i32.add
    i32.store offset=64
    local.get $l1
    i32.const 1049440
    i32.store offset=68
    local.get $l1
    i32.const 72
    i32.add
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get $l1
    i64.const 3
    i64.store offset=20 align=4
    local.get $l1
    i32.const 1050912
    i32.store offset=16
    local.get $l1
    i32.const 6
    i32.store offset=44
    local.get $l1
    i32.const 1048780
    i32.store offset=88
    local.get $l1
    i64.const 1
    i64.store offset=76 align=4
    local.get $l1
    i32.const 1051196
    i32.store offset=72
    local.get $l1
    local.get $l1
    i32.const 40
    i32.add
    i32.store offset=32
    local.get $l1
    local.get $l1
    i32.const 72
    i32.add
    i32.store offset=56
    local.get $l1
    local.get $l1
    i32.const 68
    i32.add
    i32.store offset=48
    local.get $l1
    local.get $l1
    i32.const 64
    i32.add
    i32.store offset=40
    local.get $l1
    i32.const 16
    i32.add
    i32.const 1051252
    call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
    unreachable)
  (func $_ZN70_$LT$std..sync..once..WaiterQueue$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc9694b41bce43c33E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $p0
    i32.load
    local.tee $l2
    i32.load
    local.set $l3
    local.get $l2
    local.get $p0
    i32.load offset=4
    i32.store
    local.get $l1
    local.get $l3
    i32.const 3
    i32.and
    local.tee $p0
    i32.store offset=12
    block $B0
      local.get $p0
      i32.const 2
      i32.ne
      br_if $B0
      block $B1
        block $B2
          local.get $l3
          i32.const -4
          i32.and
          local.tee $l3
          i32.eqz
          br_if $B2
          loop $L3
            local.get $l3
            i32.load offset=4
            local.set $l2
            local.get $l3
            i32.load
            local.set $p0
            local.get $l3
            i32.const 0
            i32.store
            local.get $p0
            i32.eqz
            br_if $B1
            local.get $l3
            i32.const 1
            i32.store8 offset=8
            local.get $l1
            local.get $p0
            i32.store offset=16
            local.get $p0
            i32.const 24
            i32.add
            call $_ZN3std10sys_common13thread_parker7generic6Parker6unpark17hf894a53e2be587d7E
            local.get $p0
            local.get $p0
            i32.load
            local.tee $l3
            i32.const -1
            i32.add
            i32.store
            block $B4
              local.get $l3
              i32.const 1
              i32.ne
              br_if $B4
              local.get $l1
              i32.const 16
              i32.add
              call $_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17hec1f1c349e161980E
            end
            local.get $l2
            local.set $l3
            local.get $l2
            br_if $L3
          end
        end
        local.get $l1
        i32.const 64
        i32.add
        global.set $g0
        return
      end
      i32.const 1049048
      i32.const 43
      i32.const 1050304
      call $_ZN4core9panicking5panic17h8e74859c8f9988caE
      unreachable
    end
    local.get $l1
    i32.const 52
    i32.add
    i32.const 7
    i32.store
    local.get $l1
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get $l1
    i64.const 3
    i64.store offset=20 align=4
    local.get $l1
    i32.const 1048880
    i32.store offset=16
    local.get $l1
    i32.const 7
    i32.store offset=44
    local.get $l1
    local.get $l1
    i32.const 12
    i32.add
    i32.store offset=56
    local.get $l1
    i32.const 1050284
    i32.store offset=60
    local.get $l1
    local.get $l1
    i32.const 40
    i32.add
    i32.store offset=32
    local.get $l1
    local.get $l1
    i32.const 60
    i32.add
    i32.store offset=48
    local.get $l1
    local.get $l1
    i32.const 56
    i32.add
    i32.store offset=40
    local.get $l1
    i32.const 16
    i32.add
    i32.const 1050288
    call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
    unreachable)
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h706c23cb5ca53ba5E (type $t1) (param $p0 i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get $l1
    local.get $p0
    i64.load align=4
    i64.store
    local.get $l1
    call $_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17hce5f3f65f96f2f2aE
    unreachable)
  (func $_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17hce5f3f65f96f2f2aE (type $t1) (param $p0 i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    local.get $p0
    i64.load align=4
    i64.store offset=8
    local.get $l1
    i32.const 8
    i32.add
    i32.const 1050760
    i32.const 0
    local.get $p0
    i32.load offset=8
    call $_ZN3std9panicking20rust_panic_with_hook17h4f753dc70b771d8eE
    unreachable)
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h92808941d97e9b21E (type $t1) (param $p0 i32)
    (local $l1 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $l1
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get $l1
    local.get $p0
    i64.load align=4
    i64.store
    local.get $l1
    call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h5c9fc29957309ae8E
    unreachable)
  (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h5c9fc29957309ae8E (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $p0
    i32.load
    local.tee $l2
    i32.const 20
    i32.add
    i32.load
    local.set $l3
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $l2
            i32.load offset=4
            br_table $B3 $B2 $B0
          end
          local.get $l3
          br_if $B0
          i32.const 1048780
          local.set $l2
          i32.const 0
          local.set $l3
          br $B1
        end
        local.get $l3
        br_if $B0
        local.get $l2
        i32.load
        local.tee $l2
        i32.load offset=4
        local.set $l3
        local.get $l2
        i32.load
        local.set $l2
      end
      local.get $l1
      local.get $l3
      i32.store offset=4
      local.get $l1
      local.get $l2
      i32.store
      local.get $l1
      i32.const 1050708
      local.get $p0
      i32.load offset=4
      call $_ZN4core5panic9PanicInfo7message17h37659a96ee5da768E
      local.get $p0
      i32.load offset=8
      call $_ZN3std9panicking20rust_panic_with_hook17h4f753dc70b771d8eE
      unreachable
    end
    local.get $l1
    i32.const 0
    i32.store offset=4
    local.get $l1
    local.get $l2
    i32.store
    local.get $l1
    i32.const 1050688
    local.get $p0
    i32.load offset=4
    call $_ZN4core5panic9PanicInfo7message17h37659a96ee5da768E
    local.get $p0
    i32.load offset=8
    call $_ZN3std9panicking20rust_panic_with_hook17h4f753dc70b771d8eE
    unreachable)
  (func $_ZN3std3sys4wasm7condvar7Condvar4wait17h45143a33b7b04f01E (type $t3) (param $p0 i32) (param $p1 i32)
    i32.const 1051072
    i32.const 26
    i32.const 1051148
    call $_ZN3std9panicking11begin_panic17h500a2937ff20cfd7E
    unreachable)
  (func $_ZN82_$LT$std..sys_common..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h31d673d913f15a5dE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    i32.const 1050408
    i32.const 25
    local.get $p1
    call $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a288c25be52f87aE)
  (func $_ZN3std5alloc24default_alloc_error_hook17h9e541ae6e1f41d08E (type $t3) (param $p0 i32) (param $p1 i32))
  (func $rust_oom (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    local.get $p0
    local.get $p1
    i32.const 0
    i32.load offset=1054832
    local.tee $l2
    i32.const 12
    local.get $l2
    select
    call_indirect (type $t3) $T0
    unreachable
    unreachable)
  (func $__rdl_alloc (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h7e46d7a6b7d95ef5E)
  (func $__rdl_dealloc (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p0
    call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8d5ccda4ec9dab0cE)
  (func $__rdl_realloc (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p2
            i32.const 9
            i32.lt_u
            br_if $B3
            local.get $p3
            local.get $p2
            call $_ZN8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h7e46d7a6b7d95ef5E
            local.tee $p2
            br_if $B2
            i32.const 0
            return
          end
          i32.const 0
          local.set $p2
          i32.const 0
          call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E
          local.set $p1
          local.get $p1
          local.get $p1
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          i32.sub
          i32.const 20
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          i32.sub
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          i32.sub
          i32.const -65544
          i32.add
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee $p1
          i32.const 0
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          i32.const 2
          i32.shl
          i32.sub
          local.tee $l4
          local.get $p1
          local.get $l4
          i32.lt_u
          select
          local.get $p3
          i32.le_u
          br_if $B1
          i32.const 16
          local.get $p3
          i32.const 4
          i32.add
          i32.const 16
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          i32.const -5
          i32.add
          local.get $p3
          i32.gt_u
          select
          i32.const 8
          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
          local.set $l4
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h0a47b93129983de6E
          local.set $p1
          local.get $p1
          local.get $p1
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
          local.tee $l5
          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
          local.set $l6
          block $B4
            block $B5
              block $B6
                block $B7
                  block $B8
                    block $B9
                      block $B10
                        block $B11
                          block $B12
                            local.get $p1
                            call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17hdf27da0aa80094a5E
                            br_if $B12
                            local.get $l5
                            local.get $l4
                            i32.ge_u
                            br_if $B11
                            local.get $l6
                            i32.const 0
                            i32.load offset=1055288
                            i32.eq
                            br_if $B10
                            local.get $l6
                            i32.const 0
                            i32.load offset=1055284
                            i32.eq
                            br_if $B9
                            local.get $l6
                            call $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17hc320b72a27c644b9E
                            br_if $B4
                            local.get $l6
                            call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
                            local.tee $l7
                            local.get $l5
                            i32.add
                            local.tee $l5
                            local.get $l4
                            i32.lt_u
                            br_if $B4
                            local.get $l5
                            local.get $l4
                            i32.sub
                            local.set $l8
                            local.get $l7
                            i32.const 256
                            i32.lt_u
                            br_if $B8
                            local.get $l6
                            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18unlink_large_chunk17h3bb903924552643eE
                            br $B7
                          end
                          local.get $p1
                          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
                          local.set $l5
                          local.get $l4
                          i32.const 256
                          i32.lt_u
                          br_if $B4
                          block $B13
                            local.get $l5
                            local.get $l4
                            i32.const 4
                            i32.add
                            i32.lt_u
                            br_if $B13
                            local.get $p1
                            local.set $l6
                            local.get $l5
                            local.get $l4
                            i32.sub
                            i32.const 131073
                            i32.lt_u
                            br_if $B5
                          end
                          i32.const 1054876
                          local.get $p1
                          local.get $p1
                          i32.load
                          local.tee $l7
                          i32.sub
                          local.get $l5
                          local.get $l7
                          i32.add
                          i32.const 16
                          i32.add
                          local.tee $l8
                          local.get $l4
                          i32.const 31
                          i32.add
                          i32.const 1054876
                          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9page_size17h510ceb489d40a04bE
                          call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
                          local.tee $l5
                          i32.const 1
                          call $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5remap17hfa6ee72199859c82E
                          local.tee $l4
                          i32.eqz
                          br_if $B4
                          local.get $l4
                          local.get $l7
                          i32.add
                          local.tee $l6
                          local.get $l5
                          local.get $l7
                          i32.sub
                          local.tee $l7
                          i32.const -16
                          i32.add
                          local.tee $l9
                          i32.store offset=4
                          call $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17h11539503ed18caffE
                          local.set $l10
                          local.get $l6
                          local.get $l9
                          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                          local.get $l10
                          i32.store offset=4
                          local.get $l6
                          local.get $l7
                          i32.const -12
                          i32.add
                          call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                          i32.const 0
                          i32.store offset=4
                          i32.const 0
                          i32.const 0
                          i32.load offset=1055292
                          local.get $l5
                          local.get $l8
                          i32.sub
                          i32.add
                          local.tee $l5
                          i32.store offset=1055292
                          i32.const 0
                          i32.const 0
                          i32.load offset=1055320
                          local.tee $l7
                          local.get $l4
                          local.get $l4
                          local.get $l7
                          i32.gt_u
                          select
                          i32.store offset=1055320
                          i32.const 0
                          i32.const 0
                          i32.load offset=1055296
                          local.tee $l4
                          local.get $l5
                          local.get $l4
                          local.get $l5
                          i32.gt_u
                          select
                          i32.store offset=1055296
                          br $B5
                        end
                        local.get $p1
                        local.set $l6
                        local.get $l5
                        local.get $l4
                        i32.sub
                        local.tee $l5
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
                        i32.lt_u
                        br_if $B5
                        local.get $p1
                        local.get $l4
                        call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                        local.set $l6
                        local.get $p1
                        local.get $l4
                        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
                        local.get $l6
                        local.get $l5
                        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
                        local.get $l6
                        local.get $l5
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h2d2ef18898d7852eE
                        br $B6
                      end
                      i32.const 0
                      i32.load offset=1055280
                      local.get $l5
                      i32.add
                      local.tee $l6
                      local.get $l4
                      i32.le_u
                      br_if $B4
                      local.get $p1
                      local.get $l4
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                      local.set $l5
                      local.get $p1
                      local.get $l4
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
                      local.get $l5
                      local.get $l6
                      local.get $l4
                      i32.sub
                      local.tee $l4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 0
                      local.get $l4
                      i32.store offset=1055280
                      i32.const 0
                      local.get $l5
                      i32.store offset=1055288
                      br $B6
                    end
                    i32.const 0
                    i32.load offset=1055276
                    local.get $l5
                    i32.add
                    local.tee $l6
                    local.get $l4
                    i32.lt_u
                    br_if $B4
                    block $B14
                      block $B15
                        local.get $l6
                        local.get $l4
                        i32.sub
                        local.tee $l5
                        i32.const 16
                        i32.const 8
                        call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
                        i32.ge_u
                        br_if $B15
                        local.get $p1
                        local.get $l6
                        call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
                        i32.const 0
                        local.set $l5
                        i32.const 0
                        local.set $l6
                        br $B14
                      end
                      local.get $p1
                      local.get $l4
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                      local.tee $l6
                      local.get $l5
                      call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                      local.set $l7
                      local.get $p1
                      local.get $l4
                      call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
                      local.get $l6
                      local.get $l5
                      call $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E
                      local.get $l7
                      call $_ZN8dlmalloc8dlmalloc5Chunk12clear_pinuse17h7e073a98eccee96bE
                    end
                    i32.const 0
                    local.get $l6
                    i32.store offset=1055284
                    i32.const 0
                    local.get $l5
                    i32.store offset=1055276
                    br $B6
                  end
                  block $B16
                    local.get $l6
                    i32.const 12
                    i32.add
                    i32.load
                    local.tee $l9
                    local.get $l6
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee $l6
                    i32.eq
                    br_if $B16
                    local.get $l6
                    local.get $l9
                    i32.store offset=12
                    local.get $l9
                    local.get $l6
                    i32.store offset=8
                    br $B7
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1054876
                  i32.const -2
                  local.get $l7
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store offset=1054876
                end
                block $B17
                  local.get $l8
                  i32.const 16
                  i32.const 8
                  call $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE
                  i32.lt_u
                  br_if $B17
                  local.get $p1
                  local.get $l4
                  call $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E
                  local.set $l6
                  local.get $p1
                  local.get $l4
                  call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
                  local.get $l6
                  local.get $l8
                  call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
                  local.get $l6
                  local.get $l8
                  call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h2d2ef18898d7852eE
                  br $B6
                end
                local.get $p1
                local.get $l5
                call $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE
              end
              local.get $p1
              local.set $l6
            end
            local.get $l6
            br_if $B0
          end
          local.get $p3
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17h7ab0b040e29210e9E
          local.tee $l4
          i32.eqz
          br_if $B1
          local.get $l4
          local.get $p0
          local.get $p3
          local.get $p1
          call $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E
          i32.const -8
          i32.const -4
          local.get $p1
          call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17hdf27da0aa80094a5E
          select
          i32.add
          local.tee $p2
          local.get $p2
          local.get $p3
          i32.gt_u
          select
          call $memcpy
          local.set $p3
          local.get $p0
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8d5ccda4ec9dab0cE
          local.get $p3
          return
        end
        local.get $p2
        local.get $p0
        local.get $p3
        local.get $p1
        local.get $p1
        local.get $p3
        i32.gt_u
        select
        call $memcpy
        drop
        local.get $p0
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8d5ccda4ec9dab0cE
      end
      local.get $p2
      return
    end
    local.get $l6
    call $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17hdf27da0aa80094a5E
    drop
    local.get $l6
    call $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E)
  (func $rust_begin_unwind (type $t1) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l1
    global.set $g0
    local.get $p0
    call $_ZN4core5panic9PanicInfo8location17hf82c87160e16bf94E
    i32.const 1050656
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17h8d3acfec673f4aefE
    local.set $l2
    local.get $p0
    call $_ZN4core5panic9PanicInfo7message17h37659a96ee5da768E
    call $_ZN4core6option15Option$LT$T$GT$6unwrap17hc1570540b608140fE
    local.set $l3
    local.get $l1
    local.get $l2
    i32.store offset=8
    local.get $l1
    local.get $p0
    i32.store offset=4
    local.get $l1
    local.get $l3
    i32.store
    local.get $l1
    call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h92808941d97e9b21E
    unreachable)
  (func $_ZN3std9panicking20rust_panic_with_hook17h4f753dc70b771d8eE (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l4
    global.set $g0
    i32.const 1
    local.set $l5
    i32.const 0
    i32.const 0
    i32.load offset=1054848
    i32.const 1
    i32.add
    i32.store offset=1054848
    block $B0
      block $B1
        block $B2
          block $B3
            i32.const 0
            i32.load offset=1055328
            i32.const 1
            i32.eq
            br_if $B3
            i32.const 0
            i64.const 4294967297
            i64.store offset=1055328
            br $B2
          end
          i32.const 0
          i32.const 0
          i32.load offset=1055332
          i32.const 1
          i32.add
          local.tee $l5
          i32.store offset=1055332
          local.get $l5
          i32.const 2
          i32.gt_u
          br_if $B1
        end
        local.get $l4
        local.get $p3
        i32.store offset=28
        local.get $l4
        local.get $p2
        i32.store offset=24
        local.get $l4
        i32.const 1048904
        i32.store offset=20
        local.get $l4
        i32.const 1048780
        i32.store offset=16
        i32.const 0
        i32.load offset=1054836
        local.tee $p2
        i32.const -1
        i32.le_s
        br_if $B1
        i32.const 0
        local.get $p2
        i32.const 1
        i32.add
        local.tee $p2
        i32.store offset=1054836
        block $B4
          i32.const 0
          i32.load offset=1054844
          local.tee $p3
          i32.eqz
          br_if $B4
          i32.const 0
          i32.load offset=1054840
          local.set $p2
          local.get $l4
          i32.const 8
          i32.add
          local.get $p0
          local.get $p1
          i32.load offset=16
          call_indirect (type $t3) $T0
          local.get $l4
          local.get $l4
          i64.load offset=8
          i64.store offset=16
          local.get $p2
          local.get $l4
          i32.const 16
          i32.add
          local.get $p3
          i32.load offset=12
          call_indirect (type $t3) $T0
          i32.const 0
          i32.load offset=1054836
          local.set $p2
        end
        i32.const 0
        local.get $p2
        i32.const -1
        i32.add
        i32.store offset=1054836
        local.get $l5
        i32.const 1
        i32.le_u
        br_if $B0
      end
      unreachable
      unreachable
    end
    local.get $p0
    local.get $p1
    call $rust_panic
    unreachable)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hff016b0cddab5adcE (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      local.get $p1
      i32.load offset=4
      local.tee $l3
      br_if $B0
      local.get $p1
      i32.const 4
      i32.add
      local.set $l3
      local.get $p1
      i32.load
      local.set $l4
      local.get $l2
      i32.const 0
      i32.store offset=32
      local.get $l2
      i64.const 1
      i64.store offset=24
      local.get $l2
      local.get $l2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get $l2
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.get $l4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get $l4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      local.get $l4
      i64.load align=4
      i64.store offset=40
      local.get $l2
      i32.const 36
      i32.add
      i32.const 1048740
      local.get $l2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
      drop
      local.get $l2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee $l4
      local.get $l2
      i32.load offset=32
      i32.store
      local.get $l2
      local.get $l2
      i64.load offset=24
      i64.store offset=8
      block $B1
        local.get $p1
        i32.load offset=4
        local.tee $l5
        i32.eqz
        br_if $B1
        local.get $p1
        i32.const 8
        i32.add
        i32.load
        local.tee $l6
        i32.eqz
        br_if $B1
        local.get $l5
        local.get $l6
        i32.const 1
        call $__rust_dealloc
      end
      local.get $l3
      local.get $l2
      i64.load offset=8
      i64.store align=4
      local.get $l3
      i32.const 8
      i32.add
      local.get $l4
      i32.load
      i32.store
      local.get $l3
      i32.load
      local.set $l3
    end
    local.get $p1
    i32.const 1
    i32.store offset=4
    local.get $p1
    i32.const 12
    i32.add
    i32.load
    local.set $l4
    local.get $p1
    i32.const 8
    i32.add
    local.tee $p1
    i32.load
    local.set $l5
    local.get $p1
    i64.const 0
    i64.store align=4
    block $B2
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee $p1
      br_if $B2
      i32.const 12
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
      unreachable
    end
    local.get $p1
    local.get $l4
    i32.store offset=8
    local.get $p1
    local.get $l5
    i32.store offset=4
    local.get $p1
    local.get $l3
    i32.store
    local.get $p0
    i32.const 1050728
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store
    local.get $l2
    i32.const 64
    i32.add
    global.set $g0)
  (func $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h0ccbde21d5021d2dE (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.const 4
    i32.add
    local.set $l3
    block $B0
      local.get $p1
      i32.load offset=4
      br_if $B0
      local.get $p1
      i32.load
      local.set $l4
      local.get $l2
      i32.const 0
      i32.store offset=32
      local.get $l2
      i64.const 1
      i64.store offset=24
      local.get $l2
      local.get $l2
      i32.const 24
      i32.add
      i32.store offset=36
      local.get $l2
      i32.const 40
      i32.add
      i32.const 16
      i32.add
      local.get $l4
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      i32.const 40
      i32.add
      i32.const 8
      i32.add
      local.get $l4
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get $l2
      local.get $l4
      i64.load align=4
      i64.store offset=40
      local.get $l2
      i32.const 36
      i32.add
      i32.const 1048740
      local.get $l2
      i32.const 40
      i32.add
      call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
      drop
      local.get $l2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.tee $l4
      local.get $l2
      i32.load offset=32
      i32.store
      local.get $l2
      local.get $l2
      i64.load offset=24
      i64.store offset=8
      block $B1
        local.get $p1
        i32.load offset=4
        local.tee $l5
        i32.eqz
        br_if $B1
        local.get $p1
        i32.const 8
        i32.add
        i32.load
        local.tee $p1
        i32.eqz
        br_if $B1
        local.get $l5
        local.get $p1
        i32.const 1
        call $__rust_dealloc
      end
      local.get $l3
      local.get $l2
      i64.load offset=8
      i64.store align=4
      local.get $l3
      i32.const 8
      i32.add
      local.get $l4
      i32.load
      i32.store
    end
    local.get $p0
    i32.const 1050728
    i32.store offset=4
    local.get $p0
    local.get $l3
    i32.store
    local.get $l2
    i32.const 64
    i32.add
    global.set $g0)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h53530152035b1861E (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    local.get $p1
    i32.load offset=4
    local.set $l2
    local.get $p1
    i32.load
    local.set $l3
    block $B0
      i32.const 8
      i32.const 4
      call $__rust_alloc
      local.tee $p1
      br_if $B0
      i32.const 8
      i32.const 4
      call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
      unreachable
    end
    local.get $p1
    local.get $l2
    i32.store offset=4
    local.get $p1
    local.get $l3
    i32.store
    local.get $p0
    i32.const 1050744
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store)
  (func $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h5ed36339ce80eeb5E (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    i32.const 1050744
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store)
  (func $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17ha0c6ac7caff02232E (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32) (local $l3 i32)
    local.get $p1
    i32.load
    local.set $l2
    local.get $p1
    i32.const 0
    i32.store
    block $B0
      block $B1
        local.get $l2
        i32.eqz
        br_if $B1
        local.get $p1
        i32.load offset=4
        local.set $l3
        i32.const 8
        i32.const 4
        call $__rust_alloc
        local.tee $p1
        i32.eqz
        br_if $B0
        local.get $p1
        local.get $l3
        i32.store offset=4
        local.get $p1
        local.get $l2
        i32.store
        local.get $p0
        i32.const 1050744
        i32.store offset=4
        local.get $p0
        local.get $p1
        i32.store
        return
      end
      unreachable
      unreachable
    end
    i32.const 8
    i32.const 4
    call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
    unreachable)
  (func $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17haa6e207d3ef31d0cE (type $t3) (param $p0 i32) (param $p1 i32)
    block $B0
      local.get $p1
      i32.load
      br_if $B0
      unreachable
      unreachable
    end
    local.get $p0
    i32.const 1050744
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.store)
  (func $rust_panic (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=12
    local.get $l2
    local.get $p0
    i32.store offset=8
    local.get $l2
    i32.const 8
    i32.add
    call $__rust_start_panic
    drop
    unreachable
    unreachable)
  (func $_ZN3std2rt19lang_start_internal17hd478170250c88e80E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l4
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            i32.const 4
            i32.const 1
            call $__rust_alloc
            local.tee $l5
            i32.eqz
            br_if $B3
            local.get $l5
            i32.const 1852399981
            i32.store align=1
            local.get $l4
            i64.const 17179869188
            i64.store offset=4 align=4
            local.get $l4
            local.get $l5
            i32.store
            local.get $l4
            call $_ZN3std6thread6Thread3new17h8e5b02a7cc2f78a3E
            local.set $l5
            block $B4
              block $B5
                i32.const 0
                i32.load offset=1054864
                i32.const 1
                i32.eq
                br_if $B5
                i32.const 0
                i64.const 1
                i64.store offset=1054864 align=4
                i32.const 0
                i32.const 0
                i32.store offset=1054872
                br $B4
              end
              i32.const 0
              i32.load offset=1054868
              local.tee $l6
              i32.const 1
              i32.add
              i32.const 0
              i32.le_s
              br_if $B2
              i32.const 0
              i32.load offset=1054872
              br_if $B1
              local.get $l6
              br_if $B0
            end
            i32.const 0
            local.get $l5
            i32.store offset=1054872
            i32.const 0
            i32.const 0
            i32.store offset=1054868
            local.get $p0
            local.get $p1
            i32.load offset=12
            call_indirect (type $t4) $T0
            local.set $l5
            block $B6
              i32.const 0
              i32.load offset=1054828
              i32.const 3
              i32.eq
              br_if $B6
              local.get $l4
              i32.const 1
              i32.store8 offset=15
              local.get $l4
              local.get $l4
              i32.const 15
              i32.add
              i32.store
              i32.const 1054828
              i32.const 0
              local.get $l4
              i32.const 1050048
              call $_ZN3std4sync4once4Once10call_inner17hd3d269a4946f2df2E
            end
            local.get $l4
            i32.const 16
            i32.add
            global.set $g0
            local.get $l5
            return
          end
          i32.const 4
          i32.const 1
          call $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E
          unreachable
        end
        i32.const 1048796
        i32.const 24
        local.get $l4
        i32.const 1049124
        i32.const 1050524
        call $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE
        unreachable
      end
      i32.const 1050540
      i32.const 38
      i32.const 1050580
      call $_ZN4core9panicking5panic17h8e74859c8f9988caE
      unreachable
    end
    i32.const 1048780
    i32.const 16
    local.get $l4
    i32.const 1049092
    i32.const 1050596
    call $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE
    unreachable)
  (func $_ZN62_$LT$std..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6680b3972b81aa7eE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.const 1050780
    i32.const 8
    call $_ZN4core3fmt9Formatter11debug_tuple17h7aa98ec388b0e475E
    local.get $l2
    local.get $p0
    i32.store offset=12
    local.get $l2
    local.get $l2
    i32.const 12
    i32.add
    i32.const 1049200
    call $_ZN4core3fmt8builders10DebugTuple5field17h9ee83e361b9d7c56E
    drop
    local.get $l2
    local.get $p0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get $l2
    local.get $l2
    i32.const 12
    i32.add
    i32.const 1050788
    call $_ZN4core3fmt8builders10DebugTuple5field17h9ee83e361b9d7c56E
    drop
    local.get $l2
    call $_ZN4core3fmt8builders10DebugTuple6finish17h400a4e39b06a2694E
    local.set $p0
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN3std3sys4wasm7process8ExitCode6as_i3217h12482e2d23b592b4E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load8_u)
  (func $__rust_start_panic (type $t4) (param $p0 i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN8dlmalloc8dlmalloc8align_up17h9871d84c5198d6bdE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    i32.add
    i32.const -1
    i32.add
    i32.const 0
    local.get $p1
    i32.sub
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc9left_bits17hf3af6a3cf27f52baE (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.const 1
    i32.shl
    local.tee $p0
    i32.const 0
    local.get $p0
    i32.sub
    i32.or)
  (func $_ZN8dlmalloc8dlmalloc9least_bit17hb51608d101ddd310E (type $t4) (param $p0 i32) (result i32)
    i32.const 0
    local.get $p0
    i32.sub
    local.get $p0
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc24leftshift_for_tree_index17h9b4329b924da3806E (type $t4) (param $p0 i32) (result i32)
    i32.const 0
    i32.const 25
    local.get $p0
    i32.const 1
    i32.shr_u
    i32.sub
    local.get $p0
    i32.const 31
    i32.eq
    select)
  (func $_ZN8dlmalloc8dlmalloc5Chunk14fencepost_head17h11539503ed18caffE (type $t6) (result i32)
    i32.const 7)
  (func $_ZN8dlmalloc8dlmalloc5Chunk4size17h9b87b2964f904167E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=4
    i32.const -8
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc5Chunk6cinuse17hc320b72a27c644b9E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load8_u offset=4
    i32.const 2
    i32.and
    i32.const 1
    i32.shr_u)
  (func $_ZN8dlmalloc8dlmalloc5Chunk6pinuse17h5cffe14aa7c194e2E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=4
    i32.const 1
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc5Chunk12clear_pinuse17h7e073a98eccee96bE (type $t1) (param $p0 i32)
    local.get $p0
    local.get $p0
    i32.load offset=4
    i32.const -2
    i32.and
    i32.store offset=4)
  (func $_ZN8dlmalloc8dlmalloc5Chunk5inuse17h34d218dfa2012cecE (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 1
    i32.ne)
  (func $_ZN8dlmalloc8dlmalloc5Chunk7mmapped17hdf27da0aa80094a5E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load8_u offset=4
    i32.const 3
    i32.and
    i32.eqz)
  (func $_ZN8dlmalloc8dlmalloc5Chunk9set_inuse17h2b9049afc5a6ae7dE (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p0
    i32.load offset=4
    i32.const 1
    i32.and
    local.get $p1
    i32.or
    i32.const 2
    i32.or
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.add
    local.tee $p0
    local.get $p0
    i32.load offset=4
    i32.const 1
    i32.or
    i32.store offset=4)
  (func $_ZN8dlmalloc8dlmalloc5Chunk20set_inuse_and_pinuse17hbd5ca068f6a65247E (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i32.const 3
    i32.or
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.add
    local.tee $p0
    local.get $p0
    i32.load offset=4
    i32.const 1
    i32.or
    i32.store offset=4)
  (func $_ZN8dlmalloc8dlmalloc5Chunk34set_size_and_pinuse_of_inuse_chunk17h257f0d39ed5602e1E (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i32.const 3
    i32.or
    i32.store offset=4)
  (func $_ZN8dlmalloc8dlmalloc5Chunk33set_size_and_pinuse_of_free_chunk17hb5207cc0b22e1df8E (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i32.const 1
    i32.or
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.add
    local.get $p1
    i32.store)
  (func $_ZN8dlmalloc8dlmalloc5Chunk20set_free_with_pinuse17h617e866239ac2847E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    local.get $p2
    local.get $p2
    i32.load offset=4
    i32.const -2
    i32.and
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.const 1
    i32.or
    i32.store offset=4
    local.get $p0
    local.get $p1
    i32.add
    local.get $p1
    i32.store)
  (func $_ZN8dlmalloc8dlmalloc5Chunk11plus_offset17ha47ca2bd9fe30833E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    i32.add)
  (func $_ZN8dlmalloc8dlmalloc5Chunk12minus_offset17h5836e33872568a2cE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    local.get $p1
    i32.sub)
  (func $_ZN8dlmalloc8dlmalloc5Chunk6to_mem17had2bf31bc6d2c232E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.const 8
    i32.add)
  (func $_ZN8dlmalloc8dlmalloc5Chunk8from_mem17h0a47b93129983de6E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.const -8
    i32.add)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk14leftmost_child17hee9e748f74add279E (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32)
    block $B0
      local.get $p0
      i32.load offset=16
      local.tee $l1
      br_if $B0
      local.get $p0
      i32.const 20
      i32.add
      i32.load
      local.set $l1
    end
    local.get $l1)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk5chunk17h4895b511ef672b42E (type $t4) (param $p0 i32) (result i32)
    local.get $p0)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk4next17hf934e74ed9870c33E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=12)
  (func $_ZN8dlmalloc8dlmalloc9TreeChunk4prev17hdfdcb34973fc147dE (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=8)
  (func $_ZN8dlmalloc8dlmalloc7Segment9is_extern17h9cd61a1d370e9f36E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=12
    i32.const 1
    i32.and)
  (func $_ZN8dlmalloc8dlmalloc7Segment9sys_flags17h880553e1894926d7E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=12
    i32.const 1
    i32.shr_u)
  (func $_ZN8dlmalloc8dlmalloc7Segment5holds17h4aedcd2981ce6526E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    block $B0
      local.get $p0
      i32.load
      local.tee $l2
      local.get $p1
      i32.gt_u
      br_if $B0
      local.get $l2
      local.get $p0
      i32.load offset=4
      i32.add
      local.get $p1
      i32.le_u
      br_if $B0
      i32.const 1
      return
    end
    i32.const 0)
  (func $_ZN8dlmalloc8dlmalloc7Segment3top17h2e0a3d92a053d403E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    i32.add)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5alloc17h398516a010cfe955E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    local.get $p2
    i32.const 16
    i32.shr_u
    memory.grow
    local.set $l3
    local.get $p0
    i32.const 0
    i32.store offset=8
    local.get $p0
    i32.const 0
    local.get $p2
    i32.const -65536
    i32.and
    local.get $l3
    i32.const -1
    i32.eq
    local.tee $p2
    select
    i32.store offset=4
    local.get $p0
    i32.const 0
    local.get $l3
    i32.const 16
    i32.shl
    local.get $p2
    select
    i32.store)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$5remap17hfa6ee72199859c82E (type $t14) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9free_part17hc15b46083d78a1a0E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$4free17hdc5562e28b8d4fecE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$16can_release_part17hff68dc9a608e0af2E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    i32.const 0)
  (func $_ZN61_$LT$dlmalloc..sys..System$u20$as$u20$dlmalloc..Allocator$GT$9page_size17h510ceb489d40a04bE (type $t4) (param $p0 i32) (result i32)
    i32.const 65536)
  (func $_ZN5alloc5alloc18handle_alloc_error17h67f29d7cba135f71E (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $__rust_alloc_error_handler
    unreachable)
  (func $__rg_oom (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    call $rust_oom
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17hfd481cf132d45bc8E (type $t0)
    i32.const 1051296
    i32.const 17
    i32.const 1051316
    call $_ZN4core9panicking5panic17h8e74859c8f9988caE
    unreachable)
  (func $_ZN5alloc6string104_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..vec..Vec$LT$u8$GT$$GT$4from17hca52868aa31f0b01E (type $t3) (param $p0 i32) (param $p1 i32)
    local.get $p0
    local.get $p1
    i64.load align=4
    i64.store align=4
    local.get $p0
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i32.load
    i32.store)
  (func $_ZN4core3ops8function6FnOnce9call_once17hf0dad1bbd1a4d2fbE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    drop
    loop $L0 (result i32)
      br $L0
    end)
  (func $_ZN4core3ptr13drop_in_place17h009b392e72e978c2E (type $t1) (param $p0 i32))
  (func $_ZN4core9panicking18panic_bounds_check17h81a63bf79280172dE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p1
    i32.store offset=4
    local.get $l3
    local.get $p0
    i32.store
    local.get $l3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l3
    i32.const 44
    i32.add
    i32.const 60
    i32.store
    local.get $l3
    i64.const 2
    i64.store offset=12 align=4
    local.get $l3
    i32.const 1051500
    i32.store offset=8
    local.get $l3
    i32.const 60
    i32.store offset=36
    local.get $l3
    local.get $l3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.store offset=40
    local.get $l3
    local.get $l3
    i32.const 4
    i32.add
    i32.store offset=32
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
    unreachable)
  (func $_ZN4core9panicking5panic17h8e74859c8f9988caE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get $l3
    i32.const 1051332
    i32.store offset=16
    local.get $l3
    i64.const 1
    i64.store offset=4 align=4
    local.get $l3
    local.get $p1
    i32.store offset=28
    local.get $l3
    local.get $p0
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.const 24
    i32.add
    i32.store
    local.get $l3
    local.get $p2
    call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
    unreachable)
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h137fe51578ce6a78E (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p1
    i32.store offset=4
    local.get $l3
    local.get $p0
    i32.store
    local.get $l3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l3
    i32.const 44
    i32.add
    i32.const 60
    i32.store
    local.get $l3
    i64.const 2
    i64.store offset=12 align=4
    local.get $l3
    i32.const 1052124
    i32.store offset=8
    local.get $l3
    i32.const 60
    i32.store offset=36
    local.get $l3
    local.get $l3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get $l3
    local.get $l3
    i32.store offset=32
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
    unreachable)
  (func $_ZN4core3fmt9Formatter3pad17h2864104689a0de9eE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32)
    local.get $p0
    i32.load offset=16
    local.set $l3
    block $B0
      block $B1
        block $B2
          local.get $p0
          i32.load offset=8
          local.tee $l4
          i32.const 1
          i32.eq
          br_if $B2
          local.get $l3
          i32.const 1
          i32.eq
          br_if $B1
          local.get $p0
          i32.load offset=24
          local.get $p1
          local.get $p2
          local.get $p0
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type $t5) $T0
          return
        end
        local.get $l3
        i32.const 1
        i32.ne
        br_if $B0
      end
      local.get $p1
      local.get $p2
      i32.add
      local.set $l5
      block $B3
        block $B4
          block $B5
            local.get $p0
            i32.const 20
            i32.add
            i32.load
            local.tee $l6
            br_if $B5
            i32.const 0
            local.set $l7
            local.get $p1
            local.set $l8
            br $B4
          end
          i32.const 0
          local.set $l7
          local.get $p1
          local.set $l8
          loop $L6
            local.get $l5
            local.get $l8
            local.tee $l3
            i32.eq
            br_if $B3
            local.get $l3
            i32.const 1
            i32.add
            local.set $l8
            block $B7
              local.get $l3
              i32.load8_s
              local.tee $l9
              i32.const -1
              i32.gt_s
              br_if $B7
              local.get $l9
              i32.const 255
              i32.and
              local.set $l9
              block $B8
                block $B9
                  local.get $l8
                  local.get $l5
                  i32.ne
                  br_if $B9
                  i32.const 0
                  local.set $l10
                  local.get $l5
                  local.set $l11
                  br $B8
                end
                local.get $l3
                i32.load8_u offset=1
                i32.const 63
                i32.and
                local.set $l10
                local.get $l3
                i32.const 2
                i32.add
                local.tee $l8
                local.set $l11
              end
              local.get $l9
              i32.const 224
              i32.lt_u
              br_if $B7
              block $B10
                block $B11
                  local.get $l11
                  local.get $l5
                  i32.ne
                  br_if $B11
                  i32.const 0
                  local.set $l12
                  local.get $l5
                  local.set $l11
                  br $B10
                end
                local.get $l11
                i32.load8_u
                i32.const 63
                i32.and
                local.set $l12
                local.get $l11
                i32.const 1
                i32.add
                local.tee $l8
                local.set $l11
              end
              local.get $l9
              i32.const 240
              i32.lt_u
              br_if $B7
              block $B12
                block $B13
                  local.get $l11
                  local.get $l5
                  i32.ne
                  br_if $B13
                  i32.const 0
                  local.set $l11
                  br $B12
                end
                local.get $l11
                i32.const 1
                i32.add
                local.set $l8
                local.get $l11
                i32.load8_u
                i32.const 63
                i32.and
                local.set $l11
              end
              local.get $l10
              i32.const 12
              i32.shl
              local.get $l9
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              i32.or
              local.get $l12
              i32.const 6
              i32.shl
              i32.or
              local.get $l11
              i32.or
              i32.const 1114112
              i32.eq
              br_if $B3
            end
            local.get $l8
            local.get $l3
            i32.sub
            local.get $l7
            i32.add
            local.set $l7
            local.get $l6
            i32.const -1
            i32.add
            local.tee $l6
            br_if $L6
          end
        end
        local.get $l5
        local.get $l8
        i32.eq
        br_if $B3
        block $B14
          local.get $l8
          i32.load8_s
          local.tee $l3
          i32.const -1
          i32.gt_s
          br_if $B14
          block $B15
            block $B16
              local.get $l8
              i32.const 1
              i32.add
              local.get $l5
              i32.ne
              br_if $B16
              i32.const 0
              local.set $l8
              local.get $l5
              local.set $l6
              br $B15
            end
            local.get $l8
            i32.const 2
            i32.add
            local.set $l6
            local.get $l8
            i32.load8_u offset=1
            i32.const 63
            i32.and
            i32.const 6
            i32.shl
            local.set $l8
          end
          local.get $l3
          i32.const 255
          i32.and
          i32.const 224
          i32.lt_u
          br_if $B14
          block $B17
            block $B18
              local.get $l6
              local.get $l5
              i32.ne
              br_if $B18
              i32.const 0
              local.set $l6
              local.get $l5
              local.set $l9
              br $B17
            end
            local.get $l6
            i32.const 1
            i32.add
            local.set $l9
            local.get $l6
            i32.load8_u
            i32.const 63
            i32.and
            local.set $l6
          end
          local.get $l3
          i32.const 255
          i32.and
          i32.const 240
          i32.lt_u
          br_if $B14
          local.get $l3
          i32.const 255
          i32.and
          local.set $l3
          local.get $l6
          local.get $l8
          i32.or
          local.set $l8
          block $B19
            block $B20
              local.get $l9
              local.get $l5
              i32.ne
              br_if $B20
              i32.const 0
              local.set $l5
              br $B19
            end
            local.get $l9
            i32.load8_u
            i32.const 63
            i32.and
            local.set $l5
          end
          local.get $l8
          i32.const 6
          i32.shl
          local.get $l3
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          i32.or
          local.get $l5
          i32.or
          i32.const 1114112
          i32.eq
          br_if $B3
        end
        block $B21
          block $B22
            local.get $l7
            i32.eqz
            br_if $B22
            local.get $l7
            local.get $p2
            i32.eq
            br_if $B22
            i32.const 0
            local.set $l3
            local.get $l7
            local.get $p2
            i32.ge_u
            br_if $B21
            local.get $p1
            local.get $l7
            i32.add
            i32.load8_s
            i32.const -64
            i32.lt_s
            br_if $B21
          end
          local.get $p1
          local.set $l3
        end
        local.get $l7
        local.get $p2
        local.get $l3
        select
        local.set $p2
        local.get $l3
        local.get $p1
        local.get $l3
        select
        local.set $p1
      end
      local.get $l4
      i32.const 1
      i32.eq
      br_if $B0
      local.get $p0
      i32.load offset=24
      local.get $p1
      local.get $p2
      local.get $p0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type $t5) $T0
      return
    end
    block $B23
      block $B24
        block $B25
          local.get $p2
          i32.eqz
          br_if $B25
          i32.const 0
          local.set $l8
          local.get $p2
          local.set $l7
          local.get $p1
          local.set $l3
          loop $L26
            local.get $l8
            local.get $l3
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.eq
            i32.add
            local.set $l8
            local.get $l3
            i32.const 1
            i32.add
            local.set $l3
            local.get $l7
            i32.const -1
            i32.add
            local.tee $l7
            br_if $L26
          end
          local.get $p2
          local.get $l8
          i32.sub
          local.get $p0
          i32.load offset=12
          local.tee $l5
          i32.ge_u
          br_if $B24
          i32.const 0
          local.set $l8
          local.get $p2
          local.set $l7
          local.get $p1
          local.set $l3
          loop $L27
            local.get $l8
            local.get $l3
            i32.load8_u
            i32.const 192
            i32.and
            i32.const 128
            i32.eq
            i32.add
            local.set $l8
            local.get $l3
            i32.const 1
            i32.add
            local.set $l3
            local.get $l7
            i32.const -1
            i32.add
            local.tee $l7
            br_if $L27
            br $B23
          end
        end
        i32.const 0
        local.set $l8
        local.get $p0
        i32.load offset=12
        local.tee $l5
        br_if $B23
      end
      local.get $p0
      i32.load offset=24
      local.get $p1
      local.get $p2
      local.get $p0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type $t5) $T0
      return
    end
    i32.const 0
    local.set $l3
    local.get $l8
    local.get $p2
    i32.sub
    local.get $l5
    i32.add
    local.tee $l5
    local.set $l7
    block $B28
      block $B29
        block $B30
          i32.const 0
          local.get $p0
          i32.load8_u offset=32
          local.tee $l8
          local.get $l8
          i32.const 3
          i32.eq
          select
          i32.const 3
          i32.and
          br_table $B28 $B29 $B30 $B29 $B28
        end
        local.get $l5
        i32.const 1
        i32.shr_u
        local.set $l3
        local.get $l5
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set $l7
        br $B28
      end
      i32.const 0
      local.set $l7
      local.get $l5
      local.set $l3
    end
    local.get $l3
    i32.const 1
    i32.add
    local.set $l3
    block $B31
      block $B32
        block $B33
          loop $L34
            local.get $l3
            i32.const -1
            i32.add
            local.tee $l3
            i32.eqz
            br_if $B33
            local.get $p0
            i32.load offset=24
            local.get $p0
            i32.load offset=4
            local.get $p0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type $t2) $T0
            i32.eqz
            br_if $L34
            br $B32
          end
        end
        local.get $p0
        i32.load offset=4
        local.set $l8
        i32.const 1
        local.set $l3
        local.get $p0
        i32.load offset=24
        local.get $p1
        local.get $p2
        local.get $p0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type $t5) $T0
        br_if $B31
        local.get $l7
        i32.const 1
        i32.add
        local.set $l3
        local.get $p0
        i32.load offset=28
        local.set $l7
        local.get $p0
        i32.load offset=24
        local.set $p0
        loop $L35
          block $B36
            local.get $l3
            i32.const -1
            i32.add
            local.tee $l3
            br_if $B36
            i32.const 0
            return
          end
          local.get $p0
          local.get $l8
          local.get $l7
          i32.load offset=16
          call_indirect (type $t2) $T0
          i32.eqz
          br_if $L35
        end
      end
      i32.const 1
      local.set $l3
    end
    local.get $l3)
  (func $_ZN4core3str16slice_error_fail17hc580b5b0f805653aE (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    global.get $g0
    i32.const 112
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    local.get $p3
    i32.store offset=12
    local.get $l5
    local.get $p2
    i32.store offset=8
    i32.const 1
    local.set $l6
    local.get $p1
    local.set $l7
    block $B0
      local.get $p1
      i32.const 257
      i32.lt_u
      br_if $B0
      i32.const 0
      local.get $p1
      i32.sub
      local.set $l8
      i32.const 256
      local.set $l9
      loop $L1
        block $B2
          local.get $l9
          local.get $p1
          i32.ge_u
          br_if $B2
          i32.const 0
          local.set $l6
          local.get $p0
          local.get $l9
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if $B2
          local.get $l9
          local.set $l7
          br $B0
        end
        local.get $l9
        i32.const -1
        i32.add
        local.set $l7
        i32.const 0
        local.set $l6
        local.get $l9
        i32.const 1
        i32.eq
        br_if $B0
        local.get $l8
        local.get $l9
        i32.add
        local.set $l10
        local.get $l7
        local.set $l9
        local.get $l10
        i32.const 1
        i32.ne
        br_if $L1
      end
    end
    local.get $l5
    local.get $l7
    i32.store offset=20
    local.get $l5
    local.get $p0
    i32.store offset=16
    local.get $l5
    i32.const 0
    i32.const 5
    local.get $l6
    select
    i32.store offset=28
    local.get $l5
    i32.const 1051332
    i32.const 1052240
    local.get $l6
    select
    i32.store offset=24
    block $B3
      block $B4
        block $B5
          block $B6
            local.get $p2
            local.get $p1
            i32.gt_u
            local.tee $l6
            br_if $B6
            local.get $p3
            local.get $p1
            i32.gt_u
            br_if $B6
            local.get $p2
            local.get $p3
            i32.gt_u
            br_if $B5
            block $B7
              block $B8
                local.get $p2
                i32.eqz
                br_if $B8
                local.get $p1
                local.get $p2
                i32.eq
                br_if $B8
                local.get $p1
                local.get $p2
                i32.le_u
                br_if $B7
                local.get $p0
                local.get $p2
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if $B7
              end
              local.get $p3
              local.set $p2
            end
            local.get $l5
            local.get $p2
            i32.store offset=32
            block $B9
              block $B10
                local.get $p2
                i32.eqz
                br_if $B10
                local.get $p2
                local.get $p1
                i32.ne
                br_if $B9
              end
              local.get $p2
              local.set $l6
              br $B4
            end
            local.get $p1
            i32.const 1
            i32.add
            local.set $l9
            loop $L11
              block $B12
                local.get $p2
                local.get $p1
                i32.ge_u
                br_if $B12
                local.get $p0
                local.get $p2
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if $B12
                local.get $l5
                i32.const 36
                i32.add
                local.set $l9
                local.get $p2
                local.set $l6
                br $B3
              end
              local.get $p2
              i32.const -1
              i32.add
              local.set $l6
              local.get $p2
              i32.const 1
              i32.eq
              br_if $B4
              local.get $l9
              local.get $p2
              i32.eq
              local.set $p3
              local.get $l6
              local.set $p2
              local.get $p3
              br_if $B4
              br $L11
            end
          end
          local.get $l5
          local.get $p2
          local.get $p3
          local.get $l6
          select
          i32.store offset=40
          local.get $l5
          i32.const 48
          i32.add
          i32.const 20
          i32.add
          i32.const 3
          i32.store
          local.get $l5
          i32.const 72
          i32.add
          i32.const 20
          i32.add
          i32.const 61
          i32.store
          local.get $l5
          i32.const 84
          i32.add
          i32.const 61
          i32.store
          local.get $l5
          i64.const 3
          i64.store offset=52 align=4
          local.get $l5
          i32.const 1052280
          i32.store offset=48
          local.get $l5
          i32.const 60
          i32.store offset=76
          local.get $l5
          local.get $l5
          i32.const 72
          i32.add
          i32.store offset=64
          local.get $l5
          local.get $l5
          i32.const 24
          i32.add
          i32.store offset=88
          local.get $l5
          local.get $l5
          i32.const 16
          i32.add
          i32.store offset=80
          local.get $l5
          local.get $l5
          i32.const 40
          i32.add
          i32.store offset=72
          local.get $l5
          i32.const 48
          i32.add
          local.get $p4
          call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
          unreachable
        end
        local.get $l5
        i32.const 100
        i32.add
        i32.const 61
        i32.store
        local.get $l5
        i32.const 72
        i32.add
        i32.const 20
        i32.add
        i32.const 61
        i32.store
        local.get $l5
        i32.const 84
        i32.add
        i32.const 60
        i32.store
        local.get $l5
        i32.const 48
        i32.add
        i32.const 20
        i32.add
        i32.const 4
        i32.store
        local.get $l5
        i64.const 4
        i64.store offset=52 align=4
        local.get $l5
        i32.const 1052340
        i32.store offset=48
        local.get $l5
        i32.const 60
        i32.store offset=76
        local.get $l5
        local.get $l5
        i32.const 72
        i32.add
        i32.store offset=64
        local.get $l5
        local.get $l5
        i32.const 24
        i32.add
        i32.store offset=96
        local.get $l5
        local.get $l5
        i32.const 16
        i32.add
        i32.store offset=88
        local.get $l5
        local.get $l5
        i32.const 12
        i32.add
        i32.store offset=80
        local.get $l5
        local.get $l5
        i32.const 8
        i32.add
        i32.store offset=72
        local.get $l5
        i32.const 48
        i32.add
        local.get $p4
        call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
        unreachable
      end
      local.get $l5
      i32.const 36
      i32.add
      local.set $l9
    end
    block $B13
      local.get $l6
      local.get $p1
      i32.eq
      br_if $B13
      i32.const 1
      local.set $p3
      block $B14
        block $B15
          block $B16
            block $B17
              local.get $p0
              local.get $l6
              i32.add
              local.tee $l7
              i32.load8_s
              local.tee $p2
              i32.const -1
              i32.gt_s
              br_if $B17
              i32.const 0
              local.set $p3
              local.get $p0
              local.get $p1
              i32.add
              local.tee $p1
              local.set $p0
              block $B18
                local.get $l7
                i32.const 1
                i32.add
                local.get $p1
                i32.eq
                br_if $B18
                local.get $l7
                i32.const 2
                i32.add
                local.set $p0
                local.get $l7
                i32.load8_u offset=1
                i32.const 63
                i32.and
                local.set $p3
              end
              local.get $p2
              i32.const 31
              i32.and
              local.set $l7
              local.get $p2
              i32.const 255
              i32.and
              i32.const 223
              i32.gt_u
              br_if $B16
              local.get $p3
              local.get $l7
              i32.const 6
              i32.shl
              i32.or
              local.set $p2
              br $B15
            end
            local.get $l5
            local.get $p2
            i32.const 255
            i32.and
            i32.store offset=36
            local.get $l5
            i32.const 40
            i32.add
            local.set $p1
            br $B14
          end
          i32.const 0
          local.set $l8
          local.get $p1
          local.set $l10
          block $B19
            local.get $p0
            local.get $p1
            i32.eq
            br_if $B19
            local.get $p0
            i32.const 1
            i32.add
            local.set $l10
            local.get $p0
            i32.load8_u
            i32.const 63
            i32.and
            local.set $l8
          end
          local.get $l8
          local.get $p3
          i32.const 6
          i32.shl
          i32.or
          local.set $p3
          block $B20
            local.get $p2
            i32.const 255
            i32.and
            i32.const 240
            i32.ge_u
            br_if $B20
            local.get $p3
            local.get $l7
            i32.const 12
            i32.shl
            i32.or
            local.set $p2
            br $B15
          end
          i32.const 0
          local.set $p2
          block $B21
            local.get $l10
            local.get $p1
            i32.eq
            br_if $B21
            local.get $l10
            i32.load8_u
            i32.const 63
            i32.and
            local.set $p2
          end
          local.get $p3
          i32.const 6
          i32.shl
          local.get $l7
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          i32.or
          local.get $p2
          i32.or
          local.tee $p2
          i32.const 1114112
          i32.eq
          br_if $B13
        end
        local.get $l5
        local.get $p2
        i32.store offset=36
        i32.const 1
        local.set $p3
        local.get $l5
        i32.const 40
        i32.add
        local.set $p1
        local.get $p2
        i32.const 128
        i32.lt_u
        br_if $B14
        i32.const 2
        local.set $p3
        local.get $p2
        i32.const 2048
        i32.lt_u
        br_if $B14
        i32.const 3
        i32.const 4
        local.get $p2
        i32.const 65536
        i32.lt_u
        select
        local.set $p3
      end
      local.get $l5
      local.get $l6
      i32.store offset=40
      local.get $l5
      local.get $p3
      local.get $l6
      i32.add
      i32.store offset=44
      local.get $l5
      i32.const 48
      i32.add
      i32.const 20
      i32.add
      i32.const 5
      i32.store
      local.get $l5
      i32.const 108
      i32.add
      i32.const 61
      i32.store
      local.get $l5
      i32.const 100
      i32.add
      i32.const 61
      i32.store
      local.get $l5
      i32.const 72
      i32.add
      i32.const 20
      i32.add
      i32.const 62
      i32.store
      local.get $l5
      i32.const 84
      i32.add
      i32.const 63
      i32.store
      local.get $l5
      i64.const 5
      i64.store offset=52 align=4
      local.get $l5
      i32.const 1052424
      i32.store offset=48
      local.get $l5
      local.get $p1
      i32.store offset=88
      local.get $l5
      local.get $l9
      i32.store offset=80
      local.get $l5
      i32.const 60
      i32.store offset=76
      local.get $l5
      local.get $l5
      i32.const 72
      i32.add
      i32.store offset=64
      local.get $l5
      local.get $l5
      i32.const 24
      i32.add
      i32.store offset=104
      local.get $l5
      local.get $l5
      i32.const 16
      i32.add
      i32.store offset=96
      local.get $l5
      local.get $l5
      i32.const 32
      i32.add
      i32.store offset=72
      local.get $l5
      i32.const 48
      i32.add
      local.get $p4
      call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
      unreachable
    end
    i32.const 1051369
    i32.const 43
    local.get $p4
    call $_ZN4core9panicking5panic17h8e74859c8f9988caE
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E (type $t3) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p1
    i32.store offset=12
    local.get $l2
    local.get $p0
    i32.store offset=8
    local.get $l2
    i32.const 1051432
    i32.store offset=4
    local.get $l2
    i32.const 1051332
    i32.store
    local.get $l2
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core5slice5index22slice_index_order_fail17hbb6862c61eca836dE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p1
    i32.store offset=4
    local.get $l3
    local.get $p0
    i32.store
    local.get $l3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l3
    i32.const 44
    i32.add
    i32.const 60
    i32.store
    local.get $l3
    i64.const 2
    i64.store offset=12 align=4
    local.get $l3
    i32.const 1052176
    i32.store offset=8
    local.get $l3
    i32.const 60
    i32.store offset=36
    local.get $l3
    local.get $l3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get $l3
    local.get $l3
    i32.store offset=32
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
    unreachable)
  (func $_ZN4core5slice5index26slice_start_index_len_fail17h4fadccc315d2004dE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    local.get $p1
    i32.store offset=4
    local.get $l3
    local.get $p0
    i32.store
    local.get $l3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get $l3
    i32.const 44
    i32.add
    i32.const 60
    i32.store
    local.get $l3
    i64.const 2
    i64.store offset=12 align=4
    local.get $l3
    i32.const 1052092
    i32.store offset=8
    local.get $l3
    i32.const 60
    i32.store offset=36
    local.get $l3
    local.get $l3
    i32.const 32
    i32.add
    i32.store offset=24
    local.get $l3
    local.get $l3
    i32.const 4
    i32.add
    i32.store offset=40
    local.get $l3
    local.get $l3
    i32.store offset=32
    local.get $l3
    i32.const 8
    i32.add
    local.get $p2
    call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h6698aec92049b0beE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i64.load32_u
    i32.const 1
    local.get $p1
    call $_ZN4core3fmt3num3imp7fmt_u6417hf7dd6955b271cd51E)
  (func $_ZN4core3fmt5write17h2b0ce00a95e39e0bE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    local.get $l3
    i32.const 36
    i32.add
    local.get $p1
    i32.store
    local.get $l3
    i32.const 3
    i32.store8 offset=40
    local.get $l3
    i64.const 137438953472
    i64.store offset=8
    local.get $l3
    local.get $p0
    i32.store offset=32
    local.get $l3
    i32.const 0
    i32.store offset=24
    local.get $l3
    i32.const 0
    i32.store offset=16
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p2
              i32.load offset=8
              local.tee $l4
              i32.eqz
              br_if $B4
              local.get $p2
              i32.load
              local.set $l5
              local.get $p2
              i32.load offset=4
              local.tee $l6
              local.get $p2
              i32.const 12
              i32.add
              i32.load
              local.tee $l7
              local.get $l7
              local.get $l6
              i32.gt_u
              select
              local.tee $l8
              i32.eqz
              br_if $B3
              local.get $p0
              local.get $l5
              i32.load
              local.get $l5
              i32.load offset=4
              local.get $p1
              i32.load offset=12
              call_indirect (type $t5) $T0
              br_if $B1
              local.get $l5
              i32.const 12
              i32.add
              local.set $p0
              local.get $p2
              i32.load offset=16
              local.set $l9
              local.get $l8
              local.set $l10
              loop $L5
                local.get $l3
                local.get $l4
                i32.const 28
                i32.add
                i32.load8_u
                i32.store8 offset=40
                local.get $l3
                local.get $l4
                i32.const 4
                i32.add
                i64.load align=4
                i64.const 32
                i64.rotl
                i64.store offset=8
                local.get $l4
                i32.const 24
                i32.add
                i32.load
                local.set $p1
                i32.const 0
                local.set $l7
                i32.const 0
                local.set $p2
                block $B6
                  block $B7
                    block $B8
                      local.get $l4
                      i32.const 20
                      i32.add
                      i32.load
                      br_table $B7 $B8 $B6 $B7
                    end
                    local.get $p1
                    i32.const 3
                    i32.shl
                    local.set $l11
                    i32.const 0
                    local.set $p2
                    local.get $l9
                    local.get $l11
                    i32.add
                    local.tee $l11
                    i32.load offset=4
                    i32.const 64
                    i32.ne
                    br_if $B6
                    local.get $l11
                    i32.load
                    i32.load
                    local.set $p1
                  end
                  i32.const 1
                  local.set $p2
                end
                local.get $l3
                local.get $p1
                i32.store offset=20
                local.get $l3
                local.get $p2
                i32.store offset=16
                local.get $l4
                i32.const 16
                i32.add
                i32.load
                local.set $p2
                block $B9
                  block $B10
                    block $B11
                      local.get $l4
                      i32.const 12
                      i32.add
                      i32.load
                      br_table $B10 $B11 $B9 $B10
                    end
                    local.get $p2
                    i32.const 3
                    i32.shl
                    local.set $p1
                    local.get $l9
                    local.get $p1
                    i32.add
                    local.tee $p1
                    i32.load offset=4
                    i32.const 64
                    i32.ne
                    br_if $B9
                    local.get $p1
                    i32.load
                    i32.load
                    local.set $p2
                  end
                  i32.const 1
                  local.set $l7
                end
                local.get $l3
                local.get $p2
                i32.store offset=28
                local.get $l3
                local.get $l7
                i32.store offset=24
                local.get $l9
                local.get $l4
                i32.load
                i32.const 3
                i32.shl
                i32.add
                local.tee $p2
                i32.load
                local.get $l3
                i32.const 8
                i32.add
                local.get $p2
                i32.load offset=4
                call_indirect (type $t2) $T0
                br_if $B1
                local.get $l10
                i32.const -1
                i32.add
                local.tee $l10
                i32.eqz
                br_if $B2
                local.get $l4
                i32.const 32
                i32.add
                local.set $l4
                local.get $p0
                i32.const -4
                i32.add
                local.set $p2
                local.get $p0
                i32.load
                local.set $p1
                local.get $p0
                i32.const 8
                i32.add
                local.set $p0
                local.get $l3
                i32.load offset=32
                local.get $p2
                i32.load
                local.get $p1
                local.get $l3
                i32.load offset=36
                i32.load offset=12
                call_indirect (type $t5) $T0
                i32.eqz
                br_if $L5
                br $B1
              end
            end
            local.get $p2
            i32.load
            local.set $l5
            local.get $p2
            i32.load offset=4
            local.tee $l6
            local.get $p2
            i32.const 20
            i32.add
            i32.load
            local.tee $l4
            local.get $l4
            local.get $l6
            i32.gt_u
            select
            local.tee $l8
            i32.eqz
            br_if $B3
            local.get $p2
            i32.load offset=16
            local.set $l4
            local.get $p0
            local.get $l5
            i32.load
            local.get $l5
            i32.load offset=4
            local.get $p1
            i32.load offset=12
            call_indirect (type $t5) $T0
            br_if $B1
            local.get $l5
            i32.const 12
            i32.add
            local.set $p0
            local.get $l8
            local.set $p2
            loop $L12
              local.get $l4
              i32.load
              local.get $l3
              i32.const 8
              i32.add
              local.get $l4
              i32.const 4
              i32.add
              i32.load
              call_indirect (type $t2) $T0
              br_if $B1
              local.get $p2
              i32.const -1
              i32.add
              local.tee $p2
              i32.eqz
              br_if $B2
              local.get $l4
              i32.const 8
              i32.add
              local.set $l4
              local.get $p0
              i32.const -4
              i32.add
              local.set $p1
              local.get $p0
              i32.load
              local.set $l7
              local.get $p0
              i32.const 8
              i32.add
              local.set $p0
              local.get $l3
              i32.load offset=32
              local.get $p1
              i32.load
              local.get $l7
              local.get $l3
              i32.load offset=36
              i32.load offset=12
              call_indirect (type $t5) $T0
              i32.eqz
              br_if $L12
              br $B1
            end
          end
          i32.const 0
          local.set $l8
        end
        block $B13
          local.get $l6
          local.get $l8
          i32.le_u
          br_if $B13
          local.get $l3
          i32.load offset=32
          local.get $l5
          local.get $l8
          i32.const 3
          i32.shl
          i32.add
          local.tee $l4
          i32.load
          local.get $l4
          i32.load offset=4
          local.get $l3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type $t5) $T0
          br_if $B1
        end
        i32.const 0
        local.set $l4
        br $B0
      end
      i32.const 1
      local.set $l4
    end
    local.get $l3
    i32.const 48
    i32.add
    global.set $g0
    local.get $l4)
  (func $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h660766b4a6d57456E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      local.get $p0
      local.get $p1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h316a91f793c8a995E
      br_if $B0
      local.get $p1
      i32.const 28
      i32.add
      i32.load
      local.set $l3
      local.get $p1
      i32.load offset=24
      local.set $l4
      local.get $l2
      i32.const 28
      i32.add
      i32.const 0
      i32.store
      local.get $l2
      i32.const 1051332
      i32.store offset=24
      local.get $l2
      i64.const 1
      i64.store offset=12 align=4
      local.get $l2
      i32.const 1051336
      i32.store offset=8
      local.get $l4
      local.get $l3
      local.get $l2
      i32.const 8
      i32.add
      call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
      br_if $B0
      local.get $p0
      i32.const 4
      i32.add
      local.get $p1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h316a91f793c8a995E
      local.set $p1
      local.get $l2
      i32.const 32
      i32.add
      global.set $g0
      local.get $p1
      return
    end
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    i32.const 1)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h316a91f793c8a995E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p1
              i32.load
              local.tee $l3
              i32.const 16
              i32.and
              br_if $B4
              local.get $p0
              i32.load
              local.set $l4
              local.get $l3
              i32.const 32
              i32.and
              br_if $B3
              local.get $l4
              i64.extend_i32_u
              i32.const 1
              local.get $p1
              call $_ZN4core3fmt3num3imp7fmt_u6417hf7dd6955b271cd51E
              local.set $p0
              br $B2
            end
            local.get $p0
            i32.load
            local.set $l4
            i32.const 0
            local.set $p0
            loop $L5
              local.get $l2
              local.get $p0
              i32.add
              i32.const 127
              i32.add
              local.get $l4
              i32.const 15
              i32.and
              local.tee $l3
              i32.const 48
              i32.or
              local.get $l3
              i32.const 87
              i32.add
              local.get $l3
              i32.const 10
              i32.lt_u
              select
              i32.store8
              local.get $p0
              i32.const -1
              i32.add
              local.set $p0
              local.get $l4
              i32.const 4
              i32.shr_u
              local.tee $l4
              br_if $L5
            end
            local.get $p0
            i32.const 128
            i32.add
            local.tee $l4
            i32.const 129
            i32.ge_u
            br_if $B1
            local.get $p1
            i32.const 1
            i32.const 1051664
            i32.const 2
            local.get $l2
            local.get $p0
            i32.add
            i32.const 128
            i32.add
            i32.const 0
            local.get $p0
            i32.sub
            call $_ZN4core3fmt9Formatter12pad_integral17h9d065179d49875a0E
            local.set $p0
            br $B2
          end
          i32.const 0
          local.set $p0
          loop $L6
            local.get $l2
            local.get $p0
            i32.add
            i32.const 127
            i32.add
            local.get $l4
            i32.const 15
            i32.and
            local.tee $l3
            i32.const 48
            i32.or
            local.get $l3
            i32.const 55
            i32.add
            local.get $l3
            i32.const 10
            i32.lt_u
            select
            i32.store8
            local.get $p0
            i32.const -1
            i32.add
            local.set $p0
            local.get $l4
            i32.const 4
            i32.shr_u
            local.tee $l4
            br_if $L6
          end
          local.get $p0
          i32.const 128
          i32.add
          local.tee $l4
          i32.const 129
          i32.ge_u
          br_if $B0
          local.get $p1
          i32.const 1
          i32.const 1051664
          i32.const 2
          local.get $l2
          local.get $p0
          i32.add
          i32.const 128
          i32.add
          i32.const 0
          local.get $p0
          i32.sub
          call $_ZN4core3fmt9Formatter12pad_integral17h9d065179d49875a0E
          local.set $p0
        end
        local.get $l2
        i32.const 128
        i32.add
        global.set $g0
        local.get $p0
        return
      end
      local.get $l4
      i32.const 128
      i32.const 1051648
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4fadccc315d2004dE
      unreachable
    end
    local.get $l4
    i32.const 128
    i32.const 1051648
    call $_ZN4core5slice5index26slice_start_index_len_fail17h4fadccc315d2004dE
    unreachable)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hac5711afa8b210d0E (type $t11) (param $p0 i32) (result i64)
    i64.const -9040091204923801142)
  (func $_ZN60_$LT$core..cell..BorrowError$u20$as$u20$core..fmt..Debug$GT$3fmt17h23691e0d11fd27aeE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    i32.load offset=24
    i32.const 1051344
    i32.const 11
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t5) $T0)
  (func $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb12a092877cd4efaE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    i32.load offset=24
    i32.const 1051355
    i32.const 14
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t5) $T0)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8e06a9c740c3d4a5E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p1
    local.get $p0
    i32.load
    local.get $p0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17h2864104689a0de9eE)
  (func $_ZN4core6option18expect_none_failed17hbea1e2e5b59d80ccE (type $t7) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l5
    global.set $g0
    local.get $l5
    local.get $p1
    i32.store offset=12
    local.get $l5
    local.get $p0
    i32.store offset=8
    local.get $l5
    local.get $p3
    i32.store offset=20
    local.get $l5
    local.get $p2
    i32.store offset=16
    local.get $l5
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get $l5
    i32.const 60
    i32.add
    i32.const 65
    i32.store
    local.get $l5
    i64.const 2
    i64.store offset=28 align=4
    local.get $l5
    i32.const 1051416
    i32.store offset=24
    local.get $l5
    i32.const 61
    i32.store offset=52
    local.get $l5
    local.get $l5
    i32.const 48
    i32.add
    i32.store offset=40
    local.get $l5
    local.get $l5
    i32.const 16
    i32.add
    i32.store offset=56
    local.get $l5
    local.get $l5
    i32.const 8
    i32.add
    i32.store offset=48
    local.get $l5
    i32.const 24
    i32.add
    local.get $p4
    call $_ZN4core9panicking9panic_fmt17hbd8a975261a5f466E
    unreachable)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5b06d03055d0199cE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type $t2) $T0)
  (func $_ZN4core5panic9PanicInfo7message17h37659a96ee5da768E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=8)
  (func $_ZN4core5panic9PanicInfo8location17hf82c87160e16bf94E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load offset=12)
  (func $_ZN4core5panic8Location6caller17hece3bb8b9903df35E (type $t4) (param $p0 i32) (result i32)
    local.get $p0)
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he90c8df5a7dd961fE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    block $B0
      block $B1
        block $B2
          local.get $p2
          i32.eqz
          br_if $B2
          local.get $l3
          i32.const 40
          i32.add
          local.set $l4
          loop $L3
            block $B4
              local.get $p0
              i32.load offset=8
              i32.load8_u
              i32.eqz
              br_if $B4
              local.get $p0
              i32.load
              i32.const 1051572
              i32.const 4
              local.get $p0
              i32.load offset=4
              i32.load offset=12
              call_indirect (type $t5) $T0
              i32.eqz
              br_if $B4
              i32.const 1
              local.set $l5
              br $B1
            end
            local.get $l3
            i32.const 10
            i32.store offset=40
            local.get $l3
            i64.const 4294967306
            i64.store offset=32
            local.get $l3
            local.get $p2
            i32.store offset=28
            i32.const 0
            local.set $l6
            local.get $l3
            i32.const 0
            i32.store offset=24
            local.get $l3
            local.get $p2
            i32.store offset=20
            local.get $l3
            local.get $p1
            i32.store offset=16
            i32.const 1
            local.set $l7
            local.get $p1
            local.set $l8
            local.get $p2
            local.set $l5
            local.get $p2
            local.set $l9
            block $B5
              block $B6
                block $B7
                  loop $L8
                    local.get $l8
                    local.get $l6
                    i32.add
                    local.set $l8
                    local.get $l7
                    local.get $l3
                    i32.const 16
                    i32.add
                    i32.add
                    i32.const 23
                    i32.add
                    i32.load8_u
                    local.set $l10
                    block $B9
                      block $B10
                        block $B11
                          block $B12
                            local.get $l5
                            i32.const 7
                            i32.gt_u
                            br_if $B12
                            local.get $l5
                            i32.eqz
                            br_if $B11
                            local.get $l9
                            local.get $l6
                            i32.sub
                            local.set $l11
                            i32.const 0
                            local.set $l5
                            loop $L13
                              local.get $l8
                              local.get $l5
                              i32.add
                              i32.load8_u
                              local.get $l10
                              i32.const 255
                              i32.and
                              i32.eq
                              br_if $B9
                              local.get $l11
                              local.get $l5
                              i32.const 1
                              i32.add
                              local.tee $l5
                              i32.ne
                              br_if $L13
                              br $B11
                            end
                          end
                          local.get $l3
                          i32.const 8
                          i32.add
                          local.get $l10
                          local.get $l8
                          local.get $l5
                          call $_ZN4core5slice6memchr19memchr_general_case17h64949346494b2e13E
                          local.get $l3
                          i32.load offset=8
                          i32.const 1
                          i32.eq
                          br_if $B10
                          local.get $l3
                          i32.load offset=28
                          local.set $l9
                        end
                        local.get $l3
                        local.get $l9
                        i32.store offset=24
                        br $B6
                      end
                      local.get $l3
                      i32.load offset=12
                      local.set $l5
                      local.get $l3
                      i32.load offset=36
                      local.set $l7
                      local.get $l3
                      i32.load offset=24
                      local.set $l6
                    end
                    local.get $l3
                    local.get $l6
                    local.get $l5
                    i32.add
                    i32.const 1
                    i32.add
                    local.tee $l6
                    i32.store offset=24
                    block $B14
                      block $B15
                        block $B16
                          local.get $l6
                          local.get $l7
                          i32.ge_u
                          br_if $B16
                          local.get $l3
                          i32.load offset=20
                          local.set $l5
                          br $B15
                        end
                        local.get $l3
                        i32.load offset=20
                        local.tee $l5
                        local.get $l6
                        i32.lt_u
                        br_if $B15
                        local.get $l7
                        i32.const 5
                        i32.ge_u
                        br_if $B7
                        local.get $l3
                        i32.load offset=16
                        local.get $l6
                        local.get $l7
                        i32.sub
                        local.tee $l10
                        i32.add
                        local.tee $l8
                        local.get $l4
                        i32.eq
                        br_if $B14
                        local.get $l8
                        local.get $l4
                        local.get $l7
                        call $bcmp
                        i32.eqz
                        br_if $B14
                      end
                      local.get $l3
                      i32.load offset=28
                      local.tee $l9
                      local.get $l6
                      i32.lt_u
                      br_if $B6
                      local.get $l5
                      local.get $l9
                      i32.lt_u
                      br_if $B6
                      local.get $l9
                      local.get $l6
                      i32.sub
                      local.set $l5
                      local.get $l3
                      i32.load offset=16
                      local.set $l8
                      br $L8
                    end
                  end
                  local.get $p0
                  i32.load offset=8
                  i32.const 1
                  i32.store8
                  local.get $l10
                  i32.const 1
                  i32.add
                  local.set $l5
                  br $B5
                end
                local.get $l7
                i32.const 4
                i32.const 1052224
                call $_ZN4core5slice5index24slice_end_index_len_fail17h137fe51578ce6a78E
                unreachable
              end
              local.get $p0
              i32.load offset=8
              i32.const 0
              i32.store8
              local.get $p2
              local.set $l5
            end
            local.get $p0
            i32.load offset=4
            local.set $l8
            local.get $p0
            i32.load
            local.set $l10
            block $B17
              block $B18
                block $B19
                  local.get $l5
                  i32.eqz
                  br_if $B19
                  local.get $p2
                  local.get $l5
                  i32.eq
                  br_if $B19
                  block $B20
                    local.get $p2
                    local.get $l5
                    i32.le_u
                    br_if $B20
                    local.get $p1
                    local.get $l5
                    i32.add
                    local.tee $l11
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    br_if $B18
                  end
                  local.get $p1
                  local.get $p2
                  i32.const 0
                  local.get $l5
                  i32.const 1051576
                  call $_ZN4core3str16slice_error_fail17hc580b5b0f805653aE
                  unreachable
                end
                local.get $l10
                local.get $p1
                local.get $l5
                local.get $l8
                i32.load offset=12
                call_indirect (type $t5) $T0
                i32.eqz
                br_if $B17
                i32.const 1
                local.set $l5
                br $B1
              end
              block $B21
                local.get $l10
                local.get $p1
                local.get $l5
                local.get $l8
                i32.load offset=12
                call_indirect (type $t5) $T0
                i32.eqz
                br_if $B21
                i32.const 1
                local.set $l5
                br $B1
              end
              local.get $l11
              i32.load8_s
              i32.const -65
              i32.le_s
              br_if $B0
            end
            local.get $p1
            local.get $l5
            i32.add
            local.set $p1
            local.get $p2
            local.get $l5
            i32.sub
            local.tee $p2
            br_if $L3
          end
        end
        i32.const 0
        local.set $l5
      end
      local.get $l3
      i32.const 48
      i32.add
      global.set $g0
      local.get $l5
      return
    end
    local.get $p1
    local.get $p2
    local.get $l5
    local.get $p2
    i32.const 1051592
    call $_ZN4core3str16slice_error_fail17hc580b5b0f805653aE
    unreachable)
  (func $_ZN4core5slice6memchr19memchr_general_case17h64949346494b2e13E (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              local.get $p2
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.get $p2
              i32.sub
              local.tee $l4
              i32.eqz
              br_if $B4
              local.get $p3
              local.get $l4
              local.get $l4
              local.get $p3
              i32.gt_u
              select
              local.tee $l4
              i32.eqz
              br_if $B4
              i32.const 0
              local.set $l5
              local.get $p1
              i32.const 255
              i32.and
              local.set $l6
              block $B5
                loop $L6
                  local.get $p2
                  local.get $l5
                  i32.add
                  i32.load8_u
                  local.get $l6
                  i32.eq
                  br_if $B5
                  local.get $l4
                  local.get $l5
                  i32.const 1
                  i32.add
                  local.tee $l5
                  i32.ne
                  br_if $L6
                end
                local.get $l4
                local.get $p3
                i32.const -8
                i32.add
                local.tee $l7
                i32.le_u
                br_if $B3
                br $B2
              end
              i32.const 1
              local.set $l8
              br $B1
            end
            local.get $p3
            i32.const -8
            i32.add
            local.set $l7
            i32.const 0
            local.set $l4
          end
          local.get $p1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          local.set $l5
          block $B7
            loop $L8
              local.get $p2
              local.get $l4
              i32.add
              local.tee $l6
              i32.const 4
              i32.add
              i32.load
              local.get $l5
              i32.xor
              local.tee $l8
              i32.const -1
              i32.xor
              local.get $l8
              i32.const -16843009
              i32.add
              i32.and
              local.get $l6
              i32.load
              local.get $l5
              i32.xor
              local.tee $l6
              i32.const -1
              i32.xor
              local.get $l6
              i32.const -16843009
              i32.add
              i32.and
              i32.or
              i32.const -2139062144
              i32.and
              br_if $B7
              local.get $l4
              i32.const 8
              i32.add
              local.tee $l4
              local.get $l7
              i32.le_u
              br_if $L8
            end
          end
          local.get $l4
          local.get $p3
          i32.gt_u
          br_if $B0
        end
        i32.const 0
        local.set $l6
        i32.const 0
        local.set $l8
        block $B9
          local.get $l4
          local.get $p3
          i32.eq
          br_if $B9
          local.get $p2
          local.get $l4
          i32.add
          local.set $l8
          local.get $p3
          local.get $l4
          i32.sub
          local.set $l6
          i32.const 0
          local.set $l5
          local.get $p1
          i32.const 255
          i32.and
          local.set $p2
          block $B10
            loop $L11
              local.get $l8
              local.get $l5
              i32.add
              i32.load8_u
              local.get $p2
              i32.eq
              br_if $B10
              local.get $l6
              local.get $l5
              i32.const 1
              i32.add
              local.tee $l5
              i32.ne
              br_if $L11
            end
            i32.const 0
            local.set $l8
            br $B9
          end
          i32.const 1
          local.set $l8
          local.get $l5
          local.set $l6
        end
        local.get $l6
        local.get $l4
        i32.add
        local.set $l5
      end
      local.get $p0
      local.get $l5
      i32.store offset=4
      local.get $p0
      local.get $l8
      i32.store
      return
    end
    local.get $l4
    local.get $p3
    i32.const 1051992
    call $_ZN4core5slice5index26slice_start_index_len_fail17h4fadccc315d2004dE
    unreachable)
  (func $_ZN4core3fmt8builders10DebugTuple5field17h9ee83e361b9d7c56E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64) (local $l8 i64)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 1
    local.set $l4
    block $B0
      local.get $p0
      i32.load8_u offset=8
      br_if $B0
      local.get $p0
      i32.load offset=4
      local.set $l5
      block $B1
        local.get $p0
        i32.load
        local.tee $l6
        i32.load8_u
        i32.const 4
        i32.and
        br_if $B1
        i32.const 1
        local.set $l4
        local.get $l6
        i32.load offset=24
        i32.const 1051610
        i32.const 1051614
        local.get $l5
        select
        i32.const 2
        i32.const 1
        local.get $l5
        select
        local.get $l6
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t5) $T0
        br_if $B0
        local.get $p1
        local.get $p0
        i32.load
        local.get $p2
        i32.load offset=12
        call_indirect (type $t2) $T0
        local.set $l4
        br $B0
      end
      block $B2
        local.get $l5
        br_if $B2
        i32.const 1
        local.set $l4
        local.get $l6
        i32.load offset=24
        i32.const 1051612
        i32.const 2
        local.get $l6
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t5) $T0
        br_if $B0
        local.get $p0
        i32.load
        local.set $l6
      end
      i32.const 1
      local.set $l4
      local.get $l3
      i32.const 1
      i32.store8 offset=23
      local.get $l3
      i32.const 52
      i32.add
      i32.const 1051548
      i32.store
      local.get $l3
      local.get $l6
      i64.load offset=24 align=4
      i64.store offset=8
      local.get $l3
      local.get $l3
      i32.const 23
      i32.add
      i32.store offset=16
      local.get $l6
      i64.load offset=8 align=4
      local.set $l7
      local.get $l6
      i64.load offset=16 align=4
      local.set $l8
      local.get $l3
      local.get $l6
      i32.load8_u offset=32
      i32.store8 offset=56
      local.get $l3
      local.get $l8
      i64.store offset=40
      local.get $l3
      local.get $l7
      i64.store offset=32
      local.get $l3
      local.get $l6
      i64.load align=4
      i64.store offset=24
      local.get $l3
      local.get $l3
      i32.const 8
      i32.add
      i32.store offset=48
      local.get $p1
      local.get $l3
      i32.const 24
      i32.add
      local.get $p2
      i32.load offset=12
      call_indirect (type $t2) $T0
      br_if $B0
      local.get $l3
      i32.load offset=48
      i32.const 1051608
      i32.const 2
      local.get $l3
      i32.load offset=52
      i32.load offset=12
      call_indirect (type $t5) $T0
      local.set $l4
    end
    local.get $p0
    local.get $l4
    i32.store8 offset=8
    local.get $p0
    local.get $p0
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $l3
    i32.const 64
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt8builders10DebugTuple6finish17h400a4e39b06a2694E (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    local.get $p0
    i32.load8_u offset=8
    local.set $l1
    block $B0
      local.get $p0
      i32.load offset=4
      local.tee $l2
      i32.eqz
      br_if $B0
      local.get $l1
      i32.const 255
      i32.and
      local.set $l3
      i32.const 1
      local.set $l1
      block $B1
        local.get $l3
        br_if $B1
        block $B2
          local.get $l2
          i32.const 1
          i32.ne
          br_if $B2
          local.get $p0
          i32.load8_u offset=9
          i32.eqz
          br_if $B2
          local.get $p0
          i32.load
          local.tee $l3
          i32.load8_u
          i32.const 4
          i32.and
          br_if $B2
          i32.const 1
          local.set $l1
          local.get $l3
          i32.load offset=24
          i32.const 1051615
          i32.const 1
          local.get $l3
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type $t5) $T0
          br_if $B1
        end
        local.get $p0
        i32.load
        local.tee $l1
        i32.load offset=24
        i32.const 1051616
        i32.const 1
        local.get $l1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t5) $T0
        local.set $l1
      end
      local.get $p0
      local.get $l1
      i32.store8 offset=8
    end
    local.get $l1
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func $_ZN4core3fmt8builders10DebugInner5entry17hd637301b6cdb01ffE (type $t8) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64) (local $l7 i64)
    global.get $g0
    i32.const 64
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 1
    local.set $l4
    block $B0
      local.get $p0
      i32.load8_u offset=4
      br_if $B0
      local.get $p0
      i32.load8_u offset=5
      local.set $l4
      block $B1
        local.get $p0
        i32.load
        local.tee $l5
        i32.load8_u
        i32.const 4
        i32.and
        br_if $B1
        block $B2
          local.get $l4
          i32.const 255
          i32.and
          i32.eqz
          br_if $B2
          i32.const 1
          local.set $l4
          local.get $l5
          i32.load offset=24
          i32.const 1051610
          i32.const 2
          local.get $l5
          i32.const 28
          i32.add
          i32.load
          i32.load offset=12
          call_indirect (type $t5) $T0
          br_if $B0
          local.get $p0
          i32.load
          local.set $l5
        end
        local.get $p1
        local.get $l5
        local.get $p2
        i32.load offset=12
        call_indirect (type $t2) $T0
        local.set $l4
        br $B0
      end
      block $B3
        local.get $l4
        i32.const 255
        i32.and
        br_if $B3
        i32.const 1
        local.set $l4
        local.get $l5
        i32.load offset=24
        i32.const 1051617
        i32.const 1
        local.get $l5
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t5) $T0
        br_if $B0
        local.get $p0
        i32.load
        local.set $l5
      end
      i32.const 1
      local.set $l4
      local.get $l3
      i32.const 1
      i32.store8 offset=23
      local.get $l3
      i32.const 52
      i32.add
      i32.const 1051548
      i32.store
      local.get $l3
      local.get $l5
      i64.load offset=24 align=4
      i64.store offset=8
      local.get $l3
      local.get $l3
      i32.const 23
      i32.add
      i32.store offset=16
      local.get $l5
      i64.load offset=8 align=4
      local.set $l6
      local.get $l5
      i64.load offset=16 align=4
      local.set $l7
      local.get $l3
      local.get $l5
      i32.load8_u offset=32
      i32.store8 offset=56
      local.get $l3
      local.get $l7
      i64.store offset=40
      local.get $l3
      local.get $l6
      i64.store offset=32
      local.get $l3
      local.get $l5
      i64.load align=4
      i64.store offset=24
      local.get $l3
      local.get $l3
      i32.const 8
      i32.add
      i32.store offset=48
      local.get $p1
      local.get $l3
      i32.const 24
      i32.add
      local.get $p2
      i32.load offset=12
      call_indirect (type $t2) $T0
      br_if $B0
      local.get $l3
      i32.load offset=48
      i32.const 1051608
      i32.const 2
      local.get $l3
      i32.load offset=52
      i32.load offset=12
      call_indirect (type $t5) $T0
      local.set $l4
    end
    local.get $p0
    i32.const 1
    i32.store8 offset=5
    local.get $p0
    local.get $l4
    i32.store8 offset=4
    local.get $l3
    i32.const 64
    i32.add
    global.set $g0)
  (func $_ZN4core3fmt8builders8DebugSet5entry17h573d3b426d5b3db2E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    local.get $p1
    local.get $p2
    call $_ZN4core3fmt8builders10DebugInner5entry17hd637301b6cdb01ffE
    local.get $p0)
  (func $_ZN4core3fmt8builders9DebugList6finish17ha6c5257eb4646dd0E (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32)
    i32.const 1
    local.set $l1
    block $B0
      local.get $p0
      i32.load8_u offset=4
      br_if $B0
      local.get $p0
      i32.load
      local.tee $p0
      i32.load offset=24
      i32.const 1051619
      i32.const 1
      local.get $p0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type $t5) $T0
      local.set $l1
    end
    local.get $l1)
  (func $_ZN4core3fmt9Formatter12pad_integral17h9d065179d49875a0E (type $t15) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (param $p5 i32) (result i32)
    (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    block $B0
      block $B1
        local.get $p1
        i32.eqz
        br_if $B1
        i32.const 43
        i32.const 1114112
        local.get $p0
        i32.load
        local.tee $l6
        i32.const 1
        i32.and
        local.tee $p1
        select
        local.set $l7
        local.get $p1
        local.get $p5
        i32.add
        local.set $l8
        br $B0
      end
      local.get $p5
      i32.const 1
      i32.add
      local.set $l8
      local.get $p0
      i32.load
      local.set $l6
      i32.const 45
      local.set $l7
    end
    block $B2
      block $B3
        local.get $l6
        i32.const 4
        i32.and
        br_if $B3
        i32.const 0
        local.set $p2
        br $B2
      end
      i32.const 0
      local.set $l9
      block $B4
        local.get $p3
        i32.eqz
        br_if $B4
        local.get $p3
        local.set $l10
        local.get $p2
        local.set $p1
        loop $L5
          local.get $l9
          local.get $p1
          i32.load8_u
          i32.const 192
          i32.and
          i32.const 128
          i32.eq
          i32.add
          local.set $l9
          local.get $p1
          i32.const 1
          i32.add
          local.set $p1
          local.get $l10
          i32.const -1
          i32.add
          local.tee $l10
          br_if $L5
        end
      end
      local.get $l8
      local.get $p3
      i32.add
      local.get $l9
      i32.sub
      local.set $l8
    end
    i32.const 1
    local.set $p1
    block $B6
      block $B7
        local.get $p0
        i32.load offset=8
        i32.const 1
        i32.eq
        br_if $B7
        local.get $p0
        local.get $l7
        local.get $p2
        local.get $p3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h583ed654f8400469E
        br_if $B6
        local.get $p0
        i32.load offset=24
        local.get $p4
        local.get $p5
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t5) $T0
        return
      end
      block $B8
        local.get $p0
        i32.const 12
        i32.add
        i32.load
        local.tee $l9
        local.get $l8
        i32.gt_u
        br_if $B8
        local.get $p0
        local.get $l7
        local.get $p2
        local.get $p3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h583ed654f8400469E
        br_if $B6
        local.get $p0
        i32.load offset=24
        local.get $p4
        local.get $p5
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type $t5) $T0
        return
      end
      block $B9
        block $B10
          block $B11
            block $B12
              block $B13
                local.get $l6
                i32.const 8
                i32.and
                i32.eqz
                br_if $B13
                local.get $p0
                i32.load offset=4
                local.set $l6
                local.get $p0
                i32.const 48
                i32.store offset=4
                local.get $p0
                i32.load8_u offset=32
                local.set $l11
                i32.const 1
                local.set $p1
                local.get $p0
                i32.const 1
                i32.store8 offset=32
                local.get $p0
                local.get $l7
                local.get $p2
                local.get $p3
                call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h583ed654f8400469E
                br_if $B6
                i32.const 0
                local.set $p1
                local.get $l9
                local.get $l8
                i32.sub
                local.tee $l10
                local.set $p3
                i32.const 1
                local.get $p0
                i32.load8_u offset=32
                local.tee $l9
                local.get $l9
                i32.const 3
                i32.eq
                select
                i32.const 3
                i32.and
                br_table $B10 $B11 $B12 $B11 $B10
              end
              i32.const 0
              local.set $p1
              local.get $l9
              local.get $l8
              i32.sub
              local.tee $l9
              local.set $l8
              block $B14
                block $B15
                  block $B16
                    i32.const 1
                    local.get $p0
                    i32.load8_u offset=32
                    local.tee $l10
                    local.get $l10
                    i32.const 3
                    i32.eq
                    select
                    i32.const 3
                    i32.and
                    br_table $B14 $B15 $B16 $B15 $B14
                  end
                  local.get $l9
                  i32.const 1
                  i32.shr_u
                  local.set $p1
                  local.get $l9
                  i32.const 1
                  i32.add
                  i32.const 1
                  i32.shr_u
                  local.set $l8
                  br $B14
                end
                i32.const 0
                local.set $l8
                local.get $l9
                local.set $p1
              end
              local.get $p1
              i32.const 1
              i32.add
              local.set $p1
              loop $L17
                local.get $p1
                i32.const -1
                i32.add
                local.tee $p1
                i32.eqz
                br_if $B9
                local.get $p0
                i32.load offset=24
                local.get $p0
                i32.load offset=4
                local.get $p0
                i32.load offset=28
                i32.load offset=16
                call_indirect (type $t2) $T0
                i32.eqz
                br_if $L17
              end
              i32.const 1
              return
            end
            local.get $l10
            i32.const 1
            i32.shr_u
            local.set $p1
            local.get $l10
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set $p3
            br $B10
          end
          i32.const 0
          local.set $p3
          local.get $l10
          local.set $p1
        end
        local.get $p1
        i32.const 1
        i32.add
        local.set $p1
        block $B18
          loop $L19
            local.get $p1
            i32.const -1
            i32.add
            local.tee $p1
            i32.eqz
            br_if $B18
            local.get $p0
            i32.load offset=24
            local.get $p0
            i32.load offset=4
            local.get $p0
            i32.load offset=28
            i32.load offset=16
            call_indirect (type $t2) $T0
            i32.eqz
            br_if $L19
          end
          i32.const 1
          return
        end
        local.get $p0
        i32.load offset=4
        local.set $l10
        i32.const 1
        local.set $p1
        local.get $p0
        i32.load offset=24
        local.get $p4
        local.get $p5
        local.get $p0
        i32.load offset=28
        i32.load offset=12
        call_indirect (type $t5) $T0
        br_if $B6
        local.get $p3
        i32.const 1
        i32.add
        local.set $l9
        local.get $p0
        i32.load offset=28
        local.set $p3
        local.get $p0
        i32.load offset=24
        local.set $p2
        block $B20
          loop $L21
            local.get $l9
            i32.const -1
            i32.add
            local.tee $l9
            i32.eqz
            br_if $B20
            i32.const 1
            local.set $p1
            local.get $p2
            local.get $l10
            local.get $p3
            i32.load offset=16
            call_indirect (type $t2) $T0
            i32.eqz
            br_if $L21
            br $B6
          end
        end
        local.get $p0
        local.get $l11
        i32.store8 offset=32
        local.get $p0
        local.get $l6
        i32.store offset=4
        i32.const 0
        return
      end
      local.get $p0
      i32.load offset=4
      local.set $l10
      i32.const 1
      local.set $p1
      local.get $p0
      local.get $l7
      local.get $p2
      local.get $p3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h583ed654f8400469E
      br_if $B6
      local.get $p0
      i32.load offset=24
      local.get $p4
      local.get $p5
      local.get $p0
      i32.load offset=28
      i32.load offset=12
      call_indirect (type $t5) $T0
      br_if $B6
      local.get $l8
      i32.const 1
      i32.add
      local.set $l9
      local.get $p0
      i32.load offset=28
      local.set $p3
      local.get $p0
      i32.load offset=24
      local.set $p0
      loop $L22
        block $B23
          local.get $l9
          i32.const -1
          i32.add
          local.tee $l9
          br_if $B23
          i32.const 0
          return
        end
        i32.const 1
        local.set $p1
        local.get $p0
        local.get $l10
        local.get $p3
        i32.load offset=16
        call_indirect (type $t2) $T0
        i32.eqz
        br_if $L22
      end
    end
    local.get $p1)
  (func $_ZN4core3fmt5Write10write_char17ha13bb97dcd1b9d1fE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    i32.const 0
    i32.store offset=12
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p1
            i32.const 128
            i32.lt_u
            br_if $B3
            local.get $p1
            i32.const 2048
            i32.lt_u
            br_if $B2
            local.get $l2
            i32.const 12
            i32.add
            local.set $l3
            local.get $p1
            i32.const 65536
            i32.ge_u
            br_if $B1
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set $p1
            br $B0
          end
          local.get $l2
          local.get $p1
          i32.store8 offset=12
          local.get $l2
          i32.const 12
          i32.add
          local.set $l3
          i32.const 1
          local.set $p1
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get $l2
        local.get $p1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        local.get $l2
        i32.const 12
        i32.add
        local.set $l3
        i32.const 2
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get $l2
      local.get $p1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get $l2
      local.get $p1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get $l2
      local.get $p1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set $p1
    end
    local.get $p0
    local.get $l3
    local.get $p1
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he90c8df5a7dd961fE
    local.set $p1
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN4core3fmt5Write9write_fmt17h03cf40a86aca980fE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1051868
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17he323582fa336cb03E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p0
    i32.load
    local.get $p1
    local.get $p2
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he90c8df5a7dd961fE)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4da358c25276f90fE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 16
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $p0
    local.get $l2
    i32.const 0
    i32.store offset=12
    block $B0
      block $B1
        block $B2
          block $B3
            local.get $p1
            i32.const 128
            i32.lt_u
            br_if $B3
            local.get $p1
            i32.const 2048
            i32.lt_u
            br_if $B2
            local.get $l2
            i32.const 12
            i32.add
            local.set $l3
            local.get $p1
            i32.const 65536
            i32.ge_u
            br_if $B1
            local.get $l2
            local.get $p1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get $l2
            local.get $p1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get $l2
            local.get $p1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            local.set $p1
            br $B0
          end
          local.get $l2
          local.get $p1
          i32.store8 offset=12
          local.get $l2
          i32.const 12
          i32.add
          local.set $l3
          i32.const 1
          local.set $p1
          br $B0
        end
        local.get $l2
        local.get $p1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get $l2
        local.get $p1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        local.get $l2
        i32.const 12
        i32.add
        local.set $l3
        i32.const 2
        local.set $p1
        br $B0
      end
      local.get $l2
      local.get $p1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get $l2
      local.get $p1
      i32.const 18
      i32.shr_u
      i32.const 240
      i32.or
      i32.store8 offset=12
      local.get $l2
      local.get $p1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get $l2
      local.get $p1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      i32.const 4
      local.set $p1
    end
    local.get $p0
    local.get $l3
    local.get $p1
    call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he90c8df5a7dd961fE
    local.set $p1
    local.get $l2
    i32.const 16
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h7f78bc3e1801a83fE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $l2
    local.get $p0
    i32.load
    i32.store offset=4
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $l2
    i32.const 4
    i32.add
    i32.const 1051868
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h709781b6164d6ecbE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    local.set $l3
    local.get $p1
    i32.load offset=24
    local.set $p1
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p0
    i64.load align=4
    i64.store offset=8
    local.get $p1
    local.get $l3
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p0
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h583ed654f8400469E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32)
    block $B0
      block $B1
        local.get $p1
        i32.const 1114112
        i32.eq
        br_if $B1
        i32.const 1
        local.set $l4
        local.get $p0
        i32.load offset=24
        local.get $p1
        local.get $p0
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type $t2) $T0
        br_if $B0
      end
      block $B2
        local.get $p2
        br_if $B2
        i32.const 0
        return
      end
      local.get $p0
      i32.load offset=24
      local.get $p2
      local.get $p3
      local.get $p0
      i32.const 28
      i32.add
      i32.load
      i32.load offset=12
      call_indirect (type $t5) $T0
      local.set $l4
    end
    local.get $l4)
  (func $_ZN4core3fmt9Formatter9write_fmt17hbbc427c9716a7dbcE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32)
    global.get $g0
    i32.const 32
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.const 28
    i32.add
    i32.load
    local.set $l3
    local.get $p0
    i32.load offset=24
    local.set $p0
    local.get $l2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get $p1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get $p1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get $l2
    local.get $p1
    i64.load align=4
    i64.store offset=8
    local.get $p0
    local.get $l3
    local.get $l2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h2b0ce00a95e39e0bE
    local.set $p1
    local.get $l2
    i32.const 32
    i32.add
    global.set $g0
    local.get $p1)
  (func $_ZN4core3fmt9Formatter15debug_lower_hex17h1a33320600e5fe7fE (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load8_u
    i32.const 16
    i32.and
    i32.const 4
    i32.shr_u)
  (func $_ZN4core3fmt9Formatter15debug_upper_hex17ha4187b7193506a35E (type $t4) (param $p0 i32) (result i32)
    local.get $p0
    i32.load8_u
    i32.const 32
    i32.and
    i32.const 5
    i32.shr_u)
  (func $_ZN4core3fmt9Formatter11debug_tuple17h7aa98ec388b0e475E (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    local.get $p0
    local.get $p1
    i32.load offset=24
    local.get $p2
    local.get $p3
    local.get $p1
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t5) $T0
    i32.store8 offset=8
    local.get $p0
    local.get $p1
    i32.store
    local.get $p0
    local.get $p3
    i32.eqz
    i32.store8 offset=9
    local.get $p0
    i32.const 0
    i32.store offset=4)
  (func $_ZN4core3fmt9Formatter10debug_list17h937013fe24970c18E (type $t11) (param $p0 i32) (result i64)
    i64.const 4294967296
    i64.const 0
    local.get $p0
    i32.load offset=24
    i32.const 1051618
    i32.const 1
    local.get $p0
    i32.const 28
    i32.add
    i32.load
    i32.load offset=12
    call_indirect (type $t5) $T0
    select
    local.get $p0
    i64.extend_i32_u
    i64.or)
  (func $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h0bf0faa5dce145e0E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    block $B0
      local.get $p0
      i32.load8_u
      br_if $B0
      local.get $p1
      i32.const 1051923
      i32.const 5
      call $_ZN4core3fmt9Formatter3pad17h2864104689a0de9eE
      return
    end
    local.get $p1
    i32.const 1051919
    i32.const 4
    call $_ZN4core3fmt9Formatter3pad17h2864104689a0de9eE)
  (func $_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h3a288c25be52f87aE (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i64)
    i32.const 1
    local.set $l3
    block $B0
      block $B1
        local.get $p2
        i32.load offset=24
        i32.const 34
        local.get $p2
        i32.const 28
        i32.add
        i32.load
        i32.load offset=16
        call_indirect (type $t2) $T0
        br_if $B1
        block $B2
          block $B3
            local.get $p1
            br_if $B3
            i32.const 0
            local.set $l4
            br $B2
          end
          local.get $p0
          local.get $p1
          i32.add
          local.set $l5
          i32.const 0
          local.set $l4
          local.get $p0
          local.set $l6
          local.get $p0
          local.set $l7
          i32.const 0
          local.set $l8
          block $B4
            loop $L5
              local.get $l6
              i32.const 1
              i32.add
              local.set $l9
              block $B6
                block $B7
                  block $B8
                    local.get $l6
                    i32.load8_s
                    local.tee $l10
                    i32.const -1
                    i32.gt_s
                    br_if $B8
                    block $B9
                      block $B10
                        local.get $l9
                        local.get $l5
                        i32.ne
                        br_if $B10
                        i32.const 0
                        local.set $l11
                        local.get $l5
                        local.set $l6
                        br $B9
                      end
                      local.get $l6
                      i32.load8_u offset=1
                      i32.const 63
                      i32.and
                      local.set $l11
                      local.get $l6
                      i32.const 2
                      i32.add
                      local.tee $l9
                      local.set $l6
                    end
                    local.get $l10
                    i32.const 31
                    i32.and
                    local.set $l3
                    block $B11
                      local.get $l10
                      i32.const 255
                      i32.and
                      local.tee $l10
                      i32.const 223
                      i32.gt_u
                      br_if $B11
                      local.get $l11
                      local.get $l3
                      i32.const 6
                      i32.shl
                      i32.or
                      local.set $l11
                      br $B7
                    end
                    block $B12
                      block $B13
                        local.get $l6
                        local.get $l5
                        i32.ne
                        br_if $B13
                        i32.const 0
                        local.set $l12
                        local.get $l5
                        local.set $l13
                        br $B12
                      end
                      local.get $l6
                      i32.load8_u
                      i32.const 63
                      i32.and
                      local.set $l12
                      local.get $l6
                      i32.const 1
                      i32.add
                      local.tee $l9
                      local.set $l13
                    end
                    local.get $l12
                    local.get $l11
                    i32.const 6
                    i32.shl
                    i32.or
                    local.set $l11
                    block $B14
                      local.get $l10
                      i32.const 240
                      i32.ge_u
                      br_if $B14
                      local.get $l11
                      local.get $l3
                      i32.const 12
                      i32.shl
                      i32.or
                      local.set $l11
                      br $B7
                    end
                    block $B15
                      block $B16
                        local.get $l13
                        local.get $l5
                        i32.ne
                        br_if $B16
                        i32.const 0
                        local.set $l10
                        local.get $l9
                        local.set $l6
                        br $B15
                      end
                      local.get $l13
                      i32.const 1
                      i32.add
                      local.set $l6
                      local.get $l13
                      i32.load8_u
                      i32.const 63
                      i32.and
                      local.set $l10
                    end
                    local.get $l11
                    i32.const 6
                    i32.shl
                    local.get $l3
                    i32.const 18
                    i32.shl
                    i32.const 1835008
                    i32.and
                    i32.or
                    local.get $l10
                    i32.or
                    local.tee $l11
                    i32.const 1114112
                    i32.ne
                    br_if $B6
                    br $B4
                  end
                  local.get $l10
                  i32.const 255
                  i32.and
                  local.set $l11
                end
                local.get $l9
                local.set $l6
              end
              i32.const 2
              local.set $l9
              i32.const 116
              local.set $l13
              block $B17
                block $B18
                  block $B19
                    block $B20
                      block $B21
                        block $B22
                          block $B23
                            block $B24
                              local.get $l11
                              i32.const -9
                              i32.add
                              br_table $B18 $B23 $B21 $B21 $B24 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B21 $B20 $B21 $B21 $B21 $B21 $B20 $B22
                            end
                            i32.const 114
                            local.set $l13
                            br $B18
                          end
                          i32.const 110
                          local.set $l13
                          br $B18
                        end
                        local.get $l11
                        i32.const 92
                        i32.eq
                        br_if $B20
                      end
                      block $B25
                        local.get $l11
                        call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17ha75bcaa64fe78fd8E
                        br_if $B25
                        local.get $l11
                        call $_ZN4core7unicode9printable12is_printable17ha43e8ea6bcc1cdf0E
                        br_if $B17
                      end
                      local.get $l11
                      i32.const 1
                      i32.or
                      i32.clz
                      i32.const 2
                      i32.shr_u
                      i32.const 7
                      i32.xor
                      i64.extend_i32_u
                      i64.const 21474836480
                      i64.or
                      local.set $l14
                      i32.const 3
                      local.set $l9
                      br $B19
                    end
                  end
                  local.get $l11
                  local.set $l13
                end
                block $B26
                  block $B27
                    local.get $l8
                    local.get $l4
                    i32.lt_u
                    br_if $B27
                    block $B28
                      local.get $l4
                      i32.eqz
                      br_if $B28
                      local.get $l4
                      local.get $p1
                      i32.eq
                      br_if $B28
                      local.get $l4
                      local.get $p1
                      i32.ge_u
                      br_if $B27
                      local.get $p0
                      local.get $l4
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if $B27
                    end
                    block $B29
                      local.get $l8
                      i32.eqz
                      br_if $B29
                      local.get $l8
                      local.get $p1
                      i32.eq
                      br_if $B29
                      local.get $l8
                      local.get $p1
                      i32.ge_u
                      br_if $B27
                      local.get $p0
                      local.get $l8
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if $B27
                    end
                    local.get $p2
                    i32.load offset=24
                    local.get $p0
                    local.get $l4
                    i32.add
                    local.get $l8
                    local.get $l4
                    i32.sub
                    local.get $p2
                    i32.load offset=28
                    i32.load offset=12
                    call_indirect (type $t5) $T0
                    i32.eqz
                    br_if $B26
                    i32.const 1
                    return
                  end
                  local.get $p0
                  local.get $p1
                  local.get $l4
                  local.get $l8
                  i32.const 1051928
                  call $_ZN4core3str16slice_error_fail17hc580b5b0f805653aE
                  unreachable
                end
                loop $L30
                  local.get $l9
                  local.set $l10
                  i32.const 1
                  local.set $l3
                  i32.const 92
                  local.set $l4
                  i32.const 1
                  local.set $l9
                  block $B31
                    block $B32
                      block $B33
                        block $B34
                          block $B35
                            block $B36
                              local.get $l10
                              br_table $B34 $B35 $B31 $B36 $B34
                            end
                            block $B37
                              block $B38
                                block $B39
                                  block $B40
                                    local.get $l14
                                    i64.const 32
                                    i64.shr_u
                                    i32.wrap_i64
                                    i32.const 255
                                    i32.and
                                    br_table $B34 $B37 $B38 $B39 $B40 $B33 $B34
                                  end
                                  local.get $l14
                                  i64.const -1095216660481
                                  i64.and
                                  i64.const 12884901888
                                  i64.or
                                  local.set $l14
                                  i32.const 3
                                  local.set $l9
                                  i32.const 117
                                  local.set $l4
                                  br $B31
                                end
                                local.get $l14
                                i64.const -1095216660481
                                i64.and
                                i64.const 8589934592
                                i64.or
                                local.set $l14
                                i32.const 3
                                local.set $l9
                                i32.const 123
                                local.set $l4
                                br $B31
                              end
                              i32.const 48
                              i32.const 87
                              local.get $l13
                              local.get $l14
                              i32.wrap_i64
                              local.tee $l9
                              i32.const 2
                              i32.shl
                              i32.const 28
                              i32.and
                              i32.shr_u
                              i32.const 15
                              i32.and
                              local.tee $l4
                              i32.const 10
                              i32.lt_u
                              select
                              local.get $l4
                              i32.add
                              local.set $l4
                              block $B41
                                local.get $l9
                                i32.eqz
                                br_if $B41
                                local.get $l14
                                i64.const -1
                                i64.add
                                i64.const 4294967295
                                i64.and
                                local.get $l14
                                i64.const -4294967296
                                i64.and
                                i64.or
                                local.set $l14
                                br $B32
                              end
                              local.get $l14
                              i64.const -1095216660481
                              i64.and
                              i64.const 4294967296
                              i64.or
                              local.set $l14
                              br $B32
                            end
                            local.get $l14
                            i64.const -1095216660481
                            i64.and
                            local.set $l14
                            i32.const 3
                            local.set $l9
                            i32.const 125
                            local.set $l4
                            br $B31
                          end
                          i32.const 0
                          local.set $l9
                          local.get $l13
                          local.set $l4
                          br $B31
                        end
                        i32.const 1
                        local.set $l9
                        block $B42
                          local.get $l11
                          i32.const 128
                          i32.lt_u
                          br_if $B42
                          i32.const 2
                          local.set $l9
                          local.get $l11
                          i32.const 2048
                          i32.lt_u
                          br_if $B42
                          i32.const 3
                          i32.const 4
                          local.get $l11
                          i32.const 65536
                          i32.lt_u
                          select
                          local.set $l9
                        end
                        local.get $l9
                        local.get $l8
                        i32.add
                        local.set $l4
                        br $B17
                      end
                      local.get $l14
                      i64.const -1095216660481
                      i64.and
                      i64.const 17179869184
                      i64.or
                      local.set $l14
                    end
                    i32.const 3
                    local.set $l9
                  end
                  local.get $p2
                  i32.load offset=24
                  local.get $l4
                  local.get $p2
                  i32.load offset=28
                  i32.load offset=16
                  call_indirect (type $t2) $T0
                  br_if $B1
                  br $L30
                end
              end
              local.get $l8
              local.get $l7
              i32.sub
              local.get $l6
              i32.add
              local.set $l8
              local.get $l6
              local.set $l7
              local.get $l5
              local.get $l6
              i32.ne
              br_if $L5
            end
          end
          local.get $l4
          i32.eqz
          br_if $B2
          local.get $l4
          local.get $p1
          i32.eq
          br_if $B2
          local.get $l4
          local.get $p1
          i32.ge_u
          br_if $B0
          local.get $p0
          local.get $l4
          i32.add
          i32.load8_s
          i32.const -65
          i32.le_s
          br_if $B0
        end
        i32.const 1
        local.set $l3
        local.get $p2
        i32.load offset=24
        local.get $p0
        local.get $l4
        i32.add
        local.get $p1
        local.get $l4
        i32.sub
        local.get $p2
        i32.load offset=28
        i32.load offset=12
        call_indirect (type $t5) $T0
        br_if $B1
        local.get $p2
        i32.load offset=24
        i32.const 34
        local.get $p2
        i32.load offset=28
        i32.load offset=16
        call_indirect (type $t2) $T0
        local.set $l3
      end
      local.get $l3
      return
    end
    local.get $p0
    local.get $p1
    local.get $l4
    local.get $p1
    i32.const 1051944
    call $_ZN4core3str16slice_error_fail17hc580b5b0f805653aE
    unreachable)
  (func $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17ha75bcaa64fe78fd8E (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32)
    block $B0
      block $B1
        block $B2
          i32.const 0
          i32.const 15
          local.get $p0
          i32.const 68900
          i32.lt_u
          select
          local.tee $l1
          local.get $l1
          i32.const 8
          i32.add
          local.tee $l1
          local.get $l1
          i32.const 2
          i32.shl
          i32.const 1053976
          i32.add
          i32.load
          i32.const 11
          i32.shl
          local.get $p0
          i32.const 11
          i32.shl
          local.tee $l1
          i32.gt_u
          select
          local.tee $l2
          local.get $l2
          i32.const 4
          i32.add
          local.tee $l2
          local.get $l2
          i32.const 2
          i32.shl
          i32.const 1053976
          i32.add
          i32.load
          i32.const 11
          i32.shl
          local.get $l1
          i32.gt_u
          select
          local.tee $l2
          local.get $l2
          i32.const 2
          i32.add
          local.tee $l2
          local.get $l2
          i32.const 2
          i32.shl
          i32.const 1053976
          i32.add
          i32.load
          i32.const 11
          i32.shl
          local.get $l1
          i32.gt_u
          select
          local.tee $l2
          local.get $l2
          i32.const 1
          i32.add
          local.tee $l2
          local.get $l2
          i32.const 2
          i32.shl
          i32.const 1053976
          i32.add
          i32.load
          i32.const 11
          i32.shl
          local.get $l1
          i32.gt_u
          select
          local.tee $l2
          i32.const 2
          i32.shl
          i32.const 1053976
          i32.add
          i32.load
          i32.const 11
          i32.shl
          local.tee $l3
          local.get $l1
          i32.eq
          local.get $l3
          local.get $l1
          i32.lt_u
          i32.add
          local.get $l2
          i32.add
          local.tee $l1
          i32.const 30
          i32.gt_u
          br_if $B2
          i32.const 689
          local.set $l4
          block $B3
            local.get $l1
            i32.const 30
            i32.eq
            br_if $B3
            local.get $l1
            i32.const 2
            i32.shl
            i32.const 1053980
            i32.add
            i32.load
            i32.const 21
            i32.shr_u
            local.set $l4
          end
          i32.const 0
          local.set $l2
          block $B4
            local.get $l1
            i32.const -1
            i32.add
            local.tee $l3
            local.get $l1
            i32.gt_u
            br_if $B4
            local.get $l3
            i32.const 31
            i32.ge_u
            br_if $B0
            local.get $l3
            i32.const 2
            i32.shl
            i32.const 1053976
            i32.add
            i32.load
            i32.const 2097151
            i32.and
            local.set $l2
          end
          block $B5
            local.get $l4
            local.get $l1
            i32.const 2
            i32.shl
            i32.const 1053976
            i32.add
            i32.load
            i32.const 21
            i32.shr_u
            local.tee $l1
            i32.const 1
            i32.add
            i32.eq
            br_if $B5
            local.get $p0
            local.get $l2
            i32.sub
            local.set $l2
            local.get $l1
            i32.const 689
            local.get $l1
            i32.const 689
            i32.gt_u
            select
            local.set $l3
            local.get $l4
            i32.const -1
            i32.add
            local.set $l4
            i32.const 0
            local.set $p0
            loop $L6
              local.get $l3
              local.get $l1
              i32.eq
              br_if $B1
              local.get $p0
              local.get $l1
              i32.const 1054100
              i32.add
              i32.load8_u
              i32.add
              local.tee $p0
              local.get $l2
              i32.gt_u
              br_if $B5
              local.get $l4
              local.get $l1
              i32.const 1
              i32.add
              local.tee $l1
              i32.ne
              br_if $L6
            end
            local.get $l4
            local.set $l1
          end
          local.get $l1
          i32.const 1
          i32.and
          return
        end
        local.get $l1
        i32.const 31
        i32.const 1053928
        call $_ZN4core9panicking18panic_bounds_check17h81a63bf79280172dE
        unreachable
      end
      local.get $l3
      i32.const 689
      i32.const 1053944
      call $_ZN4core9panicking18panic_bounds_check17h81a63bf79280172dE
      unreachable
    end
    local.get $l3
    i32.const 31
    i32.const 1053960
    call $_ZN4core9panicking18panic_bounds_check17h81a63bf79280172dE
    unreachable)
  (func $_ZN4core7unicode9printable12is_printable17ha43e8ea6bcc1cdf0E (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    block $B0
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  block $B7
                    block $B8
                      local.get $p0
                      i32.const 65536
                      i32.lt_u
                      br_if $B8
                      local.get $p0
                      i32.const 131072
                      i32.lt_u
                      br_if $B7
                      i32.const 0
                      local.set $l1
                      local.get $p0
                      i32.const -201547
                      i32.add
                      i32.const 716213
                      i32.lt_u
                      br_if $B6
                      local.get $p0
                      i32.const -195102
                      i32.add
                      i32.const 1506
                      i32.lt_u
                      br_if $B6
                      local.get $p0
                      i32.const -191457
                      i32.add
                      i32.const 3103
                      i32.lt_u
                      br_if $B6
                      local.get $p0
                      i32.const -183970
                      i32.add
                      i32.const 14
                      i32.lt_u
                      br_if $B6
                      local.get $p0
                      i32.const 2097150
                      i32.and
                      i32.const 178206
                      i32.eq
                      br_if $B6
                      local.get $p0
                      i32.const -173790
                      i32.add
                      i32.const 34
                      i32.lt_u
                      br_if $B6
                      local.get $p0
                      i32.const -177973
                      i32.add
                      i32.const 11
                      i32.lt_u
                      br_if $B6
                      local.get $p0
                      i32.const 918000
                      i32.lt_u
                      return
                    end
                    local.get $p0
                    i32.const 65280
                    i32.and
                    i32.const 8
                    i32.shr_u
                    local.set $l2
                    i32.const 1052536
                    local.set $l3
                    i32.const 0
                    local.set $l4
                    local.get $p0
                    i32.const 255
                    i32.and
                    local.set $l5
                    block $B9
                      loop $L10
                        local.get $l3
                        i32.const 2
                        i32.add
                        local.set $l6
                        local.get $l4
                        local.get $l3
                        i32.load8_u offset=1
                        local.tee $l1
                        i32.add
                        local.set $l7
                        block $B11
                          local.get $l3
                          i32.load8_u
                          local.tee $l3
                          local.get $l2
                          i32.eq
                          br_if $B11
                          local.get $l3
                          local.get $l2
                          i32.gt_u
                          br_if $B9
                          local.get $l7
                          local.set $l4
                          local.get $l6
                          local.set $l3
                          local.get $l6
                          i32.const 1052618
                          i32.ne
                          br_if $L10
                          br $B9
                        end
                        local.get $l7
                        local.get $l4
                        i32.lt_u
                        br_if $B5
                        local.get $l7
                        i32.const 290
                        i32.gt_u
                        br_if $B4
                        local.get $l4
                        i32.const 1052618
                        i32.add
                        local.set $l3
                        block $B12
                          loop $L13
                            local.get $l1
                            i32.eqz
                            br_if $B12
                            local.get $l1
                            i32.const -1
                            i32.add
                            local.set $l1
                            local.get $l3
                            i32.load8_u
                            local.set $l4
                            local.get $l3
                            i32.const 1
                            i32.add
                            local.set $l3
                            local.get $l4
                            local.get $l5
                            i32.ne
                            br_if $L13
                          end
                          i32.const 0
                          local.set $l1
                          br $B6
                        end
                        local.get $l7
                        local.set $l4
                        local.get $l6
                        local.set $l3
                        local.get $l6
                        i32.const 1052618
                        i32.ne
                        br_if $L10
                      end
                    end
                    local.get $p0
                    i32.const 65535
                    i32.and
                    local.set $l5
                    i32.const 1052908
                    local.set $l3
                    i32.const 1
                    local.set $l1
                    loop $L14
                      local.get $l3
                      i32.const 1
                      i32.add
                      local.set $p0
                      block $B15
                        block $B16
                          local.get $l3
                          i32.load8_u
                          local.tee $l4
                          i32.const 24
                          i32.shl
                          i32.const 24
                          i32.shr_s
                          local.tee $l7
                          i32.const 0
                          i32.lt_s
                          br_if $B16
                          local.get $p0
                          local.set $l3
                          br $B15
                        end
                        local.get $p0
                        i32.const 1053217
                        i32.eq
                        br_if $B3
                        local.get $l7
                        i32.const 127
                        i32.and
                        i32.const 8
                        i32.shl
                        local.get $l3
                        i32.load8_u offset=1
                        i32.or
                        local.set $l4
                        local.get $l3
                        i32.const 2
                        i32.add
                        local.set $l3
                      end
                      local.get $l5
                      local.get $l4
                      i32.sub
                      local.tee $l5
                      i32.const 0
                      i32.lt_s
                      br_if $B6
                      local.get $l1
                      i32.const 1
                      i32.xor
                      local.set $l1
                      local.get $l3
                      i32.const 1053217
                      i32.ne
                      br_if $L14
                      br $B6
                    end
                  end
                  local.get $p0
                  i32.const 65280
                  i32.and
                  i32.const 8
                  i32.shr_u
                  local.set $l2
                  i32.const 1053217
                  local.set $l3
                  i32.const 0
                  local.set $l4
                  local.get $p0
                  i32.const 255
                  i32.and
                  local.set $l5
                  block $B17
                    loop $L18
                      local.get $l3
                      i32.const 2
                      i32.add
                      local.set $l6
                      local.get $l4
                      local.get $l3
                      i32.load8_u offset=1
                      local.tee $l1
                      i32.add
                      local.set $l7
                      block $B19
                        local.get $l3
                        i32.load8_u
                        local.tee $l3
                        local.get $l2
                        i32.eq
                        br_if $B19
                        local.get $l3
                        local.get $l2
                        i32.gt_u
                        br_if $B17
                        local.get $l7
                        local.set $l4
                        local.get $l6
                        local.set $l3
                        local.get $l6
                        i32.const 1053293
                        i32.ne
                        br_if $L18
                        br $B17
                      end
                      local.get $l7
                      local.get $l4
                      i32.lt_u
                      br_if $B2
                      local.get $l7
                      i32.const 175
                      i32.gt_u
                      br_if $B1
                      local.get $l4
                      i32.const 1053293
                      i32.add
                      local.set $l3
                      block $B20
                        loop $L21
                          local.get $l1
                          i32.eqz
                          br_if $B20
                          local.get $l1
                          i32.const -1
                          i32.add
                          local.set $l1
                          local.get $l3
                          i32.load8_u
                          local.set $l4
                          local.get $l3
                          i32.const 1
                          i32.add
                          local.set $l3
                          local.get $l4
                          local.get $l5
                          i32.ne
                          br_if $L21
                        end
                        i32.const 0
                        local.set $l1
                        br $B6
                      end
                      local.get $l7
                      local.set $l4
                      local.get $l6
                      local.set $l3
                      local.get $l6
                      i32.const 1053293
                      i32.ne
                      br_if $L18
                    end
                  end
                  local.get $p0
                  i32.const 65535
                  i32.and
                  local.set $l5
                  i32.const 1053468
                  local.set $l3
                  i32.const 1
                  local.set $l1
                  loop $L22
                    local.get $l3
                    i32.const 1
                    i32.add
                    local.set $p0
                    block $B23
                      block $B24
                        local.get $l3
                        i32.load8_u
                        local.tee $l4
                        i32.const 24
                        i32.shl
                        i32.const 24
                        i32.shr_s
                        local.tee $l7
                        i32.const 0
                        i32.lt_s
                        br_if $B24
                        local.get $p0
                        local.set $l3
                        br $B23
                      end
                      local.get $p0
                      i32.const 1053887
                      i32.eq
                      br_if $B0
                      local.get $l7
                      i32.const 127
                      i32.and
                      i32.const 8
                      i32.shl
                      local.get $l3
                      i32.load8_u offset=1
                      i32.or
                      local.set $l4
                      local.get $l3
                      i32.const 2
                      i32.add
                      local.set $l3
                    end
                    local.get $l5
                    local.get $l4
                    i32.sub
                    local.tee $l5
                    i32.const 0
                    i32.lt_s
                    br_if $B6
                    local.get $l1
                    i32.const 1
                    i32.xor
                    local.set $l1
                    local.get $l3
                    i32.const 1053887
                    i32.ne
                    br_if $L22
                  end
                end
                local.get $l1
                i32.const 1
                i32.and
                return
              end
              local.get $l4
              local.get $l7
              i32.const 1052504
              call $_ZN4core5slice5index22slice_index_order_fail17hbb6862c61eca836dE
              unreachable
            end
            local.get $l7
            i32.const 290
            i32.const 1052504
            call $_ZN4core5slice5index24slice_end_index_len_fail17h137fe51578ce6a78E
            unreachable
          end
          i32.const 1051369
          i32.const 43
          i32.const 1052520
          call $_ZN4core9panicking5panic17h8e74859c8f9988caE
          unreachable
        end
        local.get $l4
        local.get $l7
        i32.const 1052504
        call $_ZN4core5slice5index22slice_index_order_fail17hbb6862c61eca836dE
        unreachable
      end
      local.get $l7
      i32.const 175
      i32.const 1052504
      call $_ZN4core5slice5index24slice_end_index_len_fail17h137fe51578ce6a78E
      unreachable
    end
    i32.const 1051369
    i32.const 43
    i32.const 1052520
    call $_ZN4core9panicking5panic17h8e74859c8f9988caE
    unreachable)
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h0c505ead2e56acc7E (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    local.get $p2
    local.get $p0
    local.get $p1
    call $_ZN4core3fmt9Formatter3pad17h2864104689a0de9eE)
  (func $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h251511e585329301E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i32)
    i32.const 1
    local.set $l2
    block $B0
      local.get $p1
      i32.load offset=24
      i32.const 39
      local.get $p1
      i32.const 28
      i32.add
      i32.load
      i32.load offset=16
      call_indirect (type $t2) $T0
      br_if $B0
      i32.const 116
      local.set $l3
      i32.const 2
      local.set $l4
      block $B1
        block $B2
          block $B3
            block $B4
              block $B5
                block $B6
                  local.get $p0
                  i32.load
                  local.tee $p0
                  i32.const -9
                  i32.add
                  br_table $B1 $B5 $B3 $B3 $B6 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B3 $B2 $B3 $B3 $B3 $B3 $B2 $B4
                end
                i32.const 114
                local.set $l3
                i32.const 2
                local.set $l4
                br $B1
              end
              i32.const 110
              local.set $l3
              i32.const 2
              local.set $l4
              br $B1
            end
            local.get $p0
            i32.const 92
            i32.eq
            br_if $B2
          end
          block $B7
            block $B8
              block $B9
                block $B10
                  local.get $p0
                  call $_ZN4core7unicode12unicode_data15grapheme_extend6lookup17ha75bcaa64fe78fd8E
                  br_if $B10
                  local.get $p0
                  call $_ZN4core7unicode9printable12is_printable17ha43e8ea6bcc1cdf0E
                  i32.eqz
                  br_if $B9
                  i32.const 1
                  local.set $l4
                  br $B7
                end
                local.get $p0
                i32.const 1
                i32.or
                i32.clz
                i32.const 2
                i32.shr_u
                i32.const 7
                i32.xor
                i64.extend_i32_u
                i64.const 21474836480
                i64.or
                local.set $l5
                br $B8
              end
              local.get $p0
              i32.const 1
              i32.or
              i32.clz
              i32.const 2
              i32.shr_u
              i32.const 7
              i32.xor
              i64.extend_i32_u
              i64.const 21474836480
              i64.or
              local.set $l5
            end
            i32.const 3
            local.set $l4
          end
          local.get $p0
          local.set $l3
          br $B1
        end
        local.get $p0
        local.set $l3
        i32.const 2
        local.set $l4
      end
      loop $L11
        local.get $l4
        local.set $l6
        i32.const 92
        local.set $p0
        i32.const 1
        local.set $l2
        i32.const 1
        local.set $l4
        block $B12
          block $B13
            block $B14
              block $B15
                block $B16
                  block $B17
                    local.get $l6
                    br_table $B15 $B16 $B12 $B17 $B15
                  end
                  block $B18
                    block $B19
                      block $B20
                        block $B21
                          local.get $l5
                          i64.const 32
                          i64.shr_u
                          i32.wrap_i64
                          i32.const 255
                          i32.and
                          br_table $B15 $B18 $B19 $B20 $B21 $B14 $B15
                        end
                        local.get $l5
                        i64.const -1095216660481
                        i64.and
                        i64.const 12884901888
                        i64.or
                        local.set $l5
                        i32.const 117
                        local.set $p0
                        br $B13
                      end
                      local.get $l5
                      i64.const -1095216660481
                      i64.and
                      i64.const 8589934592
                      i64.or
                      local.set $l5
                      i32.const 123
                      local.set $p0
                      br $B13
                    end
                    i32.const 48
                    i32.const 87
                    local.get $l3
                    local.get $l5
                    i32.wrap_i64
                    local.tee $l4
                    i32.const 2
                    i32.shl
                    i32.const 28
                    i32.and
                    i32.shr_u
                    i32.const 15
                    i32.and
                    local.tee $p0
                    i32.const 10
                    i32.lt_u
                    select
                    local.get $p0
                    i32.add
                    local.set $p0
                    block $B22
                      local.get $l4
                      i32.eqz
                      br_if $B22
                      local.get $l5
                      i64.const -1
                      i64.add
                      i64.const 4294967295
                      i64.and
                      local.get $l5
                      i64.const -4294967296
                      i64.and
                      i64.or
                      local.set $l5
                      br $B13
                    end
                    local.get $l5
                    i64.const -1095216660481
                    i64.and
                    i64.const 4294967296
                    i64.or
                    local.set $l5
                    br $B13
                  end
                  local.get $l5
                  i64.const -1095216660481
                  i64.and
                  local.set $l5
                  i32.const 125
                  local.set $p0
                  br $B13
                end
                i32.const 0
                local.set $l4
                local.get $l3
                local.set $p0
                br $B12
              end
              local.get $p1
              i32.load offset=24
              i32.const 39
              local.get $p1
              i32.load offset=28
              i32.load offset=16
              call_indirect (type $t2) $T0
              return
            end
            local.get $l5
            i64.const -1095216660481
            i64.and
            i64.const 17179869184
            i64.or
            local.set $l5
          end
          i32.const 3
          local.set $l4
        end
        local.get $p1
        i32.load offset=24
        local.get $p0
        local.get $p1
        i32.load offset=28
        i32.load offset=16
        call_indirect (type $t2) $T0
        i32.eqz
        br_if $L11
      end
    end
    local.get $l2)
  (func $_ZN4core5slice6memchr7memrchr17h38c4ba77ee3d51e5E (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    local.get $p3
    i32.const 0
    local.get $p3
    local.get $p2
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.get $p2
    i32.sub
    local.tee $l4
    i32.sub
    i32.const 7
    i32.and
    local.get $p3
    local.get $l4
    i32.lt_u
    local.tee $l5
    select
    local.tee $l6
    i32.sub
    local.set $l7
    block $B0
      block $B1
        local.get $p3
        local.get $l6
        i32.lt_u
        br_if $B1
        local.get $p3
        local.get $l4
        local.get $l5
        select
        local.set $l8
        local.get $p2
        local.get $l7
        i32.add
        local.get $p2
        local.get $p3
        i32.add
        local.tee $l4
        i32.sub
        local.set $l5
        local.get $l4
        i32.const -1
        i32.add
        local.set $l4
        local.get $p1
        i32.const 255
        i32.and
        local.set $l9
        block $B2
          block $B3
            block $B4
              loop $L5
                local.get $l6
                i32.eqz
                br_if $B4
                local.get $l5
                i32.const 1
                i32.add
                local.set $l5
                local.get $l6
                i32.const -1
                i32.add
                local.set $l6
                local.get $l4
                i32.load8_u
                local.set $l10
                local.get $l4
                i32.const -1
                i32.add
                local.set $l4
                local.get $l10
                local.get $l9
                i32.ne
                br_if $L5
              end
              local.get $l7
              local.get $l5
              i32.sub
              local.set $l6
              br $B3
            end
            local.get $p1
            i32.const 255
            i32.and
            i32.const 16843009
            i32.mul
            local.set $l4
            block $B6
              loop $L7
                local.get $l7
                local.tee $l6
                local.get $l8
                i32.le_u
                br_if $B6
                local.get $l6
                i32.const -8
                i32.add
                local.set $l7
                local.get $p2
                local.get $l6
                i32.add
                local.tee $l5
                i32.const -4
                i32.add
                i32.load
                local.get $l4
                i32.xor
                local.tee $l10
                i32.const -1
                i32.xor
                local.get $l10
                i32.const -16843009
                i32.add
                i32.and
                local.get $l5
                i32.const -8
                i32.add
                i32.load
                local.get $l4
                i32.xor
                local.tee $l5
                i32.const -1
                i32.xor
                local.get $l5
                i32.const -16843009
                i32.add
                i32.and
                i32.or
                i32.const -2139062144
                i32.and
                i32.eqz
                br_if $L7
              end
            end
            local.get $l6
            local.get $p3
            i32.gt_u
            br_if $B0
            local.get $p2
            i32.const -1
            i32.add
            local.set $l5
            local.get $p1
            i32.const 255
            i32.and
            local.set $l10
            loop $L8
              block $B9
                local.get $l6
                br_if $B9
                i32.const 0
                local.set $l4
                br $B2
              end
              local.get $l5
              local.get $l6
              i32.add
              local.set $l4
              local.get $l6
              i32.const -1
              i32.add
              local.set $l6
              local.get $l4
              i32.load8_u
              local.get $l10
              i32.ne
              br_if $L8
            end
          end
          i32.const 1
          local.set $l4
        end
        local.get $p0
        local.get $l6
        i32.store offset=4
        local.get $p0
        local.get $l4
        i32.store
        return
      end
      local.get $l7
      local.get $p3
      i32.const 1052008
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4fadccc315d2004dE
      unreachable
    end
    local.get $l6
    local.get $p3
    i32.const 1052024
    call $_ZN4core5slice5index24slice_end_index_len_fail17h137fe51578ce6a78E
    unreachable)
  (func $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hec75eb987b4d9b2bE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    local.get $p0
    i64.load8_u
    i32.const 1
    local.get $p1
    call $_ZN4core3fmt3num3imp7fmt_u6417hf7dd6955b271cd51E)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17ha5caf19e06be7a5aE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load8_u
    local.set $l3
    i32.const 0
    local.set $p0
    loop $L0
      local.get $l2
      local.get $p0
      i32.add
      i32.const 127
      i32.add
      local.get $l3
      i32.const 15
      i32.and
      local.tee $l4
      i32.const 48
      i32.or
      local.get $l4
      i32.const 87
      i32.add
      local.get $l4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get $p0
      i32.const -1
      i32.add
      local.set $p0
      local.get $l3
      i32.const 4
      i32.shr_u
      i32.const 15
      i32.and
      local.tee $l3
      br_if $L0
    end
    block $B1
      local.get $p0
      i32.const 128
      i32.add
      local.tee $l3
      i32.const 129
      i32.lt_u
      br_if $B1
      local.get $l3
      i32.const 128
      i32.const 1051648
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4fadccc315d2004dE
      unreachable
    end
    local.get $p1
    i32.const 1
    i32.const 1051664
    i32.const 2
    local.get $l2
    local.get $p0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get $p0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h9d065179d49875a0E
    local.set $p0
    local.get $l2
    i32.const 128
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17hbf03e45f18908e6eE (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $l3
    i32.const 0
    local.set $p0
    loop $L0
      local.get $l2
      local.get $p0
      i32.add
      i32.const 127
      i32.add
      local.get $l3
      i32.const 15
      i32.and
      local.tee $l4
      i32.const 48
      i32.or
      local.get $l4
      i32.const 87
      i32.add
      local.get $l4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get $p0
      i32.const -1
      i32.add
      local.set $p0
      local.get $l3
      i32.const 4
      i32.shr_u
      local.tee $l3
      br_if $L0
    end
    block $B1
      local.get $p0
      i32.const 128
      i32.add
      local.tee $l3
      i32.const 129
      i32.lt_u
      br_if $B1
      local.get $l3
      i32.const 128
      i32.const 1051648
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4fadccc315d2004dE
      unreachable
    end
    local.get $p1
    i32.const 1
    i32.const 1051664
    i32.const 2
    local.get $l2
    local.get $p0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get $p0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h9d065179d49875a0E
    local.set $p0
    local.get $l2
    i32.const 128
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt3num3imp7fmt_u6417hf7dd6955b271cd51E (type $t16) (param $p0 i64) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    global.get $g0
    i32.const 48
    i32.sub
    local.tee $l3
    global.set $g0
    i32.const 39
    local.set $l4
    block $B0
      block $B1
        local.get $p0
        i64.const 10000
        i64.ge_u
        br_if $B1
        local.get $p0
        local.set $l5
        br $B0
      end
      i32.const 39
      local.set $l4
      loop $L2
        local.get $l3
        i32.const 9
        i32.add
        local.get $l4
        i32.add
        local.tee $l6
        i32.const -4
        i32.add
        local.get $p0
        local.get $p0
        i64.const 10000
        i64.div_u
        local.tee $l5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee $l7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee $l8
        i32.const 1
        i32.shl
        i32.const 1051666
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get $l6
        i32.const -2
        i32.add
        local.get $l7
        local.get $l8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1051666
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get $l4
        i32.const -4
        i32.add
        local.set $l4
        local.get $p0
        i64.const 99999999
        i64.gt_u
        local.set $l6
        local.get $l5
        local.set $p0
        local.get $l6
        br_if $L2
      end
    end
    block $B3
      local.get $l5
      i32.wrap_i64
      local.tee $l6
      i32.const 99
      i32.le_s
      br_if $B3
      local.get $l3
      i32.const 9
      i32.add
      local.get $l4
      i32.const -2
      i32.add
      local.tee $l4
      i32.add
      local.get $l5
      i32.wrap_i64
      local.tee $l6
      local.get $l6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee $l6
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1051666
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block $B4
      block $B5
        local.get $l6
        i32.const 10
        i32.lt_s
        br_if $B5
        local.get $l3
        i32.const 9
        i32.add
        local.get $l4
        i32.const -2
        i32.add
        local.tee $l4
        i32.add
        local.get $l6
        i32.const 1
        i32.shl
        i32.const 1051666
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br $B4
      end
      local.get $l3
      i32.const 9
      i32.add
      local.get $l4
      i32.const -1
      i32.add
      local.tee $l4
      i32.add
      local.get $l6
      i32.const 48
      i32.add
      i32.store8
    end
    local.get $p2
    local.get $p1
    i32.const 1051332
    i32.const 0
    local.get $l3
    i32.const 9
    i32.add
    local.get $l4
    i32.add
    i32.const 39
    local.get $l4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h9d065179d49875a0E
    local.set $l4
    local.get $l3
    i32.const 48
    i32.add
    global.set $g0
    local.get $l4)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h6cd23eca2795f5a5E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load8_u
    local.set $l3
    i32.const 0
    local.set $p0
    loop $L0
      local.get $l2
      local.get $p0
      i32.add
      i32.const 127
      i32.add
      local.get $l3
      i32.const 15
      i32.and
      local.tee $l4
      i32.const 48
      i32.or
      local.get $l4
      i32.const 55
      i32.add
      local.get $l4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get $p0
      i32.const -1
      i32.add
      local.set $p0
      local.get $l3
      i32.const 4
      i32.shr_u
      i32.const 15
      i32.and
      local.tee $l3
      br_if $L0
    end
    block $B1
      local.get $p0
      i32.const 128
      i32.add
      local.tee $l3
      i32.const 129
      i32.lt_u
      br_if $B1
      local.get $l3
      i32.const 128
      i32.const 1051648
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4fadccc315d2004dE
      unreachable
    end
    local.get $p1
    i32.const 1
    i32.const 1051664
    i32.const 2
    local.get $l2
    local.get $p0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get $p0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h9d065179d49875a0E
    local.set $p0
    local.get $l2
    i32.const 128
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17hba262f9d0662bd59E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32)
    global.get $g0
    i32.const 128
    i32.sub
    local.tee $l2
    global.set $g0
    local.get $p0
    i32.load
    local.set $l3
    i32.const 0
    local.set $p0
    loop $L0
      local.get $l2
      local.get $p0
      i32.add
      i32.const 127
      i32.add
      local.get $l3
      i32.const 15
      i32.and
      local.tee $l4
      i32.const 48
      i32.or
      local.get $l4
      i32.const 55
      i32.add
      local.get $l4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get $p0
      i32.const -1
      i32.add
      local.set $p0
      local.get $l3
      i32.const 4
      i32.shr_u
      local.tee $l3
      br_if $L0
    end
    block $B1
      local.get $p0
      i32.const 128
      i32.add
      local.tee $l3
      i32.const 129
      i32.lt_u
      br_if $B1
      local.get $l3
      i32.const 128
      i32.const 1051648
      call $_ZN4core5slice5index26slice_start_index_len_fail17h4fadccc315d2004dE
      unreachable
    end
    local.get $p1
    i32.const 1
    i32.const 1051664
    i32.const 2
    local.get $l2
    local.get $p0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get $p0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h9d065179d49875a0E
    local.set $p0
    local.get $l2
    i32.const 128
    i32.add
    global.set $g0
    local.get $p0)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17haba1c899df784ee3E (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i64)
    local.get $p0
    i32.load
    local.tee $p0
    i64.extend_i32_s
    local.tee $l2
    local.get $l2
    i64.const 63
    i64.shr_s
    local.tee $l2
    i64.add
    local.get $l2
    i64.xor
    local.get $p0
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u
    local.get $p1
    call $_ZN4core3fmt3num3imp7fmt_u6417hf7dd6955b271cd51E)
  (func $memcpy (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    block $B0
      local.get $p2
      i32.eqz
      br_if $B0
      local.get $p0
      local.set $l3
      loop $L1
        local.get $l3
        local.get $p1
        i32.load8_u
        i32.store8
        local.get $p1
        i32.const 1
        i32.add
        local.set $p1
        local.get $l3
        i32.const 1
        i32.add
        local.set $l3
        local.get $p2
        i32.const -1
        i32.add
        local.tee $p2
        br_if $L1
      end
    end
    local.get $p0)
  (func $bcmp (type $t5) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    i32.const 0
    local.set $l3
    block $B0
      local.get $p2
      i32.eqz
      br_if $B0
      block $B1
        loop $L2
          local.get $p0
          i32.load8_u
          local.tee $l4
          local.get $p1
          i32.load8_u
          local.tee $l5
          i32.ne
          br_if $B1
          local.get $p0
          i32.const 1
          i32.add
          local.set $p0
          local.get $p1
          i32.const 1
          i32.add
          local.set $p1
          local.get $p2
          i32.const -1
          i32.add
          local.tee $p2
          i32.eqz
          br_if $B0
          br $L2
        end
      end
      local.get $l4
      local.get $l5
      i32.sub
      local.set $l3
    end
    local.get $l3)
  (table $T0 74 74 funcref)
  (memory $memory 17)
  (global $g0 (mut i32) (i32.const 1048576))
  (global $__data_end i32 (i32.const 1055339))
  (global $__heap_base i32 (i32.const 1055339))
  (export "memory" (memory 0))
  (export "sum" (func $sum))
  (export "main" (func $main))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem $e0 (i32.const 1) $_ZN4main4main17h2d6c3d678af9e020E $_ZN4core3ptr13drop_in_place17h1957c0dcdcc85c00E $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h7378e2ca5f2faee7E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2f57cf320ff603fbE $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h709781b6164d6ecbE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hef9067cd1ecc3b06E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he384be2d960c6ad1E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hfa73b6b31429f930E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17haba1c899df784ee3E $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17hfffd727e6ccfd577E $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h640ade9e579b53c1E $_ZN3std5alloc24default_alloc_error_hook17h9e541ae6e1f41d08E $_ZN4core3ptr13drop_in_place17h048b5e3abdc16383E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h5efd725e3db8a76cE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h62f6de824ad3367bE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he3d8419f874b7ae6E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h5f8ccbea4ea1f91cE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hc51306909f33c414E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h1548d2104ad03c57E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha137423ab39c4222E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8dbc9aa948a0e144E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hb43130e8617dcddeE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he7410b3044728bd0E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf14c273f0cad9665E $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb12a092877cd4efaE $_ZN4core3ptr13drop_in_place17h8d1571f79390c810E $_ZN62_$LT$std..ffi..c_str..NulError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6680b3972b81aa7eE $_ZN60_$LT$core..cell..BorrowError$u20$as$u20$core..fmt..Debug$GT$3fmt17h23691e0d11fd27aeE $_ZN4core3ptr13drop_in_place17h1f40655422319526E $_ZN82_$LT$std..sys_common..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h31d673d913f15a5dE $_ZN4core3ptr13drop_in_place17h4b533a0374418de7E $_ZN3std5error5Error5cause17h8214aa27e0c9608bE $_ZN3std5error5Error7type_id17h3b13ad09f2d121c4E $_ZN3std5error5Error9backtrace17hcd2abcae457e1561E $_ZN243_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$std..error..Error$GT$11description17h8130d7f7dfc98ec4E $_ZN244_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Display$GT$3fmt17h3cd45fe01c227ac7E $_ZN242_$LT$std..error..$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$..from..StringError$u20$as$u20$core..fmt..Debug$GT$3fmt17h37d3a9c04493b89bE $_ZN4core3ptr13drop_in_place17h091a79c5c0c7dc5dE $_ZN80_$LT$std..io..Write..write_fmt..Adaptor$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h6aa37e88d6e88ebdE $_ZN4core3fmt5Write10write_char17h335a205655d81582E $_ZN4core3fmt5Write9write_fmt17h5b33a41cd0e61b61E $_ZN80_$LT$std..io..Write..write_fmt..Adaptor$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17he4cd47fc37292186E $_ZN4core3fmt5Write10write_char17h3080bb939e6765f7E $_ZN4core3fmt5Write9write_fmt17h28d762786ea1687cE $_ZN3std4sync4once4Once9call_once28_$u7b$$u7b$closure$u7d$$u7d$17hd096e490552fba44E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcf8854751614c1e7E $_ZN3std4sync4once4Once15call_once_force28_$u7b$$u7b$closure$u7d$$u7d$17h287779af2e20826bE $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8a7a06e4a7921b64E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h2d52a615cd4ce459E $_ZN4core3ptr13drop_in_place17hf96175c0cde0b7f8E $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17hff016b0cddab5adcE $_ZN90_$LT$std..panicking..begin_panic_handler..PanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h0ccbde21d5021d2dE $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h53530152035b1861E $_ZN93_$LT$std..panicking..begin_panic_handler..StrPanicPayload$u20$as$u20$core..panic..BoxMeUp$GT$3get17h5ed36339ce80eeb5E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h5ddc35932bfa82d2E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7134204eebcf97edE $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17ha0c6ac7caff02232E $_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17haa6e207d3ef31d0cE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f2d95f17d034da1E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h6698aec92049b0beE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8e06a9c740c3d4a5E $_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h660766b4a6d57456E $_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h251511e585329301E $_ZN4core3ops8function6FnOnce9call_once17hf0dad1bbd1a4d2fbE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5b06d03055d0199cE $_ZN4core3ptr13drop_in_place17h009b392e72e978c2E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hac5711afa8b210d0E $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he90c8df5a7dd961fE $_ZN4core3fmt5Write10write_char17ha13bb97dcd1b9d1fE $_ZN4core3fmt5Write9write_fmt17h03cf40a86aca980fE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17he323582fa336cb03E $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h4da358c25276f90fE $_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h7f78bc3e1801a83fE)
  (data $d0 (i32.const 1048576) "Hello, world!\0a\00\00\00\00\10\00\0e\00\00\00.\5csrc\5cmain.rs\00\00\00\18\00\10\00\0d\00\00\00\0c\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00attempt to add with overflow\02\00\00\00\04\00\00\00\04\00\00\00\03\00\00\00\03\00\00\00\04\00\00\00\0d\00\00\00\04\00\00\00\04\00\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00\0d\00\00\00\04\00\00\00\04\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\0d\00\00\00\04\00\00\00\04\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\0d\00\00\00\04\00\00\00\04\00\00\00\17\00\00\00already borrowedalready mutably borrowedassertion failed: `(left == right)`\0a  left: ``,\0a right: ``\00\00\f4\00\10\00-\00\00\00!\01\10\00\0c\00\00\00-\01\10\00\01\00\00\00\0d\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00assertion failed: mid <= self.len()/rustc/cb75ad5db02783e8b0222fee363c5f63f7e2cf5b/library/core/src/slice/mod.rs{\01\10\00M\00\00\00\de\04\00\00\09\00\00\00called `Option::unwrap()` on a `None` value\00\0d\00\00\00\00\00\00\00\01\00\00\00\19\00\00\00\1a\00\00\00\10\00\00\00\04\00\00\00\1b\00\00\00\0d\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00called `Result::unwrap()` on an `Err` value\00\1d\00\00\00\08\00\00\00\04\00\00\00\1e\00\00\00\0d\00\00\00\04\00\00\00\04\00\00\00\07\00\00\00library/std/src/thread/mod.rsfailed to generate unique thread ID: bitspace exhausted\80\02\10\00\1d\00\00\00\e3\03\00\00\11\00\00\00\80\02\10\00\1d\00\00\00\e9\03\00\00*\00\00\00thread name may not contain interior null bytes\00\80\02\10\00\1d\00\00\00#\04\00\00*\00\00\00`: \00\1f\00\00\00\0c\00\00\00\04\00\00\00 \00\00\00!\00\00\00\22\00\00\00#\00\00\00 \00\00\00$\00\00\00%\00\00\00\00library/std/src/io/buffered/bufwriter.rs\00\00\00a\03\10\00(\00\00\00\9d\00\00\00)\00\00\00a\03\10\00(\00\00\00\df\00\00\00\1d\00\00\00unexpected end of fileother os erroroperation interruptedwrite zerotimed outinvalid datainvalid input parameteroperation would blockentity already existsbroken pipeaddress not availableaddress in usenot connectedconnection abortedconnection resetconnection refusedpermission deniedentity not found\00\00\00\cc\00\10\00\00\00\00\00 (os error )\cc\00\10\00\00\00\00\00\e0\04\10\00\0b\00\00\00\eb\04\10\00\01\00\00\00library/std/src/io/stdio.rs\00\04\05\10\00\1b\00\00\004\02\00\00\17\00\00\00\04\05\10\00\1b\00\00\00\aa\02\00\00\14\00\00\00failed printing to : \00\00\00@\05\10\00\13\00\00\00S\05\10\00\02\00\00\00\04\05\10\00\1b\00\00\00\ac\03\00\00\09\00\00\00stdoutformatter error\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00'\00\00\00(\00\00\00)\00\00\00&\00\00\00\0c\00\00\00\04\00\00\00*\00\00\00+\00\00\00,\00\00\00\0d\00\00\00\04\00\00\00\04\00\00\00-\00\00\00.\00\00\00library/std/src/sync/once.rs\d4\05\10\00\1c\00\00\00\05\01\00\002\00\00\00\0d\00\00\00\04\00\00\00\04\00\00\00/\00\00\000\00\00\00\d4\05\10\00\1c\00\00\00A\01\00\001\00\00\00assertion failed: state_and_queue & STATE_MASK == RUNNING\00\00\00\d4\05\10\00\1c\00\00\00\ab\01\00\00\15\00\00\00Once instance has previously been poisoned\00\00\d4\05\10\00\1c\00\00\00\8a\01\00\00\15\00\00\00\02\00\00\00\d4\05\10\00\1c\00\00\00\f1\01\00\00\09\00\00\00\d4\05\10\00\1c\00\00\00\fd\01\00\005\00\00\00assertion failed: queue != DONElibrary/std/src/sys_common/at_exit_imp.rs\ef\06\10\00)\00\00\000\00\00\00\0d\00\00\00PoisonError { inner: .. }library/std/src/sys_common/thread_info.rs\00\00A\07\10\00)\00\00\00\15\00\00\00\16\00\00\00A\07\10\00)\00\00\00\16\00\00\00\18\00\00\00A\07\10\00)\00\00\00\19\00\00\00\15\00\00\00A\07\10\00)\00\00\00(\00\00\00$\00\00\00assertion failed: c.borrow().is_none()\00\00A\07\10\00)\00\00\00(\00\00\00\1a\00\00\00A\07\10\00)\00\00\00)\00\00\00\22\00\00\00\0d\00\00\00\00\00\00\00\01\00\00\001\00\00\00library/std/src/panicking.rs\04\08\10\00\1c\00\00\00\eb\01\00\00\1f\00\00\00\04\08\10\00\1c\00\00\00\ec\01\00\00\1e\00\00\002\00\00\00\10\00\00\00\04\00\00\003\00\00\004\00\00\00\0d\00\00\00\08\00\00\00\04\00\00\005\00\00\006\00\00\00\1f\00\00\00\0c\00\00\00\04\00\00\007\00\00\00\0d\00\00\00\08\00\00\00\04\00\00\008\00\00\00\0d\00\00\00\08\00\00\00\04\00\00\009\00\00\00:\00\00\00NulError\0d\00\00\00\04\00\00\00\04\00\00\00;\00\00\00library/std/src/sys_common/thread_parker/generic.rs\00\b4\08\10\003\00\00\00!\00\00\00&\00\00\00inconsistent park state\00\b4\08\10\003\00\00\00/\00\00\00\17\00\00\00\f4\00\10\00-\00\00\00!\01\10\00\0c\00\00\004\03\10\00\03\00\00\00park state changed unexpectedly\008\09\10\00\1f\00\00\00\b4\08\10\003\00\00\00,\00\00\00\11\00\00\00inconsistent state in unpark\b4\08\10\003\00\00\00f\00\00\00\12\00\00\00\b4\08\10\003\00\00\00t\00\00\00\1f\00\00\00operation successfulcondvar wait not supportedlibrary/std/src/sys/wasm/../unsupported/condvar.rs\da\09\10\002\00\00\00\17\00\00\00\09\00\00\00cannot recursively acquire mutex\1c\0a\10\00 \00\00\00library/std/src/sys/wasm/../unsupported/mutex.rsD\0a\10\000\00\00\00\17\00\00\00\09\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00\84\0a\10\00\1c\00\00\00\19\02\00\00\05\00\00\00`..\00\c5\0a\10\00\02\00\00\00BorrowErrorBorrowMutErrorcalled `Option::unwrap()` on a `None` value: \00\00\c4\0a\10\00\00\00\00\00\14\0b\10\00\02\00\00\00B\00\00\00\00\00\00\00\01\00\00\00C\00\00\00index out of bounds: the len is  but the index is \00\008\0b\10\00 \00\00\00X\0b\10\00\12\00\00\00library/core/src/fmt/builders.rsB\00\00\00\0c\00\00\00\04\00\00\00D\00\00\00E\00\00\00F\00\00\00    |\0b\10\00 \00\00\002\00\00\00!\00\00\00|\0b\10\00 \00\00\003\00\00\00\12\00\00\00,\0a, (\0a(,)\0a[]library/core/src/fmt/num.rs\00\e4\0b\10\00\1b\00\00\00e\00\00\00\14\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00B\00\00\00\04\00\00\00\04\00\00\00G\00\00\00H\00\00\00I\00\00\00library/core/src/fmt/mod.rstruefalse\f4\0c\10\00\1b\00\00\00\fe\07\00\00\1e\00\00\00\f4\0c\10\00\1b\00\00\00\05\08\00\00\16\00\00\00library/core/src/slice/memchr.rs8\0d\10\00 \00\00\00Z\00\00\00\05\00\00\008\0d\10\00 \00\00\00s\00\00\00\1a\00\00\008\0d\10\00 \00\00\00\8f\00\00\00\05\00\00\00range start index  out of range for slice of length \88\0d\10\00\12\00\00\00\9a\0d\10\00\22\00\00\00range end index \cc\0d\10\00\10\00\00\00\9a\0d\10\00\22\00\00\00slice index starts at  but ends at \00\ec\0d\10\00\16\00\00\00\02\0e\10\00\0d\00\00\00library/core/src/str/pattern.rs\00 \0e\10\00\1f\00\00\00\b0\01\00\00&\00\00\00[...]byte index  is out of bounds of `\00\00U\0e\10\00\0b\00\00\00`\0e\10\00\16\00\00\00\c4\0a\10\00\01\00\00\00begin <= end ( <= ) when slicing `\00\00\90\0e\10\00\0e\00\00\00\9e\0e\10\00\04\00\00\00\a2\0e\10\00\10\00\00\00\c4\0a\10\00\01\00\00\00 is not a char boundary; it is inside  (bytes ) of `U\0e\10\00\0b\00\00\00\d4\0e\10\00&\00\00\00\fa\0e\10\00\08\00\00\00\02\0f\10\00\06\00\00\00\c4\0a\10\00\01\00\00\00library/core/src/unicode/printable.rs\00\00\000\0f\10\00%\00\00\00\0a\00\00\00\1c\00\00\000\0f\10\00%\00\00\00\1a\00\00\006\00\00\00\00\01\03\05\05\06\06\03\07\06\08\08\09\11\0a\1c\0b\19\0c\14\0d\10\0e\0d\0f\04\10\03\12\12\13\09\16\01\17\05\18\02\19\03\1a\07\1c\02\1d\01\1f\16 \03+\03,\02-\0b.\010\031\022\01\a7\02\a9\02\aa\04\ab\08\fa\02\fb\05\fd\04\fe\03\ff\09\adxy\8b\8d\a20WX\8b\8c\90\1c\1d\dd\0e\0fKL\fb\fc./?\5c]_\b5\e2\84\8d\8e\91\92\a9\b1\ba\bb\c5\c6\c9\ca\de\e4\e5\ff\00\04\11\12)147:;=IJ]\84\8e\92\a9\b1\b4\ba\bb\c6\ca\ce\cf\e4\e5\00\04\0d\0e\11\12)14:;EFIJ^de\84\91\9b\9d\c9\ce\cf\0d\11)EIWde\8d\91\a9\b4\ba\bb\c5\c9\df\e4\e5\f0\0d\11EIde\80\84\b2\bc\be\bf\d5\d7\f0\f1\83\85\8b\a4\a6\be\bf\c5\c7\ce\cf\da\dbH\98\bd\cd\c6\ce\cfINOWY^_\89\8e\8f\b1\b6\b7\bf\c1\c6\c7\d7\11\16\17[\5c\f6\f7\fe\ff\80\0dmq\de\df\0e\0f\1fno\1c\1d_}~\ae\af\bb\bc\fa\16\17\1e\1fFGNOXZ\5c^~\7f\b5\c5\d4\d5\dc\f0\f1\f5rs\8ftu\96/_&./\a7\af\b7\bf\c7\cf\d7\df\9a@\97\980\8f\1f\c0\c1\ce\ffNOZ[\07\08\0f\10'/\ee\efno7=?BE\90\91\fe\ffSgu\c8\c9\d0\d1\d8\d9\e7\fe\ff\00 _\22\82\df\04\82D\08\1b\04\06\11\81\ac\0e\80\ab5(\0b\80\e0\03\19\08\01\04/\044\04\07\03\01\07\06\07\11\0aP\0f\12\07U\07\03\04\1c\0a\09\03\08\03\07\03\02\03\03\03\0c\04\05\03\0b\06\01\0e\15\05:\03\11\07\06\05\10\07W\07\02\07\15\0dP\04C\03-\03\01\04\11\06\0f\0c:\04\1d%_ m\04j%\80\c8\05\82\b0\03\1a\06\82\fd\03Y\07\15\0b\17\09\14\0c\14\0cj\06\0a\06\1a\06Y\07+\05F\0a,\04\0c\04\01\031\0b,\04\1a\06\0b\03\80\ac\06\0a\06!?L\04-\03t\08<\03\0f\03<\078\08+\05\82\ff\11\18\08/\11-\03 \10!\0f\80\8c\04\82\97\19\0b\15\88\94\05/\05;\07\02\0e\18\09\80\b3-t\0c\80\d6\1a\0c\05\80\ff\05\80\df\0c\ee\0d\03\84\8d\037\09\81\5c\14\80\b8\08\80\cb*8\03\0a\068\08F\08\0c\06t\0b\1e\03Z\04Y\09\80\83\18\1c\0a\16\09L\04\80\8a\06\ab\a4\0c\17\041\a1\04\81\da&\07\0c\05\05\80\a5\11\81m\10x(*\06L\04\80\8d\04\80\be\03\1b\03\0f\0d\00\06\01\01\03\01\04\02\08\08\09\02\0a\05\0b\02\0e\04\10\01\11\02\12\05\13\11\14\01\15\02\17\02\19\0d\1c\05\1d\08$\01j\03k\02\bc\02\d1\02\d4\0c\d5\09\d6\02\d7\02\da\01\e0\05\e1\02\e8\02\ee \f0\04\f8\02\f9\02\fa\02\fb\01\0c';>NO\8f\9e\9e\9f\06\07\096=>V\f3\d0\d1\04\14\1867VW\7f\aa\ae\af\bd5\e0\12\87\89\8e\9e\04\0d\0e\11\12)14:EFIJNOde\5c\b6\b7\1b\1c\07\08\0a\0b\14\1769:\a8\a9\d8\d9\097\90\91\a8\07\0a;>fi\8f\92o_\ee\efZb\9a\9b'(U\9d\a0\a1\a3\a4\a7\a8\ad\ba\bc\c4\06\0b\0c\15\1d:?EQ\a6\a7\cc\cd\a0\07\19\1a\22%>?\c5\c6\04 #%&(38:HJLPSUVXZ\5c^`cefksx}\7f\8a\a4\aa\af\b0\c0\d0\ae\afy\ccno\93^\22{\05\03\04-\03f\03\01/.\80\82\1d\031\0f\1c\04$\09\1e\05+\05D\04\0e*\80\aa\06$\04$\04(\084\0b\01\80\90\817\09\16\0a\08\80\989\03c\08\090\16\05!\03\1b\05\01@8\04K\05/\04\0a\07\09\07@ '\04\0c\096\03:\05\1a\07\04\0c\07PI73\0d3\07.\08\0a\81&RN(\08*V\1c\14\17\09N\04\1e\0fC\0e\19\07\0a\06H\08'\09u\0b?A*\06;\05\0a\06Q\06\01\05\10\03\05\80\8bb\1eH\08\0a\80\a6^\22E\0b\0a\06\0d\139\07\0a6,\04\10\80\c0<dS\0cH\09\0aFE\1bH\08S\1d9\81\07F\0a\1d\03GI7\03\0e\08\0a\069\07\0a\816\19\80\b7\01\0f2\0d\83\9bfu\0b\80\c4\8a\bc\84/\8f\d1\82G\a1\b9\829\07*\04\02`&\0aF\0a(\05\13\82\b0[eK\049\07\11@\05\0b\02\0e\97\f8\08\84\d6*\09\a2\f7\81\1f1\03\11\04\08\81\8c\89\04k\05\0d\03\09\07\10\93`\80\f6\0as\08n\17F\80\9a\14\0cW\09\19\80\87\81G\03\85B\0f\15\85P+\80\d5-\03\1a\04\02\81p:\05\01\85\00\80\d7)L\04\0a\04\02\83\11DL=\80\c2<\06\01\04U\05\1b4\02\81\0e,\04d\0cV\0a\80\ae8\1d\0d,\04\09\07\02\0e\06\80\9a\83\d8\08\0d\03\0d\03t\0cY\07\0c\14\0c\048\08\0a\06(\08\22N\81T\0c\15\03\03\05\07\09\19\07\07\09\03\0d\07)\80\cb%\0a\84\06library/core/src/unicode/unicode_data.rs\00\bf\14\10\00(\00\00\00K\00\00\00(\00\00\00\bf\14\10\00(\00\00\00W\00\00\00\16\00\00\00\bf\14\10\00(\00\00\00R\00\00\00>\00\00\00\00\03\00\00\83\04 \00\91\05`\00]\13\a0\00\12\17\a0\1e\0c \e0\1e\ef, +*0\a0+o\a6`,\02\a8\e0,\1e\fb\e0-\00\fe\a05\9e\ff\e05\fd\01a6\01\0a\a16$\0da7\ab\0e\e18/\18!90\1caF\f3\1e\a1J\f0jaNOo\a1N\9d\bc!Oe\d1\e1O\00\da!P\00\e0\e1Q0\e1aS\ec\e2\a1T\d0\e8\e1T \00.U\f0\01\bfU\00p\00\07\00-\01\01\01\02\01\02\01\01H\0b0\15\10\01e\07\02\06\02\02\01\04#\01\1e\1b[\0b:\09\09\01\18\04\01\09\01\03\01\05+\03w\0f\01 7\01\01\01\04\08\04\01\03\07\0a\02\1d\01:\01\01\01\02\04\08\01\09\01\0a\02\1a\01\02\029\01\04\02\04\02\02\03\03\01\1e\02\03\01\0b\029\01\04\05\01\02\04\01\14\02\16\06\01\01:\01\01\02\01\04\08\01\07\03\0a\02\1e\01;\01\01\01\0c\01\09\01(\01\03\019\03\05\03\01\04\07\02\0b\02\1d\01:\01\02\01\02\01\03\01\05\02\07\02\0b\02\1c\029\02\01\01\02\04\08\01\09\01\0a\02\1d\01H\01\04\01\02\03\01\01\08\01Q\01\02\07\0c\08b\01\02\09\0b\06J\02\1b\01\01\01\01\017\0e\01\05\01\02\05\0b\01$\09\01f\04\01\06\01\02\02\02\19\02\04\03\10\04\0d\01\02\02\06\01\0f\01\00\03\00\03\1d\03\1d\02\1e\02@\02\01\07\08\01\02\0b\09\01-\03w\02\22\01v\03\04\02\09\01\06\03\db\02\02\01:\01\01\07\01\01\01\01\02\08\06\0a\02\010\11?\040\07\01\01\05\01(\09\0c\02 \04\02\02\01\038\01\01\02\03\01\01\03:\08\02\02\98\03\01\0d\01\07\04\01\06\01\03\02\c6:\01\05\00\01\c3!\00\03\8d\01` \00\06i\02\00\04\01\0a \02P\02\00\01\03\01\04\01\19\02\05\01\97\02\1a\12\0d\01&\08\19\0b.\030\01\02\04\02\02'\01C\06\02\02\02\02\0c\01\08\01/\013\01\01\03\02\02\05\02\01\01*\02\08\01\ee\01\02\01\04\01\00\01\00\10\10\10\00\02\00\01\e2\01\95\05\00\03\01\02\05\04(\03\04\01\a5\02\00\04\00\02\99\0b\b0\016\0f8\031\04\02\02E\03$\05\01\08>\01\0c\024\09\0a\04\02\01_\03\02\01\01\02\06\01\a0\01\03\08\15\029\02\01\01\01\01\16\01\0e\07\03\05\c3\08\02\03\01\01\17\01Q\01\02\06\01\01\02\01\01\02\01\02\eb\01\02\04\06\02\01\02\1b\02U\08\02\01\01\02j\01\01\01\02\06\01\01e\03\02\04\01\05\00\09\01\02\f5\01\0a\02\01\01\04\01\90\04\02\02\04\01 \0a(\06\02\04\08\01\09\06\02\03.\0d\01\02\00\07\01\06\01\01R\16\02\07\01\02\01\02z\06\03\01\01\02\01\07\01\01H\02\03\01\01\01\00\02\00\05;\07\00\01?\04Q\01\00\02\00\01\01\03\04\05\08\08\02\07\1e\04\94\03\007\042\08\01\0e\01\16\05\01\0f\00\07\01\11\02\07\01\02\01\05\00\07\00\04\00\07m\07\00`\80\f0\00")
  (data $d1 (i32.const 1054792) "\01\00\00\00\00\00\00\00"))
