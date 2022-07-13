contract main {




// =====================  Runtime code  =====================


address stor0;

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Denied'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function _fallback() payable {
    mem[96 len calldata.size] = call.data[0 len calldata.size]
    _3 = 96, mem[96 len 21]
    _4 = mem[105]
    _5 = mem[106]
    mem[calldata.size + 96] = (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 106, 32))), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('mem', ('range', 106, 32))), 0) - 256) + 1
    mem[calldata.size + 128] = uint128(_3)
    mem[64] = calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 336
    idx = 0
    s = calldata.size + 96
    t = 130
    while idx < Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256:
        staticcall mem[t + 12 len 20] xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)).getReserves() with:
                gas gas_remaining wei
        mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 128 len 96] = ext_call.return_data[0 len 96]
        mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 96] = 96
        if not bool(mem[t - 22]):
            mem[s + 64] = (10000 * (10000 * mem[s + 32]) - (mem[t + 10 len 2] * mem[s + 32]) / 10000 * ext_call.return_data[32]) - (mem[t + 8 len 1] * (10000 * mem[s + 32]) - (mem[t + 10 len 2] * mem[s + 32]) / 10000 * ext_call.return_data[32]) / (10000 * (10000 * mem[s + 32]) - (mem[t + 10 len 2] * mem[s + 32]) / 10000) - (mem[t + 8 len 1] * (10000 * mem[s + 32]) - (mem[t + 10 len 2] * mem[s + 32]) / 10000) + (10000 * ext_call.return_data[0])
        else:
            mem[s + 64] = (10000 * (10000 * mem[s + 32]) - (mem[t + 10 len 2] * mem[s + 32]) / 10000 * ext_call.return_data[0]) - (mem[t + 8 len 1] * (10000 * mem[s + 32]) - (mem[t + 10 len 2] * mem[s + 32]) / 10000 * ext_call.return_data[0]) / (10000 * (10000 * mem[s + 32]) - (mem[t + 10 len 2] * mem[s + 32]) / 10000) - (mem[t + 8 len 1] * (10000 * mem[s + 32]) - (mem[t + 10 len 2] * mem[s + 32]) / 10000) + (10000 * ext_call.return_data[32])
        idx = idx + 1
        s = s + 32
        t = t + 24
        continue 
    if mem[s + 32] < mem[t + 8 len 16]:
        revert with memory
          from s
           len 1
    staticcall address(_4).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len 2]
    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 100] = msg.sender
    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 132] = 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)) xor mem[t + (-24 * Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 12 len 20]
    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 164] = uint128(_3)
    call address(_4).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 132], _3 << 128
    idx = 0
    s = calldata.size + 160
    u = t - (24 * Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256)
    while idx < Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256:
        if not Mask(1, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', -22, ('var', 3)), 32))), 0) + 256, 31):
            _70 = mem[s]
            _72 = mem[u + 24]
            if idx <= (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) - 2:
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', -22, ('var', 3)), 32))), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', -22, ('var', 3)), 32))), 0) - 256 < 2 != 1:
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 96] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 100] = 0
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 132] = _70
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 164] = address(address(_72) xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)))
                    call mem[u + 12 len 20] xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)).swap(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args 0, _70, address(address(_72) xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)))
                    if not ext_call.success:
                        revert with swap(uint256 arg1, uint256 arg2, address arg3)
                else:
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 100] = 0
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 132] = _70
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 164] = address(address(_72) xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)))
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 196] = 128
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 228] = 0
                    call mem[u + 12 len 20] xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _70, address(address(_72) xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4))), 128, 0
                    if not ext_call.success:
                        revert with swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4)
            else:
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', -22, ('var', 3)), 32))), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', -22, ('var', 3)), 32))), 0) - 256 < 2 != 1:
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 96] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 100] = 0
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 132] = _70
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 164] = msg.sender
                    call mem[u + 12 len 20] xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)).swap(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args 0, _70, msg.sender
                    if not ext_call.success:
                        revert with swap(uint256 arg1, uint256 arg2, address arg3)
                else:
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 100] = 0
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 132] = _70
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 164] = msg.sender
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 196] = 128
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 228] = 0
                    call mem[u + 12 len 20] xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _70, address(msg.sender), 128, 0
                    if not ext_call.success:
                        revert with swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4)
        else:
            _71 = mem[s]
            _73 = mem[u + 24]
            if idx <= (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) - 2:
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', -22, ('var', 3)), 32))), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', -22, ('var', 3)), 32))), 0) - 256 < 2 != 1:
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 96] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 100] = _71
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 132] = 0
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 164] = address(address(_73) xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)))
                    call mem[u + 12 len 20] xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)).swap(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _71, 0, address(address(_73) xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)))
                    if not ext_call.success:
                        revert with swap(uint256 arg1, uint256 arg2, address arg3)
                else:
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 100] = _71
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 132] = 0
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 164] = address(address(_73) xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)))
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 196] = 128
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 228] = 0
                    call mem[u + 12 len 20] xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _71, 0, address(address(_73) xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4))), 128, 0
                    if not ext_call.success:
                        revert with swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4)
            else:
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', -22, ('var', 3)), 32))), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', -22, ('var', 3)), 32))), 0) - 256 < 2 != 1:
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 96] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 100] = _71
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 132] = 0
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 164] = msg.sender
                    call mem[u + 12 len 20] xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)).swap(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args _71, 0, msg.sender
                    if not ext_call.success:
                        revert with swap(uint256 arg1, uint256 arg2, address arg3)
                else:
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 100] = _71
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 132] = 0
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 164] = msg.sender
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 196] = 128
                    mem[calldata.size + (32 * (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_5')), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('var', '_5')), 0) - 256) + 2) + 228] = 0
                    call mem[u + 12 len 20] xor 2 * Mask(159, 0, uint128(_3) xor msg.sender xor address(_4)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _71, 0, address(msg.sender), 128, 0
                    if not ext_call.success:
                        revert with swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4)
        ('bool', 'ext_call.success')
        idx = idx + 1
        s = s + 32
        u = u + 24
        continue 
    staticcall address(_4).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len 5]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with ext_call.return_data[0 len 6]
    if Mask(8, -(('mask_shl', 256, 0, -3, ('data', 96, ('call.data', 0, 5))), 0) + 256, 31):
        call 0x00000000687f5b66638856396bee28c1db0178d1.free(uint256 arg1) with:
             gas gas_remaining wei
            args (Mask(8, -(('mask_shl', 256, 0, -3, ('data', 96, ('call.data', 0, 5))), 0) + 256, 31) << (('mask_shl', 256, 0, -3, ('data', 96, ('call.data', 0, 5))), 0) - 256)
}



}
