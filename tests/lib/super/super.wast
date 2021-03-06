(module
 (type $F (func (result f64)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iF (func (param i32) (result f64)))
 (type $v (func))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "getAge" (func $test_super/getAge))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (get_local $0)
   (block
    (if
     (i32.gt_u
      (get_local $0)
      (i32.const 1073741824)
     )
     (unreachable)
    )
    (if
     (i32.gt_u
      (tee_local $0
       (i32.and
        (i32.add
         (i32.add
          (tee_local $1
           (get_global $~lib/allocator/arena/offset)
          )
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      (i32.shl
       (tee_local $2
        (current_memory)
       )
       (i32.const 16)
      )
     )
     (if
      (i32.lt_s
       (grow_memory
        (select
         (get_local $2)
         (tee_local $4
          (tee_local $3
           (i32.shr_u
            (i32.and
             (i32.add
              (i32.sub
               (get_local $0)
               (get_local $1)
              )
              (i32.const 65535)
             )
             (i32.const -65536)
            )
            (i32.const 16)
           )
          )
         )
         (i32.gt_s
          (get_local $2)
          (get_local $4)
         )
        )
       )
       (i32.const 0)
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $3)
        )
        (i32.const 0)
       )
       (unreachable)
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $0)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/memory/memory.allocate (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (get_local $0)
  )
 )
 (func $test_super/Concrete#constructor (; 2 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (f64.store
     (tee_local $2
      (call $~lib/memory/memory.allocate
       (i32.const 8)
      )
     )
     (f64.const 0)
    )
    (get_local $2)
   )
  )
 )
 (func $test_super/Concrete#getAge (; 3 ;) (type $iF) (param $0 i32) (result f64)
  (f64.load
   (get_local $0)
  )
 )
 (func $test_super/getAge (; 4 ;) (type $F) (result f64)
  (call $test_super/Concrete#getAge
   (call $test_super/Concrete#constructor
    (i32.const 0)
    (f64.const 12)
   )
  )
 )
 (func $start (; 5 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 8)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (drop
   (call $test_super/getAge)
  )
 )
)
