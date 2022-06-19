contract main {




// =====================  Runtime code  =====================


const MAXIMUM_DELAY = (720 * 24 * 3600)

const MINIMUM_DELAY = (24 * 3600)

const GRACE_PERIOD = (336 * 24 * 3600)


uint256 stor0;
uint128 stor1; offset 160
address adminAddress;
uint256 stor1;
address pendingAdminAddress;
uint256 delay;
uint8 stor4;
mapping of uint8 stor5;

function pendingAdmin() {
    return pendingAdminAddress
}

function delay() {
    return delay
}

function admin_initialized() {
    return bool(stor4)
}

function queuedTransactions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function acceptAdmin() {
    if pendingAdminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x2e54696d656c6f636b3a3a61636365707441646d696e3a2043616c6c206d75737420636f6d652066726f6d2070656e64696e6741646d696e,
                    mem[220 len 8]
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    pendingAdminAddress = 0
    emit NewAdmin(msg.sender);
}

function setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if stor4:
        if msg.sender != this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x2e54696d656c6f636b3a3a73657450656e64696e6741646d696e3a2043616c6c206d75737420636f6d652066726f6d2054696d656c6f636b,
                        mem[220 len 8]
    else:
        if adminAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        59,
                        0x2e54696d656c6f636b3a3a73657450656e64696e6741646d696e3a2046697273742063616c6c206d75737420636f6d652066726f6d2061646d696e,
                        mem[223 len 5]
        stor4 = 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(arg1);
}

function setDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x2e54696d656c6f636b3a3a73657444656c61793a2043616c6c206d75737420636f6d652066726f6d2054696d656c6f636b,
                    mem[213 len 15]
    if arg1 < 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2e54696d656c6f636b3a3a73657444656c61793a2044656c6179206d75737420657863656564206d696e696d756d2064656c6179,
                    mem[216 len 12]
    if arg1 > 720 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x2e54696d656c6f636b3a3a73657444656c61793a2044656c6179206d757374206e6f7420657863656564206d6178696d756d2064656c6179,
                    mem[220 len 8]
    delay = arg1
    emit NewDelay(arg1);
}

function cancelTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x2e54696d656c6f636b3a3a63616e63656c5472616e73616374696f6e3a2043616c6c206d75737420636f6d652066726f6d2061646d696e,
                    mem[219 len 9]
    mem[ceil32(arg3.length) + 320] = arg4.length
    mem[ceil32(arg3.length) + 352 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 352] = 0
    stor5[address(arg1)][arg2][160][ceil32(arg3.length) + 192][arg5][arg3.length][arg3[all]][0][mem[arg3.length + 352 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 384] = 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 416] = ceil32(arg3.length) + 160
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 512] = arg4.length
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 544 len arg4.length] = arg4[all]
    mem[arg4.length + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 544] = 0
    emit CancelTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                           Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                           mem[ceil32(arg3.length) + arg4.length + 384 len ceil32(arg3.length) + (2 * ceil32(arg4.length)) + -arg4.length + 160],
                           sha3(address(arg1), arg2, 160, ceil32(arg3.length) + 192, arg5, arg3.length, arg3[all], 0, mem[arg3.length + 352 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]),
                           arg1,
}

function queueTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x2e54696d656c6f636b3a3a71756575655472616e73616374696f6e3a2043616c6c206d75737420636f6d652066726f6d2061646d696e,
                    mem[218 len 10]
    if delay + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < delay + block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x2e54696d656c6f636b3a3a71756575655472616e73616374696f6e3a20457374696d6174656420657865637574696f6e20626c6f636b206d75737420736174697366792064656c6179,
                    mem[237 len 23]
    mem[ceil32(arg3.length) + 320] = arg4.length
    mem[ceil32(arg3.length) + 352 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 352] = 0
    stor5[address(arg1)][arg2][160][ceil32(arg3.length) + 192][arg5][arg3.length][arg3[all]][0][mem[arg3.length + 352 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]] = 1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 448] = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 384] = 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 480] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 512 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 512] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 416] = ceil32(arg3.length) + 160
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 512] = arg4.length
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 544 len arg4.length] = arg4[all]
    mem[arg4.length + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 544] = 0
    emit QueueTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                          Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                          mem[ceil32(arg3.length) + arg4.length + 384 len ceil32(arg3.length) + (2 * ceil32(arg4.length)) + -arg4.length + 160],
                          sha3(address(arg1), arg2, 160, ceil32(arg3.length) + 192, arg5, arg3.length, arg3[all], 0, mem[arg3.length + 352 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]),
                          arg1,
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = sha3(address(arg1), arg2, 160, ceil32(arg3.length) + 192, arg5, arg3.length, arg3[all], 0, mem[arg3.length + 352 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length])
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
           mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)]
}

function executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0xfe54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a2043616c6c206d75737420636f6d652066726f6d2061646d696e,
                    mem[220 len 8]
    mem[128] = arg1
    mem[160] = arg2
    mem[256] = arg5
    mem[192] = 160
    mem[288] = arg3.length
    mem[320 len arg3.length] = arg3[all]
    mem[arg3.length + 320] = 0
    mem[224] = ceil32(arg3.length) + 192
    mem[ceil32(arg3.length) + 320] = arg4.length
    mem[ceil32(arg3.length) + 352 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 352] = 0
    mem[96] = ceil32(arg3.length) + ceil32(arg4.length) + 224
    _6 = sha3(address(arg1), arg2, 160, ceil32(arg3.length) + 192, arg5, arg3.length, arg3[all], 0, mem[arg3.length + 352 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length])
    if not stor5[address(arg1)][arg2][160][ceil32(arg3.length) + 192][arg5][arg3.length][arg3[all]][0][mem[arg3.length + 352 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]]:
        revert with 0, 
                    32,
                    61,
                    0x2e54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e206861736e2774206265656e20717565756564,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 481 len 3]
    if block.timestamp < arg5:
        revert with 0, 
                    32,
                    69,
                    0x2e54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e206861736e2774207375727061737365642074696d65206c6f636b,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 489 len 27]
    if arg5 + (336 * 24 * 3600) < arg5:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > arg5 + (336 * 24 * 3600):
        revert with 0, 
                    32,
                    51,
                    0x2e54696d656c6f636b3a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e206973207374616c65,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 471 len 13]
    mem[0] = sha3(address(arg1), arg2, 160, ceil32(arg3.length) + 192, arg5, arg3.length, arg3[all], 0, mem[arg3.length + 352 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length])
    mem[32] = 5
    stor5[address(arg1)][arg2][160][ceil32(arg3.length) + 192][arg5][arg3.length][arg3[all]][0][mem[arg3.length + 352 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]] = 0
    if arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 352 len arg3.length] = arg3[all]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 384] = Mask(32, 224, sha3(arg3[all]))
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 388 len arg4.length] = arg4[all]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg4.length + 4
        mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388
        _25 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 384 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)])]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)] % 32) + 420 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)]) + 416 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)] % 32]
        call arg1.mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 392 len _25 - 4]
        if not return_data.size:
            if ceil32(arg3.length) + ceil32(arg4.length) + 224 < 68:
                if not ext_call.success:
                    revert with 0, 'Transaction reverted silently'
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 612] = 0
                mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 516] = ceil32(arg3.length) + 160
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg4.length + 612] = arg4.length
                mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg4.length + 644 len arg4.length] = arg4[all]
                mem[(2 * arg4.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 644] = 0
                emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                        arg2,
                                        128,
                                        ceil32(arg3.length) + 160,
                                        arg5,
                                        arg3.length,
                                        arg3[all],
                                        0,
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + arg3.length + 644 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length],
                                        _6,
                                        arg1,
                stor0 = 1
                mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 516 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7] = mem[128 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7]
                if not ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32:
                    return 32, ceil32(arg3.length) + ceil32(arg4.length) + 224, 
                           mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 516],
                           arg5,
                           arg3.length,
                           arg3[all],
                           0,
                           mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + arg3.length + 644 len (3 * ceil32(arg3.length)) + (3 * ceil32(arg4.length)) + -arg3.length + 96]
                mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 516] = mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + -(ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32) + 548 len ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32]
                return 32, ceil32(arg3.length) + ceil32(arg4.length) + 224, 
                       mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 516],
                       arg5,
                       arg3.length,
                       arg3[all],
                       0,
                       mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + arg3.length + 644 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + -arg3.length - 96]
            require Mask(224, 0, ceil32(arg3.length) + ceil32(arg4.length) + 224), uint32(arg1) >= 32
            require uint128(arg1) << 96, uint32(arg2) <= 4294967296
            require uint128(arg1) << 96, uint32(arg2) + 164 <= Mask(224, 0, ceil32(arg3.length) + ceil32(arg4.length) + 224), uint32(arg1) + 132
            require Mask(224, 0, ceil32(arg3.length) + ceil32(arg4.length) + 224), uint32(arg1) + 132 >= mem[uint128(arg1) << 96, uint32(arg2) + 132] + uint128(arg1) << 96, uint32(arg2) + 164 and mem[uint128(arg1) << 96, uint32(arg2) + 132] <= 4294967296
            mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388] = mem[uint128(arg1) << 96, uint32(arg2) + 132]
            _320 = mem[uint128(arg1) << 96, uint32(arg2) + 132]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 420 len ceil32(mem[uint128(arg1) << 96, uint32(arg2) + 132])] = mem[uint128(arg1) << 96, uint32(arg2) + 164 len ceil32(mem[uint128(arg1) << 96, uint32(arg2) + 132])]
            if not _320 % 32:
                if not ext_call.success:
                    mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 420] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 424] = 32
                    mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 456] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388]
                    mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 488 len ceil32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 420 len ceil32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388])]
                    if not mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388] % 32:
                        revert with 0, 
                                    32,
                                    mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 456 len mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388]) + _320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 488] = mem[floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388]) + _320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + -(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388] % 32) + 520 len mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388] % 32]
                    revert with 0, 
                                32,
                                mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388],
                                mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 488 len floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388]) + 32]
                mem[arg3.length + _320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 580] = 0
                mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 484] = ceil32(arg3.length) + 160
                mem[_320 + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg4.length + 580] = arg4.length
                mem[_320 + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg4.length + 612 len arg4.length] = arg4[all]
                mem[(2 * arg4.length) + _320 + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 612] = 0
                emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                        arg2,
                                        128,
                                        ceil32(arg3.length) + 160,
                                        arg5,
                                        arg3.length,
                                        arg3[all],
                                        0,
                                        mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + arg3.length + 612 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length],
                                        _6,
                                        arg1,
                stor0 = 1
                mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 484 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7] = mem[128 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7]
                if not ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32:
                    return 32, ceil32(arg3.length) + ceil32(arg4.length) + 224, 
                           mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 484],
                           arg5,
                           arg3.length,
                           arg3[all],
                           0,
                           mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + arg3.length + 612 len (3 * ceil32(arg3.length)) + (3 * ceil32(arg4.length)) + -arg3.length + 96]
                mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + _320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 484] = mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + _320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + -(ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32) + 516 len ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32]
                return 32, ceil32(arg3.length) + ceil32(arg4.length) + 224, 
                       mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 484],
                       arg5,
                       arg3.length,
                       arg3[all],
                       0,
                       mem[_320 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + arg3.length + 612 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + -arg3.length - 96]
            mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 420] = mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + -(_320 % 32) + 452 len _320 % 32]
            if not ext_call.success:
                mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 452] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 456] = 32
                mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 488] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388]
                mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 520 len ceil32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 420 len ceil32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388])]
                if not mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388] % 32:
                    revert with 0, 
                                32,
                                mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 488 len mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388] + 32]
                mem[floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388]) + floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 520] = mem[floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388]) + floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + -(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388] % 32) + 552 len mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388] % 32]
                revert with 0, 
                            32,
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388],
                            mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 520 len floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388]) + 32]
            mem[arg3.length + floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 612] = 0
            mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 516] = ceil32(arg3.length) + 160
            mem[floor32(_320) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg4.length + 612] = arg4.length
            mem[floor32(_320) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg4.length + 644 len arg4.length] = arg4[all]
            mem[(2 * arg4.length) + floor32(_320) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 644] = 0
            emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                    arg2,
                                    128,
                                    ceil32(arg3.length) + 160,
                                    arg5,
                                    arg3.length,
                                    arg3[all],
                                    0,
                                    mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + arg3.length + 644 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length],
                                    _6,
                                    arg1,
            stor0 = 1
            mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 516 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7] = mem[128 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7]
            if not ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32:
                return 32, ceil32(arg3.length) + ceil32(arg4.length) + 224, 
                       mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 516],
                       arg5,
                       arg3.length,
                       arg3[all],
                       0,
                       mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + arg3.length + 644 len (3 * ceil32(arg3.length)) + (3 * ceil32(arg4.length)) + -arg3.length + 96]
            mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 516] = mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + -(ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32) + 548 len ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32]
            return 32, ceil32(arg3.length) + ceil32(arg4.length) + 224, 
                   mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 516],
                   arg5,
                   arg3.length,
                   arg3[all],
                   0,
                   mem[floor32(_320) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + arg3.length + 644 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + -arg3.length - 96]
        mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 388] = return_data.size
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if return_data.size < 68:
            if not ext_call.success:
                revert with 0, 'Transaction reverted silently'
            mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 645 len arg4.length] = arg4[all]
            mem[(2 * arg4.length) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 645] = 0
            emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                    arg2,
                                    128,
                                    ceil32(arg3.length) + 160,
                                    arg5,
                                    arg3.length,
                                    arg3[all],
                                    0,
                                    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + arg3.length + 645 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length],
                                    _6,
                                    arg1,
            stor0 = 1
            return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        require Mask(224, 0, return_data.size), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 420 len 4] >= 32
        _290 = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 424]
        require mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 424] <= 4294967296
        require mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 424] + 68 <= Mask(224, 0, return_data.size), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 420 len 4] + 36
        require Mask(224, 0, return_data.size), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 420 len 4] + 36 >= mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 424] + 424] + mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 424] + 68 and mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 424] + 424] <= 4294967296
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 424] + 424]
        _324 = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + _290 + 424]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 421 len ceil32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + _290 + 424])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + _290 + 456 len ceil32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + _290 + 424])]
        if not _324 % 32:
            if ext_call.success:
                mem[_324 + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 613 len arg4.length] = arg4[all]
                mem[(2 * arg4.length) + _324 + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 613] = 0
                emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                        arg2,
                                        128,
                                        ceil32(arg3.length) + 160,
                                        arg5,
                                        arg3.length,
                                        arg3[all],
                                        0,
                                        mem[_324 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + arg3.length + 613 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length],
                                        _6,
                                        arg1,
                stor0 = 1
                return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
            mem[_324 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 421] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_324 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 425] = 32
            mem[_324 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 457] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389]
            mem[_324 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 489 len ceil32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 421 len ceil32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389])]
            if not mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389] % 32:
                revert with 0, 
                            32,
                            mem[_324 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 457 len mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389] + 32]
            mem[floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389]) + _324 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389]) + _324 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + -(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389] % 32) + 521 len mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389] % 32]
            revert with 0, 
                        32,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389],
                        mem[_324 + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 489 len floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389]) + 32]
        mem[floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 421] = mem[floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + -(_324 % 32) + 453 len _324 % 32]
        if ext_call.success:
            mem[floor32(_324) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 645 len arg4.length] = arg4[all]
            mem[(2 * arg4.length) + floor32(_324) + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 645] = 0
            emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                    arg2,
                                    128,
                                    ceil32(arg3.length) + 160,
                                    arg5,
                                    arg3.length,
                                    arg3[all],
                                    0,
                                    mem[floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + arg3.length + 645 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length],
                                    _6,
                                    arg1,
            stor0 = 1
            return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        mem[floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 453] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 457] = 32
        mem[floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 489] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389]
        mem[floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 521 len ceil32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 421 len ceil32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389])]
        if not mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389] % 32:
            revert with 0, 
                        32,
                        mem[floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 489 len mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389] + 32]
        mem[floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389]) + floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389]) + floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + -(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389] % 32) + 553 len mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389] % 32]
        revert with 0, 
                    32,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389],
                    mem[floor32(_324) + ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 521 len floor32(mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + ceil32(return_data.size) + 389]) + 32]
    mem[64] = ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg4.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 384 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg4.length + 384] = 0
    mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 384 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)])]
    mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)] % 32) + 416 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)]) + 416 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 384 len -arg4.length + ceil32(arg4.length)] % 32]
    call arg1.mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 388 len arg4.length - 4]
    if not return_data.size:
        if ceil32(arg3.length) + ceil32(arg4.length) + 224 < 68:
            if not ext_call.success:
                revert with 0, 'Transaction reverted silently'
            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448] = arg2
            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 544] = arg5
            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 480] = 128
            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 576] = arg3.length
            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 608 len arg3.length] = arg3[all]
            mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 608] = 0
            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 512] = ceil32(arg3.length) + 160
            mem[(2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 608] = arg4.length
            mem[(2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 640 len arg4.length] = arg4[all]
            mem[arg4.length + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 640] = 0
            emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                    mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448 len ceil32(arg3.length) + (4 * ceil32(arg4.length)) + 192],
                                    _6,
                                    arg1,
            stor0 = 1
            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448] = 32
            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 480] = ceil32(arg3.length) + ceil32(arg4.length) + 224
            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 512 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7] = mem[128 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7]
            if not ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32:
                return memory
                  from ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448
                   len (2 * ceil32(arg3.length)) + (6 * ceil32(arg4.length)) + 288
            mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 512] = mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + -(ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32) + 544 len ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32]
            return 32, ceil32(arg3.length) + ceil32(arg4.length) + 224, 
                   mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 512],
                   arg5,
                   arg3.length,
                   arg3[all],
                   0,
                   mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + arg3.length + 640 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + -arg3.length - 96]
        require Mask(224, 0, ceil32(arg3.length) + ceil32(arg4.length) + 224), uint32(arg1) >= 32
        require uint128(arg1) << 96, uint32(arg2) <= 4294967296
        require uint128(arg1) << 96, uint32(arg2) + 164 <= Mask(224, 0, ceil32(arg3.length) + ceil32(arg4.length) + 224), uint32(arg1) + 132
        require Mask(224, 0, ceil32(arg3.length) + ceil32(arg4.length) + 224), uint32(arg1) + 132 >= mem[uint128(arg1) << 96, uint32(arg2) + 132] + uint128(arg1) << 96, uint32(arg2) + 164 and mem[uint128(arg1) << 96, uint32(arg2) + 132] <= 4294967296
        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384] = mem[uint128(arg1) << 96, uint32(arg2) + 132]
        _328 = mem[uint128(arg1) << 96, uint32(arg2) + 132]
        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416 len ceil32(mem[uint128(arg1) << 96, uint32(arg2) + 132])] = mem[uint128(arg1) << 96, uint32(arg2) + 164 len ceil32(mem[uint128(arg1) << 96, uint32(arg2) + 132])]
        if not _328 % 32:
            if not ext_call.success:
                mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 420] = 32
                mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 452] = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384]
                mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 484 len ceil32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384])] = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416 len ceil32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384])]
                if not mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384] % 32:
                    revert with 0, 
                                32,
                                mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 452 len mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384] + 32]
                mem[floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384]) + _328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 484] = mem[floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384]) + _328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + -(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384] % 32) + 516 len mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384] % 32]
                revert with 0, 
                            32,
                            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384],
                            mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 484 len floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384]) + 32]
            mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416] = arg2
            mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 512] = arg5
            mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448] = 128
            mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 544] = arg3.length
            mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 576 len arg3.length] = arg3[all]
            mem[arg3.length + _328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 576] = 0
            mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 480] = ceil32(arg3.length) + 160
            mem[_328 + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 576] = arg4.length
            mem[_328 + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 608 len arg4.length] = arg4[all]
            mem[arg4.length + _328 + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 608] = 0
            emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                    mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416 len ceil32(arg3.length) + (5 * ceil32(arg4.length)) + 192],
                                    _6,
                                    arg1,
            stor0 = 1
            mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416] = 32
            mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448] = ceil32(arg3.length) + ceil32(arg4.length) + 224
            mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 480 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7] = mem[128 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7]
            if not ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32:
                return memory
                  from _328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416
                   len (2 * ceil32(arg3.length)) + (6 * ceil32(arg4.length)) + 288
            mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + _328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 480] = mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + _328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + -(ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32) + 512 len ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32]
            return 32, ceil32(arg3.length) + ceil32(arg4.length) + 224, 
                   mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 480],
                   arg5,
                   arg3.length,
                   arg3[all],
                   0,
                   mem[_328 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + arg3.length + 608 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + -arg3.length - 96]
        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416] = mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + -(_328 % 32) + 448 len _328 % 32]
        if not ext_call.success:
            mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 452] = 32
            mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 484] = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384]
            mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 516 len ceil32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384])] = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416 len ceil32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384])]
            if not mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384] % 32:
                revert with 0, 
                            32,
                            mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 484 len mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384] + 32]
            mem[floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384]) + floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 516] = mem[floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384]) + floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + -(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384] % 32) + 548 len mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384] % 32]
            revert with 0, 
                        32,
                        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384],
                        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 516 len floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384]) + 32]
        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448] = arg2
        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 544] = arg5
        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 480] = 128
        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 576] = arg3.length
        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 608 len arg3.length] = arg3[all]
        mem[arg3.length + floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 608] = 0
        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 512] = ceil32(arg3.length) + 160
        mem[floor32(_328) + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 608] = arg4.length
        mem[floor32(_328) + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 640 len arg4.length] = arg4[all]
        mem[arg4.length + floor32(_328) + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + 640] = 0
        emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448 len ceil32(arg3.length) + (5 * ceil32(arg4.length)) + 192],
                                _6,
                                arg1,
        stor0 = 1
        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448] = 32
        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 480] = ceil32(arg3.length) + ceil32(arg4.length) + 224
        mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 512 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7] = mem[128 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 31) + 7]
        if not ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32:
            return memory
              from floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 448
               len (2 * ceil32(arg3.length)) + (6 * ceil32(arg4.length)) + 288
        mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 512] = mem[floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + -(ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32) + 544 len ceil32(arg3.length) + ceil32(arg4.length) + 224 % 32]
        return 32, ceil32(arg3.length) + ceil32(arg4.length) + 224, 
               mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 512],
               arg5,
               arg3.length,
               arg3[all],
               0,
               mem[floor32(_328) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + arg3.length + 640 len floor32(ceil32(arg3.length) + ceil32(arg4.length) + 224) + -arg3.length - 96]
    mem[64] = ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385
    mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 384] = return_data.size
    mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if return_data.size < 68:
        if not ext_call.success:
            revert with 0, 'Transaction reverted silently'
        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 449] = arg2
        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 545] = arg5
        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 481] = 128
        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 577] = arg3.length
        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 609 len arg3.length] = arg3[all]
        mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 609] = 0
        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 513] = ceil32(arg3.length) + 160
        mem[(2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 609] = arg4.length
        mem[(2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 641 len arg4.length] = arg4[all]
        mem[arg4.length + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 641] = 0
        emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 449 len ceil32(arg3.length) + (4 * ceil32(arg4.length)) + 192],
                                _6,
                                arg1,
    else:
        require Mask(224, 0, return_data.size), mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416 len 4] >= 32
        _294 = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 420]
        require mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 420] <= 4294967296
        require mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 420] + 68 <= Mask(224, 0, return_data.size), mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416 len 4] + 36
        require Mask(224, 0, return_data.size), mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 416 len 4] + 36 >= mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 420] + 420] + mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 420] + 68 and mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 420] + 420] <= 4294967296
        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385] = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + 420] + 420]
        _332 = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + _294 + 420]
        mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 417 len ceil32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + _294 + 420])] = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + _294 + 452 len ceil32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + _294 + 420])]
        if not _332 % 32:
            mem[64] = _332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 417
            if not ext_call.success:
                mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 417] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 421] = 32
                mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 453] = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385]
                mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 485 len ceil32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385])] = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 417 len ceil32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385])]
                if not mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385] % 32:
                    revert with 0, 
                                32,
                                mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 453 len mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385] + 32]
                mem[floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385]) + _332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 485] = mem[floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385]) + _332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + -(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385] % 32) + 517 len mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385] % 32]
                revert with 0, 
                            32,
                            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385],
                            mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 485 len floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385]) + 32]
            mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 417] = arg2
            mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 513] = arg5
            mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 449] = 128
            mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 545] = arg3.length
            mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 577 len arg3.length] = arg3[all]
            mem[arg3.length + _332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 577] = 0
            mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 481] = ceil32(arg3.length) + 160
            mem[_332 + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 577] = arg4.length
            mem[_332 + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 609 len arg4.length] = arg4[all]
            mem[arg4.length + _332 + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 609] = 0
            emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                    mem[_332 + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 417 len ceil32(arg3.length) + (5 * ceil32(arg4.length)) + 192],
                                    _6,
                                    arg1,
        else:
            mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 417] = mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + -(_332 % 32) + 449 len _332 % 32]
            mem[64] = floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 449
            if not ext_call.success:
                mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 449] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 453] = 32
                mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 485] = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385]
                mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 517 len ceil32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385])] = mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 417 len ceil32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385])]
                if not mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385] % 32:
                    revert with 0, 
                                32,
                                mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 485 len mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385] + 32]
                mem[floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385]) + floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 517] = mem[floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385]) + floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + -(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385] % 32) + 549 len mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385] % 32]
                revert with 0, 
                            32,
                            mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385],
                            mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 517 len floor32(mem[ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 385]) + 32]
            mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 449] = arg2
            mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 545] = arg5
            mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 481] = 128
            mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 577] = arg3.length
            mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 609 len arg3.length] = arg3[all]
            mem[arg3.length + floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 609] = 0
            mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 513] = ceil32(arg3.length) + 160
            mem[floor32(_332) + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 609] = arg4.length
            mem[floor32(_332) + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 641 len arg4.length] = arg4[all]
            mem[arg4.length + floor32(_332) + (2 * ceil32(arg3.length)) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 641] = 0
            emit ExecuteTransaction(bytes32 arg1, address arg2, uint256 arg3, string arg4, bytes arg5, uint256 arg6):
                                    mem[floor32(_332) + ceil32(arg3.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 449 len ceil32(arg3.length) + (5 * ceil32(arg4.length)) + 192],
                                    _6,
                                    arg1,
    stor0 = 1
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
