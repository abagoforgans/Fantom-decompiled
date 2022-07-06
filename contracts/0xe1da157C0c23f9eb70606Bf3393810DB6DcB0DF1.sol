contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function isAllowed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function allowed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Locked!'
    stor0 = arg1
}

function removeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Locked!'
    stor1[address(arg1)] = 0
    return 1
}

function approveAddress(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Locked!'
    stor1[address(arg1)] = 1
    return 1
}

function withdraw() {
    if stor0 != msg.sender:
        revert with 0, 'Locked!'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPair(address arg1, bytes32 arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if arg3 == arg4:
        revert with 0, 'IDENTICAL_ADDRESSES'
    if arg3 < arg4:
        if not arg3:
            revert with 0, 'ZERO_ADDRESS'
        return address(sha3(0, arg1, sha3(arg3, arg4), arg2))
    if not arg4:
        revert with 0, 'ZERO_ADDRESS'
    return address(sha3(0, arg1, sha3(arg4, arg3), arg2))
}

function bulkRemove(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'Locked!'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
    return 1
}

function bulkApprove(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'Locked!'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function directSwapBuyAndSell(address arg1, address arg2, address[] arg3, uint256 arg4, uint256 arg5, address arg6) {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'Not allowed!'
    require 0 < arg3.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3.length
    require 0 < arg3.length
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[140 len 20] == ext_call.return_data[12 len 20]:
        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
            revert with 0, 'ds-math-sub-underflow'
        require ext_code.size(arg1)
        staticcall arg1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
            revert with 0, 'ds-math-sub-underflow'
        require ext_code.size(arg1)
        staticcall arg1.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg5:
        if ext_call.return_data[0] < arg5:
            revert with 0, 'ERR : SLIPPAGE'
    require 0 < arg3.length
    require ext_code.size(arg2)
    if mem[140 len 20] == address(ext_call.return_data[0]):
        call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0], address(arg6), 128, 0
    else:
        call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, address(arg6), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function directSwapBuyOnly(address arg1, address arg2, address[] arg3, uint256 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[msg.sender]) != 1:
        revert with 0, 'Not allowed!'
    require 0 < arg3.length
    _6 = mem[128]
    mem[(32 * arg3.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(_6))
    call address(_6).deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg3.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3.length
    mem[(32 * arg3.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + 132] = msg.value
    mem[(32 * arg3.length) + 164] = 64
    mem[(32 * arg3.length) + 196] = arg3.length
    mem[(32 * arg3.length) + 228 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 228 len (32 * arg3.length) - floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg3.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg3.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    if mem[140 len 20] == ext_call.return_data[12 len 20]:
        _165 = mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32
        require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[(32 * arg3.length) + mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128] <= 4294967296 and mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * arg3.length) + mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 32 <= return_data.size
        mem[(32 * arg3.length) + ceil32(return_data.size) + 128] = mem[(32 * arg3.length) + mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
        mem[(32 * arg3.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg3.length) + _165 + 128])] = mem[(32 * arg3.length) + _165 + 160 len floor32(mem[(32 * arg3.length) + _165 + 128])]
    else:
        _167 = mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32
        require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[(32 * arg3.length) + mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128] <= 4294967296 and mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * arg3.length) + mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 32 <= return_data.size
        mem[(32 * arg3.length) + ceil32(return_data.size) + 128] = mem[(32 * arg3.length) + mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
        mem[(32 * arg3.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg3.length) + _167 + 128])] = mem[(32 * arg3.length) + _167 + 160 len floor32(mem[(32 * arg3.length) + _167 + 128])]
    require 1 < mem[(32 * arg3.length) + ceil32(return_data.size) + 128]
    if arg4 != 0:
        if mem[(32 * arg3.length) + ceil32(return_data.size) + 192] < arg4:
            revert with 0, 'ERR : SLIPPAGE'
    require 0 < arg3.length
    require ext_code.size(arg2)
    if mem[140 len 20] == address(ext_call.return_data[0]):
        call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, mem[(32 * arg3.length) + ceil32(return_data.size) + 192], address(arg5), 128, 0
    else:
        call arg2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + ceil32(return_data.size) + 192], 0, address(arg5), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
