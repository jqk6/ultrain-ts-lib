(module
 (type $ii (func (param i32) (result i32)))
 (type $iiI (func (param i32 i32) (result i64)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $Iiv (func (param i64 i32)))
 (type $IIIIv (func (param i64 i64 i64 i64)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iIIi (func (param i32 i64 i64) (result i32)))
 (type $iI (func (param i32) (result i64)))
 (type $I (func (result i64)))
 (type $Iv (func (param i64)))
 (type $iIIIi (func (param i32 i64 i64 i64) (result i32)))
 (type $IIIIi (func (param i64 i64 i64 i64) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $iIv (func (param i32 i64)))
 (type $iiiiiii (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $IIIIiii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $iIIiv (func (param i32 i64 i64 i32)))
 (type $IIv (func (param i64 i64)))
 (type $iIiiv (func (param i32 i64 i32 i32)))
 (type $iIIIv (func (param i32 i64 i64 i64)))
 (type $IIiiiv (func (param i64 i64 i32 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort))
 (import "env" "ultrainio_assert" (func $../../internal/system.d/env.ultrainio_assert (param i32 i32)))
 (import "env" "ts_log_print_s" (func $../../src/log/env.ts_log_print_s (param i32)))
 (import "env" "ts_log_print_i" (func $../../src/log/env.ts_log_print_i (param i64 i32)))
 (import "env" "ts_log_done" (func $../../src/log/env.ts_log_done))
 (import "env" "action_data_size" (func $../../internal/action.d/env.action_data_size (result i32)))
 (import "env" "read_action_data" (func $../../internal/action.d/env.read_action_data (param i32 i32) (result i32)))
 (import "env" "current_time" (func $../../internal/system.d/env.current_time (result i64)))
 (import "env" "require_auth" (func $../../internal/action.d/env.require_auth (param i64)))
 (import "env" "db_find_i64" (func $../../internal/db.d/env.db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $../../internal/db.d/env.db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "check_transaction_authorization" (func $../../internal/permission.d/env.check_transaction_authorization (param i32 i32 i32 i32 i32 i32) (result i32)))
 (import "env" "current_receiver" (func $../../internal/action.d/env.current_receiver (result i64)))
 (import "env" "db_store_i64" (func $../../internal/db.d/env.db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "require_auth2" (func $../../internal/action.d/env.require_auth2 (param i64 i64)))
 (import "env" "db_update_i64" (func $../../internal/db.d/env.db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_remove_i64" (func $../../internal/db.d/env.db_remove_i64 (param i32)))
 (import "env" "send_deferred" (func $../../internal/transaction.d/env.send_deferred (param i64 i64 i32 i32 i32)))
 (import "env" "ultrainio_exit" (func $../../internal/system.d/env.ultrainio_exit (param i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $../../src/utils/ASCIICHAR i32 (i32.const 1272))
 (global $../../src/datastream/HEADER_SIZE i32 (i32.const 4))
 (global $../../src/log/Log (mut i32) (i32.const 0))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $../../src/asset/CHAR_A i32 (i32.const 65))
 (global $../../src/asset/CHAR_Z i32 (i32.const 90))
 (global $../../src/balance/SYS (mut i64) (i64.const 0))
 (global $../../src/balance/SYS_NAME (mut i64) (i64.const 0))
 (global $../../internal/types/UGS (mut i64) (i64.const 0))
 (global $../../src/asset/MAX_AMOUNT i64 (i64.const 4611686018427387903))
 (global $../../lib/time/block_interval_ms i32 (i32.const 500))
 (global $../../lib/time/block_timestamp_epoch i64 (i64.const 946684800000))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~argc (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4260))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00 \00")
 (data (i32.const 16) "\01\00\00\00!\00")
 (data (i32.const 24) "\01\00\00\00\"\00")
 (data (i32.const 32) "\01\00\00\00#\00")
 (data (i32.const 40) "\01\00\00\00$\00")
 (data (i32.const 48) "\01\00\00\00%\00")
 (data (i32.const 56) "\01\00\00\00&\00")
 (data (i32.const 64) "\01\00\00\00\'\00")
 (data (i32.const 72) "\01\00\00\00(\00")
 (data (i32.const 80) "\01\00\00\00)\00")
 (data (i32.const 88) "\01\00\00\00*\00")
 (data (i32.const 96) "\01\00\00\00+\00")
 (data (i32.const 104) "\01\00\00\00,\00")
 (data (i32.const 112) "\01\00\00\00-\00")
 (data (i32.const 120) "\01\00\00\00.\00")
 (data (i32.const 128) "\01\00\00\00/\00")
 (data (i32.const 136) "\01\00\00\000\00")
 (data (i32.const 144) "\01\00\00\001\00")
 (data (i32.const 152) "\01\00\00\002\00")
 (data (i32.const 160) "\01\00\00\003\00")
 (data (i32.const 168) "\01\00\00\004\00")
 (data (i32.const 176) "\01\00\00\005\00")
 (data (i32.const 184) "\01\00\00\006\00")
 (data (i32.const 192) "\01\00\00\007\00")
 (data (i32.const 200) "\01\00\00\008\00")
 (data (i32.const 208) "\01\00\00\009\00")
 (data (i32.const 216) "\01\00\00\00:\00")
 (data (i32.const 224) "\01\00\00\00;\00")
 (data (i32.const 232) "\01\00\00\00<\00")
 (data (i32.const 240) "\01\00\00\00=\00")
 (data (i32.const 248) "\01\00\00\00>\00")
 (data (i32.const 256) "\01\00\00\00?\00")
 (data (i32.const 264) "\01\00\00\00@\00")
 (data (i32.const 272) "\01\00\00\00A\00")
 (data (i32.const 280) "\01\00\00\00B\00")
 (data (i32.const 288) "\01\00\00\00C\00")
 (data (i32.const 296) "\01\00\00\00D\00")
 (data (i32.const 304) "\01\00\00\00E\00")
 (data (i32.const 312) "\01\00\00\00F\00")
 (data (i32.const 320) "\01\00\00\00G\00")
 (data (i32.const 328) "\01\00\00\00H\00")
 (data (i32.const 336) "\01\00\00\00I\00")
 (data (i32.const 344) "\01\00\00\00J\00")
 (data (i32.const 352) "\01\00\00\00K\00")
 (data (i32.const 360) "\01\00\00\00L\00")
 (data (i32.const 368) "\01\00\00\00M\00")
 (data (i32.const 376) "\01\00\00\00N\00")
 (data (i32.const 384) "\01\00\00\00O\00")
 (data (i32.const 392) "\01\00\00\00P\00")
 (data (i32.const 400) "\01\00\00\00Q\00")
 (data (i32.const 408) "\01\00\00\00R\00")
 (data (i32.const 416) "\01\00\00\00T\00")
 (data (i32.const 424) "\01\00\00\00U\00")
 (data (i32.const 432) "\01\00\00\00V\00")
 (data (i32.const 440) "\01\00\00\00W\00")
 (data (i32.const 448) "\01\00\00\00X\00")
 (data (i32.const 456) "\01\00\00\00Y\00")
 (data (i32.const 464) "\01\00\00\00Z\00")
 (data (i32.const 472) "\01\00\00\00[\00")
 (data (i32.const 480) "\01\00\00\00\\\00")
 (data (i32.const 488) "\01\00\00\00]\00")
 (data (i32.const 496) "\01\00\00\00^\00")
 (data (i32.const 504) "\01\00\00\00_\00")
 (data (i32.const 512) "\01\00\00\00`\00")
 (data (i32.const 520) "\01\00\00\00a\00")
 (data (i32.const 528) "\01\00\00\00b\00")
 (data (i32.const 536) "\01\00\00\00c\00")
 (data (i32.const 544) "\01\00\00\00d\00")
 (data (i32.const 552) "\01\00\00\00e\00")
 (data (i32.const 560) "\01\00\00\00f\00")
 (data (i32.const 568) "\01\00\00\00g\00")
 (data (i32.const 576) "\01\00\00\00h\00")
 (data (i32.const 584) "\01\00\00\00i\00")
 (data (i32.const 592) "\01\00\00\00j\00")
 (data (i32.const 600) "\01\00\00\00k\00")
 (data (i32.const 608) "\01\00\00\00l\00")
 (data (i32.const 616) "\01\00\00\00m\00")
 (data (i32.const 624) "\01\00\00\00n\00")
 (data (i32.const 632) "\01\00\00\00o\00")
 (data (i32.const 640) "\01\00\00\00p\00")
 (data (i32.const 648) "\01\00\00\00q\00")
 (data (i32.const 656) "\01\00\00\00r\00")
 (data (i32.const 664) "\01\00\00\00s\00")
 (data (i32.const 672) "\01\00\00\00t\00")
 (data (i32.const 680) "\01\00\00\00u\00")
 (data (i32.const 688) "\01\00\00\00v\00")
 (data (i32.const 696) "\01\00\00\00w\00")
 (data (i32.const 704) "\01\00\00\00x\00")
 (data (i32.const 712) "\01\00\00\00y\00")
 (data (i32.const 720) "\01\00\00\00z\00")
 (data (i32.const 728) "\01\00\00\00{\00")
 (data (i32.const 736) "\01\00\00\00|\00")
 (data (i32.const 744) "\01\00\00\00}\00")
 (data (i32.const 752) "\01\00\00\00~\00")
 (data (i32.const 760) "|\01\00\00\00\00\00\00\08\00\00\00\10\00\00\00\18\00\00\00 \00\00\00(\00\00\000\00\00\008\00\00\00@\00\00\00H\00\00\00P\00\00\00X\00\00\00`\00\00\00h\00\00\00p\00\00\00x\00\00\00\80\00\00\00\88\00\00\00\90\00\00\00\98\00\00\00\a0\00\00\00\a8\00\00\00\b0\00\00\00\b8\00\00\00\c0\00\00\00\c8\00\00\00\d0\00\00\00\d8\00\00\00\e0\00\00\00\e8\00\00\00\f0\00\00\00\f8\00\00\00\00\01\00\00\08\01\00\00\10\01\00\00\18\01\00\00 \01\00\00(\01\00\000\01\00\008\01\00\00@\01\00\00H\01\00\00P\01\00\00X\01\00\00`\01\00\00h\01\00\00p\01\00\00x\01\00\00\80\01\00\00\88\01\00\00\90\01\00\00\98\01\00\00\98\01\00\00\a0\01\00\00\a8\01\00\00\b0\01\00\00\b8\01\00\00\c0\01\00\00\c8\01\00\00\d0\01\00\00\d8\01\00\00\e0\01\00\00\e8\01\00\00\f0\01\00\00\f8\01\00\00\00\02\00\00\08\02\00\00\10\02\00\00\18\02\00\00 \02\00\00(\02\00\000\02\00\008\02\00\00@\02\00\00H\02\00\00P\02\00\00X\02\00\00`\02\00\00h\02\00\00p\02\00\00x\02\00\00\80\02\00\00\88\02\00\00\90\02\00\00\98\02\00\00\a0\02\00\00\a8\02\00\00\b0\02\00\00\b8\02\00\00\c0\02\00\00\c8\02\00\00\d0\02\00\00\d8\02\00\00\e0\02\00\00\e8\02\00\00\f0\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1272) "\f8\02\00\00_\00\00\00")
 (data (i32.const 1280) "\03\00\00\00S\00Y\00S\00")
 (data (i32.const 1296) "+\00\00\00l\00e\00n\00g\00t\00h\00 \00o\00f\00 \00_\00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \007\00.\00")
 (data (i32.const 1392) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1400) "p\05\00\00\00\00\00\00")
 (data (i32.const 1408) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1440) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1472) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 1536) "0\00\00\00s\00t\00r\00i\00n\00g\00_\00t\00o\00_\00_\00s\00y\00m\00b\00o\00l\00 \00f\00a\00i\00l\00e\00d\00 \00f\00o\00r\00 \00n\00o\00t\00 \00s\00u\00p\00o\00o\00r\00t\00 \00c\00o\00d\00e\00 \00:\00 \00")
 (data (i32.const 1640) "\1b\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 1704) "\07\00\00\00p\00r\00o\00p\00o\00s\00e\00")
 (data (i32.const 1728) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1736) "\c0\06\00\00\00\00\00\00")
 (data (i32.const 1744) "!\00\00\00m\00s\00i\00g\00.\00p\00r\00o\00p\00o\00s\00e\00:\00 \00t\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00e\00x\00p\00i\00r\00e\00d\00")
 (data (i32.const 1816) "\08\00\00\00p\00r\00o\00p\00o\00s\00a\00l\00")
 (data (i32.const 1840) "\00\00\00\00\00\00\00\00")
 (data (i32.const 1848) "0\07\00\00\00\00\00\00")
 (data (i32.const 1856) "\1b\00\00\00d\00b\00m\00a\00n\00a\00g\00e\00r\00.\00g\00e\00t\00 \00 \00f\00o\00r\00 \00p\00r\00i\00m\00a\00r\00y\00 \00")
 (data (i32.const 1920) "\15\00\00\00d\00b\00m\00a\00n\00a\00g\00e\00r\00.\00g\00e\00t\00 \00c\00o\00d\00e\00 \00=\00 \00")
 (data (i32.const 1968) " \00\00\00.\001\002\003\004\005\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00")
 (data (i32.const 2040) "\0d\00\00\00\00\00\00\00.............\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2072) "\f8\07\00\00\0d\00\00\00")
 (data (i32.const 2080) "\00\00\00\00")
 (data (i32.const 2088) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 2104) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 2160) "\t\00\00\00 \00s\00c\00o\00p\00e\00 \00=\00 \00")
 (data (i32.const 2184) "\t\00\00\00 \00t\00a\00b\00l\00e\00 \00=\00 \00")
 (data (i32.const 2208) "\06\00\00\00 \00i\00d\00 \00=\00 \00")
 (data (i32.const 2224) "\07\00\00\00i\00t\00r\00 \00 \00=\00 \00")
 (data (i32.const 2248) "\1e\00\00\00d\00b\00m\00a\00n\00a\00g\00e\00r\00.\00g\00e\00t\00 \00l\00o\00a\00d\00e\00d\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00")
 (data (i32.const 2312) "0\00\00\00m\00s\00i\00g\00.\00p\00r\00o\00p\00o\00s\00e\00:\00 \00p\00r\00o\00p\00o\00s\00a\00l\00 \00w\00i\00t\00h\00 \00t\00h\00e\00 \00s\00a\00m\00e\00 \00n\00a\00m\00e\00 \00e\00x\00i\00s\00t\00s\00")
 (data (i32.const 2416) "/\00\00\00m\00s\00i\00g\00.\00p\00r\00o\00p\00o\00s\00e\00:\00 \00t\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00a\00u\00t\00h\00o\00r\00i\00z\00a\00t\00i\00o\00n\00 \00f\00a\00i\00l\00e\00d\00.\00")
 (data (i32.const 2520) "\13\00\00\00d\00b\00m\00a\00n\00a\00g\00e\00r\00.\00e\00m\00p\00l\00a\00c\00e\00 \001\00")
 (data (i32.const 2568) "3\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00c\00r\00e\00a\00t\00e\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00")
 (data (i32.const 2680) "\13\00\00\00d\00b\00m\00a\00n\00a\00g\00e\00r\00.\00e\00m\00p\00l\00a\00c\00e\00 \002\00")
 (data (i32.const 2728) "\t\00\00\00a\00p\00p\00r\00o\00v\00a\00l\00s\00")
 (data (i32.const 2752) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2760) "\c0\n\00\00\00\00\00\00")
 (data (i32.const 2768) "\00\00\00\00\00\00\00\00")
 (data (i32.const 2776) "\d0\n\00\00\00\00\00\00")
 (data (i32.const 2784) "\07\00\00\00a\00p\00p\00r\00o\00v\00e\00")
 (data (i32.const 2808) " \00\00\00m\00s\00i\00g\00.\00a\00p\00p\00r\00o\00v\00e\00:\00 \00p\00r\00o\00p\00o\00s\00a\00l\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00")
 (data (i32.const 2880) "@\00\00\00m\00s\00i\00g\00.\00a\00p\00p\00r\00o\00v\00e\00:\00 \00a\00p\00p\00r\00o\00v\00a\00l\00 \00i\00s\00 \00n\00o\00t\00 \00o\00n\00 \00t\00h\00e\00 \00l\00i\00s\00t\00 \00o\00f\00 \00r\00e\00q\00u\00e\00s\00t\00e\00d\00 \00a\00p\00p\00r\00o\00v\00a\00l\00s\00")
 (data (i32.const 3016) "\0d\00\00\00d\00b\00.\00m\00o\00d\00i\00f\00y\00 \001\00 \00 \00")
 (data (i32.const 3048) "7\00\00\00o\00b\00j\00e\00c\00t\00 \00p\00a\00s\00s\00e\00d\00 \00t\00o\00 \00m\00o\00d\00i\00f\00y\00 \00i\00s\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00t\00h\00i\00s\00 \00D\00B\00M\00a\00n\00a\00g\00e\00r\00.\00")
 (data (i32.const 3168) "\10\00\00\00d\00b\00.\00m\00o\00d\00i\00f\00y\00 \001\00 \00-\00-\00 \001\00")
 (data (i32.const 3208) "4\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00m\00o\00d\00i\00f\00y\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.\00")
 (data (i32.const 3320) "\t\00\00\00u\00n\00a\00p\00p\00r\00o\00v\00e\00")
 (data (i32.const 3344) "\"\00\00\00m\00s\00i\00g\00.\00u\00n\00a\00p\00p\00r\00o\00v\00e\00:\00 \00p\00r\00o\00p\00o\00s\00a\00l\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00")
 (data (i32.const 3416) "/\00\00\00m\00s\00g\00i\00.\00u\00n\00a\00p\00p\00r\00o\00v\00e\00:\00 \00n\00o\00 \00a\00p\00p\00r\00o\00v\00a\00l\00 \00p\00e\00r\00v\00i\00o\00u\00s\00l\00y\00 \00g\00r\00a\00n\00t\00e\00d\00.\00")
 (data (i32.const 3520) "\06\00\00\00c\00a\00n\00c\00e\00l\00")
 (data (i32.const 3536) "\1f\00\00\00m\00s\00i\00g\00.\00c\00a\00n\00c\00e\00l\00:\00 \00p\00r\00o\00p\00o\00s\00a\00l\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00")
 (data (i32.const 3608) "\00\00\00\00\00\00\00\00")
 (data (i32.const 3616) "\18\0e\00\00\00\00\00\00")
 (data (i32.const 3624) "\00\00\00\00\00\00\00\00")
 (data (i32.const 3632) "(\0e\00\00\00\00\00\00")
 (data (i32.const 3640) "+\00\00\00m\00s\00i\00g\00.\00c\00a\00n\00c\00e\00l\00:\00 \00c\00a\00n\00n\00o\00t\00 \00c\00a\00n\00c\00e\00l\00 \00u\00n\00t\00i\00l\00 \00e\00x\00p\00i\00r\00a\00t\00i\00o\00n\00")
 (data (i32.const 3736) "3\00\00\00c\00a\00n\00 \00n\00o\00t\00 \00e\00r\00a\00s\00e\00 \00o\00b\00j\00e\00c\00t\00s\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00o\00f\00 \00a\00n\00o\00t\00h\00e\00r\00 \00c\00o\00n\00t\00r\00a\00c\00t\00.\00")
 (data (i32.const 3848) "\0d\00\00\00d\00b\00.\00e\00r\00a\00s\00e\00 \00f\00o\00r\00 \00")
 (data (i32.const 3880) "!\00\00\00m\00s\00i\00g\00.\00c\00a\00n\00c\00e\00l\00:\00 \00a\00p\00p\00r\00o\00v\00a\00l\00s\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00.\00")
 (data (i32.const 3952) "\04\00\00\00e\00x\00e\00c\00")
 (data (i32.const 3968) "\1e\00\00\00m\00s\00i\00g\00.\00e\00x\00e\00c\00:\00 \00p\00r\00o\00p\00o\00s\00a\00l\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00.\00")
 (data (i32.const 4032) "\1e\00\00\00m\00s\00i\00g\00.\00e\00x\00e\00c\00:\00 \00a\00p\00p\00r\00o\00v\00a\00l\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00.\00")
 (data (i32.const 4096) "\1f\00\00\00m\00s\00i\00g\00.\00e\00x\00e\00c\00:\00 \00t\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00e\00x\00p\00i\00r\00e\00d\00.\00")
 (data (i32.const 4168) ",\00\00\00m\00s\00i\00g\00.\00e\00x\00e\00c\00:\00 \00t\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00a\00u\00t\00h\00o\00r\00i\00z\00a\00t\00i\00o\00n\00 \00f\00a\00i\00l\00e\00d\00.\00")
 (export "memory" (memory $0))
 (export "apply" (func $main/apply))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (get_global $~lib/internal/allocator/MAX_SIZE_32)
   )
   (unreachable)
  )
  (set_local $1
   (get_global $~lib/allocator/arena/offset)
  )
  (set_local $4
   (i32.and
    (i32.add
     (i32.add
      (get_local $1)
      (select
       (tee_local $2
        (get_local $0)
       )
       (tee_local $3
        (i32.const 1)
       )
       (i32.gt_u
        (get_local $2)
        (get_local $3)
       )
      )
     )
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_local $5
   (current_memory)
  )
  (if
   (i32.gt_u
    (get_local $4)
    (i32.shl
     (get_local $5)
     (i32.const 16)
    )
   )
   (block
    (set_local $2
     (i32.shr_u
      (i32.and
       (i32.add
        (i32.sub
         (get_local $4)
         (get_local $1)
        )
        (i32.const 65535)
       )
       (i32.xor
        (i32.const 65535)
        (i32.const -1)
       )
      )
      (i32.const 16)
     )
    )
    (set_local $3
     (select
      (tee_local $3
       (get_local $5)
      )
      (tee_local $6
       (get_local $2)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $6)
      )
     )
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $3)
      )
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (grow_memory
        (get_local $2)
       )
       (i32.const 0)
      )
      (unreachable)
     )
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $4)
  )
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $~lib/string/String#charCodeAt (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u offset=4
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 22 ;) (type $ii) (param $0 i32) (result i32)
  (i32.shl
   (i32.const 1)
   (i32.sub
    (i32.const 32)
    (i32.clz
     (i32.sub
      (i32.add
       (get_local $0)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memset (; 23 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (if
   (i32.eqz
    (get_local $2)
   )
   (return)
  )
  (i32.store8
   (get_local $0)
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 1)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 2)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 1)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 3)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 6)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 3)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (set_local $3
   (i32.and
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
    (i32.const 3)
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.and
    (get_local $2)
    (i32.const -4)
   )
  )
  (set_local $4
   (i32.mul
    (i32.div_u
     (i32.const -1)
     (i32.const 255)
    )
    (i32.and
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $4)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $4)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 24)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $4)
  )
  (set_local $3
   (i32.add
    (i32.const 24)
    (i32.and
     (get_local $0)
     (i32.const 4)
    )
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $5
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $4)
     )
     (i64.const 32)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 32)
     )
     (block
      (block
       (i64.store
        (get_local $0)
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
        (get_local $5)
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 32)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 24 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $1
   (block $~lib/memory/memory.allocate|inlined.0 (result i32)
    (set_local $2
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
    (br $~lib/memory/memory.allocate|inlined.0
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $2)
     )
    )
   )
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/memory/memcpy (; 25 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
    (i32.const 0)
   )
   (block
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 16)
       )
       (block
        (block
         (i32.store
          (get_local $0)
          (i32.load
           (get_local $1)
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 4)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 12)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 12)
           )
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $0)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    (return)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        (i32.and
         (get_local $0)
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (block
       (set_local $3
        (i32.load
         (get_local $1)
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 3)
        )
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.ge_u
           (get_local $2)
           (i32.const 17)
          )
          (block
           (block
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.store
             (get_local $0)
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 4)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 8)
             )
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 12)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $1
             (i32.add
              (get_local $1)
              (i32.const 16)
             )
            )
            (set_local $0
             (i32.add
              (get_local $0)
              (i32.const 16)
             )
            )
            (set_local $2
             (i32.sub
              (get_local $2)
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       (br $break|2)
      )
     )
     (block
      (set_local $3
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 2)
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 18)
         )
         (block
          (block
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.store
            (get_local $0)
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 4)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 12)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 16)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 16)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      (br $break|2)
     )
    )
    (block
     (set_local $3
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (block $break|5
      (loop $continue|5
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 19)
        )
        (block
         (block
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.store
           (get_local $0)
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 8)
           )
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 12)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 16)
           )
          )
          (set_local $0
           (i32.add
            (get_local $0)
            (i32.const 16)
           )
          )
          (set_local $2
           (i32.sub
            (get_local $2)
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     (br $break|2)
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 8)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 4)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 2)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (i32.store8
    (block (result i32)
     (set_local $5
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $5
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memmove (; 26 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
    (get_local $3)
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/internal/memory/memcpy
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (return)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|0
       (loop $continue|0
        (if
         (i32.and
          (get_local $0)
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
           (i32.store8
            (block (result i32)
             (set_local $3
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            (i32.load8_u
             (block (result i32)
              (set_local $3
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      (block $break|1
       (loop $continue|1
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (i64.store
            (get_local $0)
            (i64.load
             (get_local $1)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (block (result i32)
           (set_local $3
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          (i32.load8_u
           (block (result i32)
            (set_local $3
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|3
       (loop $continue|3
        (if
         (i32.and
          (i32.add
           (get_local $0)
           (get_local $2)
          )
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (i32.store8
            (i32.add
             (get_local $0)
             (tee_local $2
              (i32.sub
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            (i32.load8_u
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (i64.store
            (i32.add
             (get_local $0)
             (get_local $2)
            )
            (i64.load
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    (block $break|5
     (loop $continue|5
      (if
       (get_local $2)
       (block
        (i32.store8
         (i32.add
          (get_local $0)
          (tee_local $2
           (i32.sub
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         (i32.load8_u
          (i32.add
           (get_local $1)
           (get_local $2)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.gt_s
    (get_local $1)
    (get_local $2)
   )
   (block
    (if
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
      )
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (if
     (i32.le_s
      (get_local $1)
      (i32.sub
       (call $~lib/internal/arraybuffer/computeSize
        (get_local $2)
       )
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
     )
     (block
      (i32.store
       (get_local $0)
       (get_local $1)
      )
      (block $~lib/memory/memory.fill|inlined.0
       (set_local $3
        (i32.add
         (i32.add
          (get_local $0)
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         (get_local $2)
        )
       )
       (set_local $4
        (i32.const 0)
       )
       (set_local $5
        (i32.sub
         (get_local $1)
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $5)
       )
      )
     )
     (block
      (set_local $5
       (call $~lib/internal/arraybuffer/allocateUnsafe
        (get_local $1)
       )
      )
      (block $~lib/memory/memory.copy|inlined.0
       (set_local $4
        (i32.add
         (get_local $5)
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (set_local $3
        (i32.add
         (get_local $0)
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (call $~lib/internal/memory/memmove
        (get_local $4)
        (get_local $3)
        (get_local $2)
       )
      )
      (block $~lib/memory/memory.fill|inlined.1
       (set_local $3
        (i32.add
         (i32.add
          (get_local $5)
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         (get_local $2)
        )
       )
       (set_local $4
        (i32.const 0)
       )
       (set_local $6
        (i32.sub
         (get_local $1)
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $6)
       )
      )
      (return
       (get_local $5)
      )
     )
    )
   )
   (if
    (i32.lt_s
     (get_local $1)
     (get_local $2)
    )
    (block
     (if
      (i32.eqz
       (i32.ge_s
        (get_local $1)
        (i32.const 0)
       )
      )
      (block
       (call $~lib/env/abort)
       (unreachable)
      )
     )
     (i32.store
      (get_local $0)
      (get_local $1)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<u8>#push (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 1073741816)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 0)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<u8_u8>|inlined.0
   (i32.store8 offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 0)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $../../src/utils/toUTF8Array (; 29 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (i32.const 1400)
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (block
     (set_local $3
      (call $~lib/string/String#charCodeAt
       (get_local $0)
       (get_local $2)
      )
     )
     (if
      (i32.lt_s
       (get_local $3)
       (i32.const 128)
      )
      (drop
       (call $~lib/array/Array<u8>#push
        (get_local $1)
        (get_local $3)
       )
      )
      (if
       (i32.lt_s
        (get_local $3)
        (i32.const 2048)
       )
       (block
        (drop
         (call $~lib/array/Array<u8>#push
          (get_local $1)
          (i32.or
           (i32.const 192)
           (i32.shr_s
            (get_local $3)
            (i32.const 6)
           )
          )
         )
        )
        (drop
         (call $~lib/array/Array<u8>#push
          (get_local $1)
          (i32.or
           (i32.const 128)
           (i32.and
            (get_local $3)
            (i32.const 63)
           )
          )
         )
        )
       )
       (if
        (if (result i32)
         (tee_local $4
          (i32.lt_s
           (get_local $3)
           (i32.const 55296)
          )
         )
         (get_local $4)
         (i32.ge_s
          (get_local $3)
          (i32.const 57344)
         )
        )
        (block
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 224)
            (i32.shr_s
             (get_local $3)
             (i32.const 12)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (i32.shr_s
              (get_local $3)
              (i32.const 6)
             )
             (i32.const 63)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (get_local $3)
             (i32.const 63)
            )
           )
          )
         )
        )
        (block
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $3
          (i32.add
           (i32.const 65536)
           (i32.or
            (i32.shl
             (i32.and
              (get_local $3)
              (i32.const 1023)
             )
             (i32.const 10)
            )
            (i32.and
             (call $~lib/string/String#charCodeAt
              (get_local $0)
              (get_local $2)
             )
             (i32.const 1023)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 240)
            (i32.shr_s
             (get_local $3)
             (i32.const 18)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (i32.shr_s
              (get_local $3)
              (i32.const 12)
             )
             (i32.const 63)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (i32.shr_s
              (get_local $3)
              (i32.const 6)
             )
             (i32.const 63)
            )
           )
          )
         )
         (drop
          (call $~lib/array/Array<u8>#push
           (get_local $1)
           (i32.or
            (i32.const 128)
            (i32.and
             (get_local $3)
             (i32.const 63)
            )
           )
          )
         )
        )
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (drop
   (call $~lib/array/Array<u8>#push
    (get_local $1)
    (i32.const 0)
   )
  )
  (get_local $1)
 )
 (func $../../src/utils/string2cstr (; 30 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $../../src/utils/toUTF8Array
    (get_local $0)
   )
  )
  (set_local $2
   (i32.load
    (get_local $1)
   )
  )
  (i32.add
   (get_local $2)
   (i32.const 8)
  )
 )
 (func $../../src/utils/ultrain_assert (; 31 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 1)
    )
    (i32.const 0)
   )
   (call $../../internal/system.d/env.ultrainio_assert
    (i32.const 0)
    (call $../../src/utils/string2cstr
     (get_local $1)
    )
   )
  )
 )
 (func $../../src/log/Logger#s (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (i32.load
        (get_local $1)
       )
      )
     )
    )
    (call $../../src/log/env.ts_log_print_s
     (call $~lib/string/String#charCodeAt
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $0)
 )
 (func $../../src/log/Logger#i (; 33 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $../../src/log/env.ts_log_print_i
   (get_local $1)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/log/Logger#flush (; 34 ;) (type $iv) (param $0 i32)
  (call $../../src/log/env.ts_log_done)
 )
 (func $../../src/asset/StringToSymbol (; 35 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $2
   (i32.load
    (get_local $1)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.le_u
    (i32.and
     (get_local $2)
     (i32.const 255)
    )
    (i32.const 7)
   )
   (i32.const 1296)
  )
  (set_local $3
   (i64.const 0)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $4)
       (i32.and
        (get_local $2)
        (i32.const 255)
       )
      )
     )
    )
    (block
     (set_local $5
      (i32.and
       (call $~lib/string/String#charCodeAt
        (get_local $1)
        (i32.and
         (get_local $4)
         (i32.const 255)
        )
       )
       (i32.const 255)
      )
     )
     (if
      (if (result i32)
       (tee_local $6
        (i32.lt_u
         (get_local $5)
         (get_global $../../src/asset/CHAR_A)
        )
       )
       (get_local $6)
       (i32.gt_u
        (get_local $5)
        (get_global $../../src/asset/CHAR_Z)
       )
      )
      (call $../../src/log/Logger#flush
       (call $../../src/log/Logger#i
        (call $../../src/log/Logger#s
         (get_global $../../src/log/Log)
         (i32.const 1536)
        )
        (i64.extend_s/i32
         (get_local $5)
        )
        (i32.const 16)
       )
      )
      (set_local $3
       (i64.or
        (get_local $3)
        (i64.shl
         (i64.extend_u/i32
          (get_local $5)
         )
         (i64.mul
          (i64.const 8)
          (i64.extend_u/i32
           (i32.and
            (i32.add
             (get_local $4)
             (i32.const 1)
            )
            (i32.const 255)
           )
          )
         )
        )
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $3
   (i64.or
    (get_local $3)
    (i64.extend_u/i32
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
  )
  (get_local $3)
 )
 (func $../../lib/contract/Contract#constructor (; 36 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $2
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i64.store
        (get_local $2)
        (i64.const 0)
       )
       (get_local $2)
      )
     )
    )
   )
   (get_local $1)
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<u8_u32>#constructor (; 37 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 0)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (block $~lib/memory/memory.fill|inlined.2
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $5
        (call $~lib/memory/memory.allocate
         (i32.const 12)
        )
       )
       (i32.store
        (get_local $5)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $5)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $5)
        (i32.const 0)
       )
       (get_local $5)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/datastream/DataStream#constructor (; 38 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $3
        (call $~lib/memory/memory.allocate
         (i32.const 12)
        )
       )
       (i32.store
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $3)
        (i32.const 0)
       )
       (get_local $3)
      )
     )
    )
   )
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (get_local $0)
 )
 (func $../../lib/contract/DataStreamFromCurrentAction (; 39 ;) (type $i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $0
   (call $../../internal/action.d/env.action_data_size)
  )
  (set_local $1
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (drop
   (call $../../internal/action.d/env.read_action_data
    (i32.load
     (get_local $1)
    )
    (get_local $0)
   )
  )
  (set_local $2
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $1)
    )
    (get_local $0)
   )
  )
  (get_local $2)
 )
 (func $../../lib/contract/Contract#getDataStream (; 40 ;) (type $ii) (param $0 i32) (result i32)
  (call $../../lib/contract/DataStreamFromCurrentAction)
 )
 (func $../../src/name_ex/NameEx#constructor (; 41 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $3
        (call $~lib/memory/memory.allocate
         (i32.const 16)
        )
       )
       (i64.store
        (get_local $3)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $3)
        (i64.const 0)
       )
       (get_local $3)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/name_ex/char_to_symbol_ex (; 42 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 255)
    )
    (i32.const 46)
   )
   (return
    (i64.const 0)
   )
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 255)
    )
    (i32.const 95)
   )
   (return
    (i64.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.ge_u
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 48)
     )
    )
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 57)
    )
    (get_local $1)
   )
   (return
    (i64.extend_u/i32
     (i32.and
      (i32.add
       (i32.sub
        (get_local $0)
        (i32.const 48)
       )
       (i32.const 2)
      )
      (i32.const 255)
     )
    )
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.ge_u
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 97)
     )
    )
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 122)
    )
    (get_local $1)
   )
   (return
    (i64.extend_u/i32
     (i32.and
      (i32.add
       (i32.sub
        (get_local $0)
        (i32.const 97)
       )
       (i32.const 12)
      )
      (i32.const 255)
     )
    )
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.ge_u
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 65)
     )
    )
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 90)
    )
    (get_local $1)
   )
   (return
    (i64.extend_u/i32
     (i32.and
      (i32.add
       (i32.sub
        (get_local $0)
        (i32.const 65)
       )
       (i32.const 38)
      )
      (i32.const 255)
     )
    )
   )
  )
  (i64.const 255)
 )
 (func $../../src/name_ex/NEX (; 43 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (set_local $1
   (call $../../src/name_ex/NameEx#constructor
    (i32.const 0)
    (i64.const 0)
    (i64.const 0)
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $3)
      )
     )
    )
    (block
     (set_local $5
      (call $../../src/name_ex/char_to_symbol_ex
       (call $~lib/string/String#charCodeAt
        (get_local $0)
        (get_local $4)
       )
      )
     )
     (if
      (i32.le_s
       (get_local $4)
       (i32.const 9)
      )
      (set_local $2
       (i64.or
        (get_local $2)
        (i64.shl
         (get_local $5)
         (i64.mul
          (i64.const 6)
          (i64.extend_u/i32
           (get_local $4)
          )
         )
        )
       )
      )
      (if
       (i32.eq
        (get_local $4)
        (i32.const 10)
       )
       (block
        (set_local $6
         (i64.and
          (get_local $5)
          (i64.const 15)
         )
        )
        (set_local $2
         (i64.or
          (get_local $2)
          (i64.shl
           (get_local $6)
           (i64.mul
            (i64.const 6)
            (i64.extend_u/i32
             (get_local $4)
            )
           )
          )
         )
        )
        (i64.store offset=8
         (get_local $1)
         (get_local $2)
        )
        (set_local $7
         (i64.shr_u
          (i64.and
           (get_local $5)
           (i64.const 48)
          )
          (i64.const 4)
         )
        )
        (set_local $2
         (get_local $7)
        )
       )
       (set_local $2
        (i64.or
         (get_local $2)
         (i64.shl
          (get_local $5)
          (i64.add
           (i64.mul
            (i64.const 6)
            (i64.extend_u/i32
             (i32.sub
              (get_local $4)
              (i32.const 11)
             )
            )
           )
           (i64.const 2)
          )
         )
        )
       )
      )
     )
     (if
      (i32.le_s
       (get_local $3)
       (i32.const 10)
      )
      (i64.store offset=8
       (get_local $1)
       (get_local $2)
      )
      (i64.store
       (get_local $1)
       (get_local $2)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $../../src/name_ex/NameEx._eq (; 44 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if (result i32)
   (tee_local $2
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (i64.load
      (get_local $1)
     )
    )
   )
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=8
     (get_local $1)
    )
   )
   (get_local $2)
  )
 )
 (func $../../lib/time/now (; 45 ;) (type $i) (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $../../internal/system.d/env.current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $../../lib/transaction/TransactionHeader#constructor (; 46 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $3
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i32.store
        (get_local $3)
        (i32.const 0)
       )
       (i32.store16 offset=4
        (get_local $3)
        (i32.const 0)
       )
       (i32.store16 offset=6
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=12
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=16
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=20
        (get_local $3)
        (i32.const 0)
       )
       (get_local $3)
      )
     )
    )
   )
   (get_local $1)
  )
  (i32.store16 offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store16 offset=6
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
  (get_local $0)
 )
 (func $../../src/datastream/DataStream#read<u64> (; 47 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i64)
  (set_local $1
   (i64.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (get_local $1)
 )
 (func $../../src/datastream/DataStream#read<u8> (; 48 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load8_u
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (get_local $1)
 )
 (func $../../src/datastream/DataStream#readVarint32 (; 49 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (i32.const 0)
  )
  (set_local $2
   (i32.const 0)
  )
  (block $break|0
   (loop $continue|0
    (block
     (set_local $3
      (call $../../src/datastream/DataStream#read<u8>
       (get_local $0)
      )
     )
     (set_local $1
      (i32.or
       (get_local $1)
       (i32.shl
        (i32.and
         (get_local $3)
         (i32.const 127)
        )
        (i32.mul
         (i32.const 7)
         (block (result i32)
          (set_local $4
           (get_local $2)
          )
          (set_local $2
           (i32.add
            (get_local $4)
            (i32.const 1)
           )
          )
          (get_local $4)
         )
        )
       )
      )
     )
    )
    (br_if $continue|0
     (i32.and
      (get_local $3)
      (i32.const 128)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $../../src/permission-level/PermissionLevel#constructor (; 50 ;) (type $iIIi) (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $3
        (call $~lib/memory/memory.allocate
         (i32.const 16)
        )
       )
       (i64.store
        (get_local $3)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $3)
        (i64.const 0)
       )
       (get_local $3)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $../../src/permission-level/PermissionLevel#deserialize (; 51 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i64.store offset=8
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $~lib/array/Array<PermissionLevel>#push (; 52 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<PermissionLevel_PermissionLevel>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $../../src/datastream/DataStream#read<u32> (; 53 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (get_local $1)
 )
 (func $../../src/datastream/DataStream#read<u16> (; 54 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load16_u
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 2)
   )
  )
  (get_local $1)
 )
 (func $../../lib/transaction/TransactionHeader#deserialize (; 55 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u32>
    (get_local $1)
   )
  )
  (i32.store16 offset=4
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u16>
    (get_local $1)
   )
  )
  (i32.store16 offset=6
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u16>
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u32>
    (get_local $1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u32>
    (get_local $1)
   )
  )
  (i32.store offset=16
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u32>
    (get_local $1)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u32>
    (get_local $1)
   )
  )
 )
 (func $../../src/utils/char_to_symbol (; 56 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (if
   (if (result i32)
    (tee_local $1
     (i32.ge_u
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 97)
     )
    )
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 122)
    )
    (get_local $1)
   )
   (return
    (i64.extend_u/i32
     (i32.and
      (i32.add
       (i32.sub
        (get_local $0)
        (i32.const 97)
       )
       (i32.const 6)
      )
      (i32.const 255)
     )
    )
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.ge_u
      (i32.and
       (get_local $0)
       (i32.const 255)
      )
      (i32.const 49)
     )
    )
    (i32.le_u
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
     (i32.const 53)
    )
    (get_local $1)
   )
   (return
    (i64.extend_u/i32
     (i32.and
      (i32.add
       (i32.sub
        (get_local $0)
        (i32.const 49)
       )
       (i32.const 1)
      )
      (i32.const 255)
     )
    )
   )
  )
  (i64.const 0)
 )
 (func $../../src/utils/N (; 57 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_u
       (get_local $3)
       (i32.const 12)
      )
     )
    )
    (block
     (set_local $4
      (i64.const 0)
     )
     (if
      (if (result i32)
       (tee_local $5
        (i32.lt_u
         (get_local $3)
         (get_local $1)
        )
       )
       (i32.le_u
        (get_local $3)
        (i32.const 12)
       )
       (get_local $5)
      )
      (set_local $4
       (call $../../src/utils/char_to_symbol
        (i32.and
         (call $~lib/string/String#charCodeAt
          (get_local $0)
          (get_local $3)
         )
         (i32.const 255)
        )
       )
      )
     )
     (if
      (i32.lt_u
       (get_local $3)
       (i32.const 12)
      )
      (block
       (set_local $4
        (i64.and
         (get_local $4)
         (i64.const 31)
        )
       )
       (set_local $4
        (i64.shl
         (get_local $4)
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.const 5)
           (i64.extend_u/i32
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
          )
         )
        )
       )
      )
      (set_local $4
       (i64.and
        (get_local $4)
        (i64.const 15)
       )
      )
     )
     (set_local $2
      (i64.or
       (get_local $2)
       (get_local $4)
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $../../lib/contract/Contract#get:receiver (; 58 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $../../src/dbmanager/DBManager<Proposal>#constructor (; 59 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i64.store
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=16
        (get_local $4)
        (i64.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $msig/Proposal#constructor (; 60 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 12)
        )
       )
       (i64.store
        (get_local $1)
        (i64.const 0)
       )
       (i32.store offset=8
        (get_local $1)
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
   (i64.const 0)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 1848)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<u8>#__set (; 61 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 0)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 1073741816)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 0)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<u8_u8>|inlined.1
   (i32.store8 offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 0)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/array/Array<u8>#__get (; 62 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 0)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<u8_u8>|inlined.0 (result i32)
    (i32.load8_u offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 0)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/array/Array<String>#__get (; 63 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<String_String>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/internal/string/allocateUnsafe (; 64 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (i32.gt_s
       (get_local $0)
       (i32.const 0)
      )
     )
     (i32.le_s
      (get_local $0)
      (get_global $~lib/internal/string/MAX_LENGTH)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (block $~lib/memory/memory.allocate|inlined.1 (result i32)
    (set_local $1
     (i32.add
      (get_global $~lib/internal/string/HEADER_SIZE)
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (br $~lib/memory/memory.allocate|inlined.1
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $1)
     )
    )
   )
  )
  (i32.store
   (get_local $2)
   (get_local $0)
  )
  (get_local $2)
 )
 (func $~lib/internal/string/copyUnsafe (; 65 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $~lib/memory/memory.copy|inlined.1
   (set_local $5
    (i32.add
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (set_local $6
    (i32.add
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (set_local $7
    (i32.shl
     (get_local $4)
     (i32.const 1)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $5)
    (get_local $6)
    (get_local $7)
   )
  )
 )
 (func $~lib/string/String#concat (; 66 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 2088)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (set_local $4
   (i32.add
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (i32.const 0)
   )
   (return
    (i32.const 2080)
   )
  )
  (set_local $5
   (call $~lib/internal/string/allocateUnsafe
    (get_local $4)
   )
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $5)
   (i32.const 0)
   (get_local $0)
   (i32.const 0)
   (get_local $2)
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $5)
   (get_local $2)
   (get_local $1)
   (i32.const 0)
   (get_local $3)
  )
  (get_local $5)
 )
 (func $~lib/string/String.__concat (; 67 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 2088)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $../../src/utils/RN (; 68 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $1
   (i32.const 2072)
  )
  (set_local $2
   (get_local $0)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.le_u
       (get_local $3)
       (i32.const 12)
      )
     )
    )
    (block
     (set_local $4
      (i32.wrap/i64
       (i64.and
        (get_local $2)
        (if (result i64)
         (i32.eq
          (get_local $3)
          (i32.const 0)
         )
         (i64.const 15)
         (i64.const 31)
        )
       )
      )
     )
     (set_local $5
      (i32.and
       (call $~lib/string/String#charCodeAt
        (i32.const 1968)
        (get_local $4)
       )
       (i32.const 255)
      )
     )
     (call $~lib/array/Array<u8>#__set
      (get_local $1)
      (i32.sub
       (i32.const 12)
       (get_local $3)
      )
      (get_local $5)
     )
     (set_local $2
      (i64.shr_u
       (get_local $2)
       (if (result i64)
        (i32.eq
         (get_local $3)
         (i32.const 0)
        )
        (i64.const 4)
        (i64.const 5)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $3
   (i32.const 2080)
  )
  (set_local $5
   (i32.const 1)
  )
  (block $break|1
   (set_local $4
    (i32.const 12)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.ge_s
       (get_local $4)
       (i32.const 0)
      )
     )
    )
    (if
     (if (result i32)
      (tee_local $6
       (i32.eq
        (i32.and
         (call $~lib/array/Array<u8>#__get
          (get_local $1)
          (get_local $4)
         )
         (i32.const 255)
        )
        (i32.const 46)
       )
      )
      (get_local $5)
      (get_local $6)
     )
     (nop)
     (block
      (set_local $5
       (i32.const 0)
      )
      (set_local $6
       (i32.sub
        (call $~lib/array/Array<u8>#__get
         (get_local $1)
         (get_local $4)
        )
        (i32.const 32)
       )
      )
      (set_local $3
       (call $~lib/string/String.__concat
        (call $~lib/array/Array<String>#__get
         (get_global $../../src/utils/ASCIICHAR)
         (i32.and
          (get_local $6)
          (i32.const 255)
         )
        )
        (get_local $3)
       )
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (get_local $3)
 )
 (func $~lib/array/Array<u8>#constructor (; 69 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 0)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.3
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $../../src/datastream/DataStream#readVector<u8> (; 70 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (call $../../src/datastream/DataStream#readVarint32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (call $~lib/array/Array<u8>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<u8>#__set
     (get_local $2)
     (get_local $3)
     (call $../../src/datastream/DataStream#read<u8>
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $msig/Proposal#deserialize (; 71 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $../../src/datastream/DataStream#readVector<u8>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Proposal>#loadObjectByPrimaryIterator (; 72 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $msig/Proposal#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $msig/Proposal#primaryKey (; 73 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $../../src/dbmanager/DBManager<Proposal>#get (; 74 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 1856)
    )
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $3
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (call $../../src/log/Logger#s
      (call $../../src/log/Logger#s
       (call $../../src/log/Logger#i
        (call $../../src/log/Logger#s
         (call $../../src/log/Logger#s
          (call $../../src/log/Logger#s
           (get_global $../../src/log/Log)
           (i32.const 1920)
          )
          (call $../../src/utils/RN
           (i64.load offset=8
            (get_local $0)
           )
          )
         )
         (i32.const 2160)
        )
        (i64.load offset=16
         (get_local $0)
        )
        (i32.const 16)
       )
       (i32.const 2184)
      )
      (call $../../src/utils/RN
       (i64.load
        (get_local $0)
       )
      )
     )
     (i32.const 2208)
    )
    (get_local $1)
    (i32.const 16)
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 2224)
    )
    (i64.extend_s/i32
     (get_local $3)
    )
    (i32.const 10)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $../../src/dbmanager/DBManager<Proposal>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 2248)
    )
    (call $msig/Proposal#primaryKey
     (get_local $2)
    )
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $../../src/datastream/DataStream#isMesureMode (; 75 ;) (type $ii) (param $0 i32) (result i32)
  (i32.eq
   (i32.load
    (get_local $0)
   )
   (i32.const 0)
  )
 )
 (func $../../src/datastream/DataStream#write<u8> (; 76 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $../../src/datastream/DataStream#isMesureMode
     (get_local $0)
    )
   )
   (i32.store8
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $../../src/datastream/DataStream#writeVarint32 (; 77 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (block $break|0
   (loop $continue|0
    (block
     (set_local $2
      (i32.and
       (get_local $1)
       (i32.const 127)
      )
     )
     (set_local $1
      (i32.shr_u
       (get_local $1)
       (i32.const 7)
      )
     )
     (set_local $2
      (i32.or
       (get_local $2)
       (i32.shl
        (if (result i32)
         (i32.gt_u
          (get_local $1)
          (i32.const 0)
         )
         (i32.const 1)
         (i32.const 0)
        )
        (i32.const 7)
       )
      )
     )
     (call $../../src/datastream/DataStream#write<u8>
      (get_local $0)
      (get_local $2)
     )
    )
    (br_if $continue|0
     (get_local $1)
    )
   )
  )
 )
 (func $~lib/array/Array<PermissionLevel>#__get (; 78 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<PermissionLevel_PermissionLevel>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $../../src/datastream/DataStream#write<u64> (; 79 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (if
   (i32.eqz
    (call $../../src/datastream/DataStream#isMesureMode
     (get_local $0)
    )
   )
   (i64.store
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load offset=8
      (get_local $0)
     )
    )
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.add
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 8)
   )
  )
 )
 (func $../../src/permission-level/PermissionLevel#serialize (; 80 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream.measureComplexVector<PermissionLevel> (; 81 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $2
   (block $~lib/array/Array<PermissionLevel>#get:length|inlined.0 (result i32)
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (call $../../src/datastream/DataStream#writeVarint32
   (get_local $1)
   (get_local $2)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (call $../../src/permission-level/PermissionLevel#serialize
     (call $~lib/array/Array<PermissionLevel>#__get
      (get_local $0)
      (get_local $3)
     )
     (get_local $1)
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $../../src/datastream/DataStream#writeComplexVector<PermissionLevel> (; 82 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (block $~lib/array/Array<PermissionLevel>#get:length|inlined.1 (result i32)
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (call $../../src/datastream/DataStream#writeVarint32
   (get_local $0)
   (get_local $2)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (call $../../src/permission-level/PermissionLevel#serialize
     (call $~lib/array/Array<PermissionLevel>#__get
      (get_local $1)
      (get_local $3)
     )
     (get_local $0)
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $../../src/datastream/DSHelper.serializeComplexVector<PermissionLevel> (; 83 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (call $../../src/datastream/DataStream.measureComplexVector<PermissionLevel>
    (get_local $0)
   )
  )
  (set_local $2
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (set_local $3
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $2)
    )
    (get_local $1)
   )
  )
  (call $../../src/datastream/DataStream#writeComplexVector<PermissionLevel>
   (get_local $3)
   (get_local $0)
  )
  (get_local $3)
 )
 (func $../../src/datastream/DataStream#pointer (; 84 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load
   (get_local $0)
  )
 )
 (func $../../src/datastream/DataStream#size (; 85 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=8
   (get_local $0)
  )
 )
 (func $../../src/datastream/DataStream#toArray<u8> (; 86 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eq
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 0)
   )
   (return
    (call $~lib/array/Array<u8>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $1
   (i32.div_u
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (set_local $2
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $4)
       (get_local $1)
      )
     )
    )
    (block
     (set_local $5
      (i32.load8_u
       (i32.add
        (i32.load
         (get_local $0)
        )
        (get_local $3)
       )
      )
     )
     (call $~lib/array/Array<u8>#__set
      (get_local $2)
      (get_local $4)
      (get_local $5)
     )
     (set_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $~lib/array/Array<u8>#slice (; 87 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (select
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $1)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
   (if
    (i32.gt_s
     (get_local $1)
     (get_local $3)
    )
    (set_local $1
     (get_local $3)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (set_local $2
    (i32.add
     (get_local $3)
     (get_local $2)
    )
   )
   (if
    (i32.gt_s
     (get_local $2)
     (get_local $3)
    )
    (set_local $2
     (get_local $3)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (get_local $1)
   )
   (set_local $2
    (get_local $1)
   )
  )
  (set_local $6
   (i32.sub
    (get_local $2)
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (i32.ge_s
     (get_local $6)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $7
   (call $~lib/array/Array<u8>#constructor
    (i32.const 0)
    (get_local $6)
   )
  )
  (if
   (get_local $6)
   (block $~lib/memory/memory.copy|inlined.2
    (set_local $4
     (i32.add
      (i32.load
       (get_local $7)
      )
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
    )
    (set_local $5
     (i32.add
      (i32.add
       (i32.load
        (get_local $0)
       )
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.shl
       (get_local $1)
       (i32.const 0)
      )
     )
    )
    (set_local $8
     (i32.shl
      (get_local $6)
      (i32.const 0)
     )
    )
    (call $~lib/internal/memory/memmove
     (get_local $4)
     (get_local $5)
     (get_local $8)
    )
   )
  )
  (get_local $7)
 )
 (func $~lib/array/Array<u8>#slice|trampoline (; 88 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (get_global $~argc)
      )
     )
     (unreachable)
    )
    (set_local $1
     (i32.const 0)
    )
   )
   (set_local $2
    (get_global $~lib/builtins/i32.MAX_VALUE)
   )
  )
  (call $~lib/array/Array<u8>#slice
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $../../src/datastream/DataStream#writeVector<u8> (; 89 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (block $~lib/array/Array<u8>#get:length|inlined.0 (result i32)
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (call $../../src/datastream/DataStream#writeVarint32
   (get_local $0)
   (get_local $2)
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (call $../../src/datastream/DataStream#write<u8>
     (get_local $0)
     (call $~lib/array/Array<u8>#__get
      (get_local $1)
      (get_local $3)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $msig/Proposal#serialize (; 90 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
  (call $../../src/datastream/DataStream#writeVector<u8>
   (get_local $1)
   (i32.load offset=8
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream.measure<Proposal> (; 91 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $msig/Proposal#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $../../src/dbmanager/DBManager<Proposal>#emplace (; 92 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 2520)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 2568)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 2680)
   )
  )
  (set_local $3
   (call $../../src/datastream/DataStream.measure<Proposal>
    (get_local $2)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $msig/Proposal#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $msig/Proposal#primaryKey
    (get_local $2)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $6)
    (i32.load
     (get_local $5)
    )
    (i32.load offset=8
     (get_local $5)
    )
   )
  )
 )
 (func $../../src/dbmanager/DBManager<ApprovalsInfo>#constructor (; 93 ;) (type $iIIIi) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 24)
        )
       )
       (i64.store
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=8
        (get_local $4)
        (i64.const 0)
       )
       (i64.store offset=16
        (get_local $4)
        (i64.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $2)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $msig/ApprovalsInfo#constructor (; 94 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (i64.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $1
        (call $~lib/memory/memory.allocate
         (i32.const 16)
        )
       )
       (i64.store
        (get_local $1)
        (i64.const 0)
       )
       (i32.store offset=8
        (get_local $1)
        (i32.const 0)
       )
       (i32.store offset=12
        (get_local $1)
        (i32.const 0)
       )
       (get_local $1)
      )
     )
    )
   )
   (i64.const 0)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 2760)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 2776)
  )
  (get_local $0)
 )
 (func $msig/ApprovalsInfo#serialize (; 95 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../src/datastream/DataStream#write<u64>
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
  (call $../../src/datastream/DataStream#writeComplexVector<PermissionLevel>
   (get_local $1)
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $../../src/datastream/DataStream#writeComplexVector<PermissionLevel>
   (get_local $1)
   (i32.load offset=12
    (get_local $0)
   )
  )
 )
 (func $../../src/datastream/DataStream.measure<ApprovalsInfo> (; 96 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (call $msig/ApprovalsInfo#serialize
   (get_local $0)
   (get_local $1)
  )
  (i32.load offset=8
   (get_local $1)
  )
 )
 (func $msig/ApprovalsInfo#primaryKey (; 97 ;) (type $iI) (param $0 i32) (result i64)
  (i64.load
   (get_local $0)
  )
 )
 (func $../../src/dbmanager/DBManager<ApprovalsInfo>#emplace (; 98 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 2520)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 2568)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 2680)
   )
  )
  (set_local $3
   (call $../../src/datastream/DataStream.measure<ApprovalsInfo>
    (get_local $2)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $msig/ApprovalsInfo#serialize
   (get_local $2)
   (get_local $5)
  )
  (set_local $6
   (call $msig/ApprovalsInfo#primaryKey
    (get_local $2)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_store_i64
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
    (get_local $6)
    (i32.load
     (get_local $5)
    )
    (i32.load offset=8
     (get_local $5)
    )
   )
  )
 )
 (func $msig/MultiSig#propose (; 99 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (set_local $1
   (call $../../lib/contract/Contract#getDataStream
    (get_local $0)
   )
  )
  (set_local $4
   (i32.const 1736)
  )
  (set_local $5
   (call $../../lib/transaction/TransactionHeader#constructor
    (i32.const 0)
    (i32.add
     (call $../../lib/time/now)
     (i32.const 60)
    )
    (i32.const 0)
   )
  )
  (set_local $2
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (set_local $3
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (set_local $6
   (call $../../src/datastream/DataStream#readVarint32
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $7
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $7)
       (get_local $6)
      )
     )
    )
    (block
     (set_local $8
      (call $../../src/permission-level/PermissionLevel#constructor
       (i32.const 0)
       (i64.const 0)
       (i64.const 0)
      )
     )
     (call $../../src/permission-level/PermissionLevel#deserialize
      (get_local $8)
      (get_local $1)
     )
     (drop
      (call $~lib/array/Array<PermissionLevel>#push
       (get_local $4)
       (get_local $8)
      )
     )
    )
    (set_local $7
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (set_local $7
   (i32.load offset=8
    (get_local $1)
   )
  )
  (call $../../lib/transaction/TransactionHeader#deserialize
   (get_local $5)
   (get_local $1)
  )
  (call $../../internal/action.d/env.require_auth
   (get_local $2)
  )
  (call $../../src/utils/ultrain_assert
   (i32.gt_u
    (i32.load
     (get_local $5)
    )
    (call $../../lib/time/now)
   )
   (i32.const 1744)
  )
  (set_local $8
   (call $../../src/dbmanager/DBManager<Proposal>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 1816)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $2)
   )
  )
  (set_local $9
   (call $msig/Proposal#constructor
    (i32.const 0)
   )
  )
  (set_local $10
   (call $../../src/dbmanager/DBManager<Proposal>#get
    (get_local $8)
    (get_local $3)
    (get_local $9)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.eqz
    (get_local $10)
   )
   (i32.const 2312)
  )
  (set_local $11
   (call $../../src/datastream/DSHelper.serializeComplexVector<PermissionLevel>
    (get_local $4)
   )
  )
  (set_local $12
   (call $../../internal/permission.d/env.check_transaction_authorization
    (i32.add
     (i32.load
      (get_local $1)
     )
     (get_local $7)
    )
    (i32.sub
     (i32.load offset=4
      (get_local $1)
     )
     (get_local $7)
    )
    (i32.const 0)
    (i32.const 0)
    (call $../../src/datastream/DataStream#pointer
     (get_local $11)
    )
    (call $../../src/datastream/DataStream#size
     (get_local $11)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.gt_s
    (get_local $12)
    (i32.const 0)
   )
   (i32.const 2416)
  )
  (set_local $13
   (call $msig/Proposal#constructor
    (i32.const 0)
   )
  )
  (i64.store
   (get_local $13)
   (get_local $3)
  )
  (i32.store offset=8
   (get_local $13)
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (call $~lib/array/Array<u8>#slice|trampoline
     (call $../../src/datastream/DataStream#toArray<u8>
      (get_local $1)
     )
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
     (i32.const 0)
    )
   )
  )
  (call $../../src/dbmanager/DBManager<Proposal>#emplace
   (get_local $8)
   (get_local $2)
   (get_local $13)
  )
  (set_local $14
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 2728)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $2)
   )
  )
  (set_local $15
   (call $msig/ApprovalsInfo#constructor
    (i32.const 0)
   )
  )
  (i64.store
   (get_local $15)
   (get_local $3)
  )
  (i32.store offset=8
   (get_local $15)
   (get_local $4)
  )
  (call $../../src/dbmanager/DBManager<ApprovalsInfo>#emplace
   (get_local $14)
   (get_local $2)
   (get_local $15)
  )
 )
 (func $../../src/action/requirePermissionLevel (; 100 ;) (type $iv) (param $0 i32)
  (call $../../internal/action.d/env.require_auth2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $~lib/array/Array<PermissionLevel>#constructor (; 101 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.4
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<PermissionLevel>#__set (; 102 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<PermissionLevel_PermissionLevel>|inlined.1
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $../../src/datastream/DataStream#readComplexVector<PermissionLevel> (; 103 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (call $../../src/datastream/DataStream#readVarint32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (call $~lib/array/Array<PermissionLevel>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (call $~lib/array/Array<PermissionLevel>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (block
     (call $~lib/array/Array<PermissionLevel>#__set
      (get_local $2)
      (get_local $3)
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 16)
        )
       )
       (get_local $4)
      )
     )
     (call $../../src/permission-level/PermissionLevel#deserialize
      (call $~lib/array/Array<PermissionLevel>#__get
       (get_local $2)
       (get_local $3)
      )
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $msig/ApprovalsInfo#deserialize (; 104 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $../../src/datastream/DataStream#readComplexVector<PermissionLevel>
    (get_local $1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (call $../../src/datastream/DataStream#readComplexVector<PermissionLevel>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<ApprovalsInfo>#loadObjectByPrimaryIterator (; 105 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (drop
   (call $../../internal/db.d/env.db_get_i64
    (get_local $1)
    (i32.load
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (call $msig/ApprovalsInfo#deserialize
   (get_local $2)
   (get_local $5)
  )
 )
 (func $../../src/dbmanager/DBManager<ApprovalsInfo>#get (; 106 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 1856)
    )
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $3
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (call $../../src/log/Logger#s
      (call $../../src/log/Logger#s
       (call $../../src/log/Logger#i
        (call $../../src/log/Logger#s
         (call $../../src/log/Logger#s
          (call $../../src/log/Logger#s
           (get_global $../../src/log/Log)
           (i32.const 1920)
          )
          (call $../../src/utils/RN
           (i64.load offset=8
            (get_local $0)
           )
          )
         )
         (i32.const 2160)
        )
        (i64.load offset=16
         (get_local $0)
        )
        (i32.const 16)
       )
       (i32.const 2184)
      )
      (call $../../src/utils/RN
       (i64.load
        (get_local $0)
       )
      )
     )
     (i32.const 2208)
    )
    (get_local $1)
    (i32.const 16)
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 2224)
    )
    (i64.extend_s/i32
     (get_local $3)
    )
    (i32.const 10)
   )
  )
  (if
   (i32.lt_s
    (get_local $3)
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (call $../../src/dbmanager/DBManager<ApprovalsInfo>#loadObjectByPrimaryIterator
   (get_local $0)
   (get_local $3)
   (get_local $2)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 2248)
    )
    (call $msig/ApprovalsInfo#primaryKey
     (get_local $2)
    )
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $../../src/permission-level/PermissionLevel#equal (; 107 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if (result i32)
   (tee_local $2
    (i64.eq
     (i64.load
      (get_local $0)
     )
     (i64.load
      (get_local $1)
     )
    )
   )
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=8
     (get_local $1)
    )
   )
   (get_local $2)
  )
 )
 (func $~lib/array/Array<PermissionLevel>#splice (; 108 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 1)
   )
   (return)
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (select
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $1)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
  )
  (if
   (i32.ge_s
    (get_local $1)
    (get_local $3)
   )
   (return)
  )
  (set_local $2
   (select
    (tee_local $4
     (get_local $2)
    )
    (tee_local $5
     (i32.sub
      (get_local $3)
      (get_local $1)
     )
    )
    (i32.lt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $0)
   )
  )
  (block $~lib/memory/memory.copy|inlined.3
   (set_local $4
    (i32.add
     (i32.add
      (get_local $6)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (set_local $5
    (i32.add
     (i32.add
      (get_local $6)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.shl
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (i32.const 2)
     )
    )
   )
   (set_local $7
    (i32.shl
     (get_local $2)
     (i32.const 2)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $4)
    (get_local $5)
    (get_local $7)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<ApprovalsInfo>#find (; 109 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $../../src/dbmanager/DBManager<ApprovalsInfo>#modify (; 110 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#find
    (get_local $0)
    (call $msig/ApprovalsInfo#primaryKey
     (get_local $2)
    )
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 3016)
    )
    (i64.extend_s/i32
     (get_local $3)
    )
    (i32.const 10)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_s
    (get_local $3)
    (i32.const 0)
   )
   (i32.const 3048)
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#s
    (get_global $../../src/log/Log)
    (i32.const 3168)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3208)
  )
  (set_local $4
   (call $../../src/datastream/DataStream.measure<ApprovalsInfo>
    (get_local $2)
   )
  )
  (set_local $5
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $4)
   )
  )
  (set_local $6
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $5)
    )
    (get_local $4)
   )
  )
  (call $msig/ApprovalsInfo#serialize
   (get_local $2)
   (get_local $6)
  )
  (call $../../internal/db.d/env.db_update_i64
   (get_local $3)
   (get_local $1)
   (i32.load
    (get_local $6)
   )
   (i32.load offset=8
    (get_local $6)
   )
  )
 )
 (func $msig/MultiSig#approve (; 111 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (call $../../src/action/requirePermissionLevel
   (get_local $3)
  )
  (set_local $4
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 2728)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $5
   (call $msig/ApprovalsInfo#constructor
    (i32.const 0)
   )
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#get
    (get_local $4)
    (get_local $2)
    (get_local $5)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $6)
   (i32.const 2808)
  )
  (set_local $7
   (i32.const -1)
  )
  (block $break|0
   (set_local $8
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $8)
       (block $~lib/array/Array<PermissionLevel>#get:length|inlined.3 (result i32)
        (set_local $9
         (i32.load offset=8
          (get_local $5)
         )
        )
        (i32.load offset=4
         (get_local $9)
        )
       )
      )
     )
    )
    (if
     (call $../../src/permission-level/PermissionLevel#equal
      (call $~lib/array/Array<PermissionLevel>#__get
       (i32.load offset=8
        (get_local $5)
       )
       (get_local $8)
      )
      (get_local $3)
     )
     (block
      (set_local $7
       (get_local $8)
      )
      (br $break|0)
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ne
    (get_local $7)
    (i32.const -1)
   )
   (i32.const 2880)
  )
  (drop
   (call $~lib/array/Array<PermissionLevel>#push
    (i32.load offset=12
     (get_local $5)
    )
    (get_local $3)
   )
  )
  (call $~lib/array/Array<PermissionLevel>#splice
   (i32.load offset=8
    (get_local $5)
   )
   (get_local $7)
   (i32.const 1)
  )
  (call $../../src/dbmanager/DBManager<ApprovalsInfo>#modify
   (get_local $4)
   (get_local $1)
   (get_local $5)
  )
 )
 (func $msig/MultiSig#unapprove (; 112 ;) (type $iIIiv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (call $../../src/action/requirePermissionLevel
   (get_local $3)
  )
  (set_local $4
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 2728)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $5
   (call $msig/ApprovalsInfo#constructor
    (i32.const 0)
   )
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#get
    (get_local $4)
    (get_local $2)
    (get_local $5)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $6)
   (i32.const 3344)
  )
  (set_local $7
   (i32.const -1)
  )
  (block $break|0
   (set_local $8
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $8)
       (block $~lib/array/Array<PermissionLevel>#get:length|inlined.5 (result i32)
        (set_local $9
         (i32.load offset=12
          (get_local $5)
         )
        )
        (i32.load offset=4
         (get_local $9)
        )
       )
      )
     )
    )
    (if
     (call $../../src/permission-level/PermissionLevel#equal
      (call $~lib/array/Array<PermissionLevel>#__get
       (i32.load offset=12
        (get_local $5)
       )
       (get_local $8)
      )
      (get_local $3)
     )
     (block
      (set_local $7
       (get_local $8)
      )
      (br $break|0)
     )
    )
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.ne
    (get_local $7)
    (i32.const -1)
   )
   (i32.const 3416)
  )
  (drop
   (call $~lib/array/Array<PermissionLevel>#push
    (i32.load offset=8
     (get_local $5)
    )
    (get_local $3)
   )
  )
  (call $~lib/array/Array<PermissionLevel>#splice
   (i32.load offset=12
    (get_local $5)
   )
   (get_local $7)
   (i32.const 1)
  )
  (call $../../src/dbmanager/DBManager<ApprovalsInfo>#modify
   (get_local $4)
   (get_local $1)
   (get_local $5)
  )
 )
 (func $../../src/datastream/DataStream.fromArray<u8> (; 113 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (block $~lib/array/Array<u8>#get:length|inlined.1 (result i32)
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (set_local $2
   (i32.mul
    (get_local $1)
    (i32.const 1)
   )
  )
  (set_local $3
   (call $~lib/internal/typedarray/TypedArray<u8_u32>#constructor
    (i32.const 0)
    (get_local $2)
   )
  )
  (set_local $4
   (call $../../src/datastream/DataStream#constructor
    (i32.const 0)
    (i32.load
     (get_local $3)
    )
    (get_local $2)
   )
  )
  (block $break|0
   (set_local $5
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $5)
       (get_local $1)
      )
     )
    )
    (call $../../src/datastream/DataStream#write<u8>
     (get_local $4)
     (call $~lib/array/Array<u8>#__get
      (get_local $0)
      (get_local $5)
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $4)
 )
 (func $../../lib/transaction/Transaction#constructor (; 114 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $3
        (call $~lib/memory/memory.allocate
         (i32.const 12)
        )
       )
       (i32.store
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=8
        (get_local $3)
        (i32.const 0)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $../../lib/transaction/TransactionHeader#constructor
    (i32.const 0)
    (get_local $1)
    (get_local $2)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 3616)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 3632)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<ActionImpl>#constructor (; 115 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort)
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.5
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<ActionImpl>#__set (; 116 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort)
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<ActionImpl_ActionImpl>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/array/Array<ActionImpl>#__get (; 117 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<ActionImpl_ActionImpl>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $../../src/name_ex/NameEx#deserialize (; 118 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (i64.store offset=8
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
 )
 (func $../../src/action/ActionImpl#deserialize (; 119 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i64.store
   (get_local $0)
   (call $../../src/datastream/DataStream#read<u64>
    (get_local $1)
   )
  )
  (call $../../src/name_ex/NameEx#deserialize
   (i32.load offset=8
    (get_local $0)
   )
   (get_local $1)
  )
  (i32.store offset=12
   (get_local $0)
   (call $../../src/datastream/DataStream#readComplexVector<PermissionLevel>
    (get_local $1)
   )
  )
  (i32.store offset=16
   (get_local $0)
   (call $../../src/datastream/DataStream#readVector<u8>
    (get_local $1)
   )
  )
 )
 (func $../../src/datastream/DataStream#readComplexVector<ActionImpl> (; 120 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (call $../../src/datastream/DataStream#readVarint32
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (return
    (call $~lib/array/Array<ActionImpl>#constructor
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_local $2
   (call $~lib/array/Array<ActionImpl>#constructor
    (i32.const 0)
    (get_local $1)
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_u
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (block
     (call $~lib/array/Array<ActionImpl>#__set
      (get_local $2)
      (get_local $3)
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 20)
        )
       )
       (get_local $4)
      )
     )
     (call $../../src/action/ActionImpl#deserialize
      (call $~lib/array/Array<ActionImpl>#__get
       (get_local $2)
       (get_local $3)
      )
      (get_local $0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $../../lib/transaction/Transaction#deserialize (; 121 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (call $../../lib/transaction/TransactionHeader#deserialize
   (i32.load
    (get_local $0)
   )
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (call $../../src/datastream/DataStream#readComplexVector<ActionImpl>
    (get_local $1)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (call $../../src/datastream/DataStream#readComplexVector<ActionImpl>
    (get_local $1)
   )
  )
 )
 (func $../../src/dbmanager/DBManager<Proposal>#find (; 122 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (set_local $2
   (call $../../internal/db.d/env.db_find_i64
    (i64.load offset=8
     (get_local $0)
    )
    (i64.load offset=16
     (get_local $0)
    )
    (i64.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $../../src/dbmanager/DBManager<Proposal>#erase (; 123 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3736)
  )
  (set_local $2
   (call $../../src/dbmanager/DBManager<Proposal>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 3848)
    )
    (i64.extend_s/i32
     (get_local $2)
    )
    (i32.const 10)
   )
  )
  (if
   (i32.ge_s
    (get_local $2)
    (i32.const 0)
   )
   (call $../../internal/db.d/env.db_remove_i64
    (get_local $2)
   )
   (nop)
  )
 )
 (func $../../src/dbmanager/DBManager<ApprovalsInfo>#erase (; 124 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (call $../../src/utils/ultrain_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $../../internal/action.d/env.current_receiver)
   )
   (i32.const 3736)
  )
  (set_local $2
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#find
    (get_local $0)
    (get_local $1)
   )
  )
  (call $../../src/log/Logger#flush
   (call $../../src/log/Logger#i
    (call $../../src/log/Logger#s
     (get_global $../../src/log/Log)
     (i32.const 3848)
    )
    (i64.extend_s/i32
     (get_local $2)
    )
    (i32.const 10)
   )
  )
  (if
   (i32.ge_s
    (get_local $2)
    (i32.const 0)
   )
   (call $../../internal/db.d/env.db_remove_i64
    (get_local $2)
   )
   (nop)
  )
 )
 (func $msig/MultiSig#cancel (; 125 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (call $../../internal/action.d/env.require_auth
   (get_local $3)
  )
  (set_local $4
   (call $../../src/dbmanager/DBManager<Proposal>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 1816)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $5
   (call $msig/Proposal#constructor
    (i32.const 0)
   )
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<Proposal>#get
    (get_local $4)
    (get_local $2)
    (get_local $5)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $6)
   (i32.const 3536)
  )
  (if
   (i64.ne
    (get_local $1)
    (get_local $3)
   )
   (block
    (set_local $7
     (call $../../src/datastream/DataStream.fromArray<u8>
      (i32.load offset=8
       (get_local $5)
      )
     )
    )
    (set_local $8
     (call $../../lib/transaction/Transaction#constructor
      (i32.const 0)
      (i32.add
       (call $../../lib/time/now)
       (i32.const 60)
      )
      (i32.const 0)
     )
    )
    (call $../../lib/transaction/Transaction#deserialize
     (get_local $8)
     (get_local $7)
    )
    (call $../../src/utils/ultrain_assert
     (i32.lt_u
      (i32.load
       (i32.load
        (get_local $8)
       )
      )
      (call $../../lib/time/now)
     )
     (i32.const 3640)
    )
   )
  )
  (call $../../src/dbmanager/DBManager<Proposal>#erase
   (get_local $4)
   (call $msig/Proposal#primaryKey
    (get_local $5)
   )
  )
  (set_local $8
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 2728)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $7
   (call $msig/ApprovalsInfo#constructor
    (i32.const 0)
   )
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#get
    (get_local $8)
    (get_local $1)
    (get_local $7)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $6)
   (i32.const 3880)
  )
  (call $../../src/dbmanager/DBManager<ApprovalsInfo>#erase
   (get_local $8)
   (call $msig/ApprovalsInfo#primaryKey
    (get_local $7)
   )
  )
 )
 (func $msig/MultiSig#exec (; 126 ;) (type $iIIIv) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (call $../../internal/action.d/env.require_auth
   (get_local $3)
  )
  (set_local $4
   (call $../../src/dbmanager/DBManager<Proposal>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 1816)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $5
   (call $msig/Proposal#constructor
    (i32.const 0)
   )
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<Proposal>#get
    (get_local $4)
    (get_local $2)
    (get_local $5)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $6)
   (i32.const 3968)
  )
  (set_local $7
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#constructor
    (i32.const 0)
    (call $../../src/utils/N
     (i32.const 2728)
    )
    (call $../../lib/contract/Contract#get:receiver
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (set_local $8
   (call $msig/ApprovalsInfo#constructor
    (i32.const 0)
   )
  )
  (set_local $6
   (call $../../src/dbmanager/DBManager<ApprovalsInfo>#get
    (get_local $7)
    (get_local $2)
    (get_local $8)
   )
  )
  (call $../../src/utils/ultrain_assert
   (get_local $6)
   (i32.const 4032)
  )
  (set_local $9
   (call $../../src/datastream/DataStream.fromArray<u8>
    (i32.load offset=8
     (get_local $5)
    )
   )
  )
  (set_local $10
   (call $../../lib/transaction/TransactionHeader#constructor
    (i32.const 0)
    (i32.add
     (call $../../lib/time/now)
     (i32.const 60)
    )
    (i32.const 0)
   )
  )
  (call $../../lib/transaction/TransactionHeader#deserialize
   (get_local $10)
   (get_local $9)
  )
  (call $../../src/utils/ultrain_assert
   (i32.ge_u
    (i32.load
     (get_local $10)
    )
    (call $../../lib/time/now)
   )
   (i32.const 4096)
  )
  (set_local $11
   (call $../../src/datastream/DSHelper.serializeComplexVector<PermissionLevel>
    (i32.load offset=12
     (get_local $8)
    )
   )
  )
  (set_local $12
   (call $../../internal/permission.d/env.check_transaction_authorization
    (call $../../src/datastream/DataStream#pointer
     (get_local $9)
    )
    (call $../../src/datastream/DataStream#size
     (get_local $9)
    )
    (i32.const 0)
    (i32.const 0)
    (call $../../src/datastream/DataStream#pointer
     (get_local $11)
    )
    (call $../../src/datastream/DataStream#size
     (get_local $11)
    )
   )
  )
  (call $../../src/utils/ultrain_assert
   (i32.gt_s
    (get_local $12)
    (i32.const 0)
   )
   (i32.const 4168)
  )
  (call $../../internal/transaction.d/env.send_deferred
   (get_local $2)
   (get_local $3)
   (call $../../src/datastream/DataStream#pointer
    (get_local $9)
   )
   (call $../../src/datastream/DataStream#size
    (get_local $9)
   )
   (i32.const 0)
  )
  (call $../../src/dbmanager/DBManager<Proposal>#erase
   (get_local $4)
   (call $msig/Proposal#primaryKey
    (get_local $5)
   )
  )
  (call $../../src/dbmanager/DBManager<ApprovalsInfo>#erase
   (get_local $7)
   (call $msig/ApprovalsInfo#primaryKey
    (get_local $8)
   )
  )
 )
 (func $main/apply (; 127 ;) (type $IIIIv) (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (block
    (set_local $4
     (call $../../lib/contract/Contract#constructor
      (i32.const 0)
      (get_local $0)
     )
    )
    (set_local $5
     (call $../../lib/contract/Contract#getDataStream
      (get_local $4)
     )
    )
    (set_local $6
     (call $../../src/name_ex/NameEx#constructor
      (i32.const 0)
      (get_local $2)
      (get_local $3)
     )
    )
    (if
     (call $../../src/name_ex/NameEx._eq
      (get_local $6)
      (call $../../src/name_ex/NEX
       (i32.const 1704)
      )
     )
     (call $msig/MultiSig#propose
      (get_local $4)
     )
     (if
      (call $../../src/name_ex/NameEx._eq
       (get_local $6)
       (call $../../src/name_ex/NEX
        (i32.const 2784)
       )
      )
      (block
       (set_local $7
        (call $../../src/datastream/DataStream#read<u64>
         (get_local $5)
        )
       )
       (set_local $8
        (call $../../src/datastream/DataStream#read<u64>
         (get_local $5)
        )
       )
       (set_local $9
        (call $../../src/permission-level/PermissionLevel#constructor
         (i32.const 0)
         (i64.const 0)
         (i64.const 0)
        )
       )
       (call $../../src/permission-level/PermissionLevel#deserialize
        (get_local $9)
        (get_local $5)
       )
       (call $msig/MultiSig#approve
        (get_local $4)
        (get_local $7)
        (get_local $8)
        (get_local $9)
       )
      )
      (if
       (call $../../src/name_ex/NameEx._eq
        (get_local $6)
        (call $../../src/name_ex/NEX
         (i32.const 3320)
        )
       )
       (block
        (set_local $8
         (call $../../src/datastream/DataStream#read<u64>
          (get_local $5)
         )
        )
        (set_local $7
         (call $../../src/datastream/DataStream#read<u64>
          (get_local $5)
         )
        )
        (set_local $9
         (call $../../src/permission-level/PermissionLevel#constructor
          (i32.const 0)
          (i64.const 0)
          (i64.const 0)
         )
        )
        (call $../../src/permission-level/PermissionLevel#deserialize
         (get_local $9)
         (get_local $5)
        )
        (call $msig/MultiSig#unapprove
         (get_local $4)
         (get_local $8)
         (get_local $7)
         (get_local $9)
        )
       )
       (if
        (call $../../src/name_ex/NameEx._eq
         (get_local $6)
         (call $../../src/name_ex/NEX
          (i32.const 3520)
         )
        )
        (block
         (set_local $7
          (call $../../src/datastream/DataStream#read<u64>
           (get_local $5)
          )
         )
         (set_local $8
          (call $../../src/datastream/DataStream#read<u64>
           (get_local $5)
          )
         )
         (set_local $10
          (call $../../src/datastream/DataStream#read<u64>
           (get_local $5)
          )
         )
         (call $msig/MultiSig#cancel
          (get_local $4)
          (get_local $7)
          (get_local $8)
          (get_local $10)
         )
        )
        (if
         (call $../../src/name_ex/NameEx._eq
          (get_local $6)
          (call $../../src/name_ex/NEX
           (i32.const 3952)
          )
         )
         (block
          (set_local $10
           (call $../../src/datastream/DataStream#read<u64>
            (get_local $5)
           )
          )
          (set_local $8
           (call $../../src/datastream/DataStream#read<u64>
            (get_local $5)
           )
          )
          (set_local $7
           (call $../../src/datastream/DataStream#read<u64>
            (get_local $5)
           )
          )
          (call $msig/MultiSig#exec
           (get_local $4)
           (get_local $10)
           (get_local $8)
           (get_local $7)
          )
         )
         (call $../../internal/system.d/env.ultrainio_exit
          (i32.const 0)
         )
        )
       )
      )
     )
    )
   )
  )
 )
 (func $start (; 128 ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (nop)
  (set_global $../../src/log/Log
   (block (result i32)
    (set_local $0
     (call $~lib/memory/memory.allocate
      (i32.const 0)
     )
    )
    (get_local $0)
   )
  )
  (nop)
  (set_global $../../src/balance/SYS
   (call $../../src/asset/StringToSymbol
    (i32.const 4)
    (i32.const 1280)
   )
  )
  (set_global $../../src/balance/SYS_NAME
   (i64.shr_u
    (get_global $../../src/balance/SYS)
    (i64.const 8)
   )
  )
  (set_global $../../internal/types/UGS
   (call $../../src/asset/StringToSymbol
    (i32.const 4)
    (i32.const 1280)
   )
  )
  (nop)
 )
)
