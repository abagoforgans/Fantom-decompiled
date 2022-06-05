contract main {




// =====================  Runtime code  =====================


#
#  - sub_3b4335a6(?)
#
function _fallback() payable {
  stop
}

function sub_6f200cbe(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    u = 32 * ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    if block.number <= cd[36]:
        mem[ceil32(32 * ('cd', 4).length) + 97] = 64
        return 64, 0, ('cd', 4).length, mem[128 len 32 * ('cd', 4).length]
    if ('cd', 4).length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 2 * ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = 2 * ('cd', 4).length
    if uint255(('cd', 4).length):
        mem[ceil32(32 * ('cd', 4).length) + 129 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        staticcall mem[(32 * idx) + 128].getReserves() with:
                gas 15000 wei
        mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 129 len 64] = ext_call.return_data[0 len 64]
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * idx >= 2 * ('cd', 4).length:
            revert with 'NH{q', 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 1 > !(2 * idx):
            revert with 'NH{q', 17
        if (2 * idx) + 1 >= 2 * ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * (2 * idx) + 1) + ceil32(32 * ('cd', 4).length) + 129] = ext_call.return_data[32]
        mem[(64 * idx) + ceil32(32 * ('cd', 4).length) + 129] = ext_call.return_data[0]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=2 * ('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 129 len 64 * ('cd', 4).length]), block.number
}

function sub_7ccd1719(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg1) == ext_call.return_data[12 len 20]:
        if Mask(112, 0, ext_call.return_data[0]) < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg2))
        if address(arg1) == ext_call.return_data[12 len 20]:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args Mask(112, 0, ext_call.return_data[0]) - 1, 0, address(this.address), 128, 64, arg1, Mask(112, 0, ext_call.return_data[0]) - 1
        else:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, Mask(112, 0, ext_call.return_data[0]) - 1, address(this.address), 128, 64, arg1, Mask(112, 0, ext_call.return_data[0]) - 1
    else:
        if Mask(112, 0, ext_call.return_data[32]) < 1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg2))
        if address(arg1) == ext_call.return_data[12 len 20]:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args Mask(112, 0, ext_call.return_data[32]) - 1, 0, address(this.address), 128, 64, arg1, Mask(112, 0, ext_call.return_data[32]) - 1
        else:
            call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, Mask(112, 0, ext_call.return_data[32]) - 1, address(this.address), 128, 64, arg1, Mask(112, 0, ext_call.return_data[32]) - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3aa99232(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg2.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _4 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if _4 - ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not _4:
            revert with 'NH{q', 18
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg2.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg2.length:
            require arg2.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg2.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg2.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg2.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg2.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _4 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if _4 - ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not _4:
            revert with 'NH{q', 18
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _4 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if _4 - ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not _4:
            revert with 'NH{q', 18
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function wakaSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _4 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if _4 - ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not _4:
            revert with 'NH{q', 18
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _3 = mem[128]
    mem[ceil32(arg4.length) + 128] = mem[128]
    _4 = mem[160]
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] != _4:
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _4 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if _4 - ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not _4:
            revert with 'NH{q', 18
        require ext_code.size(address(_3))
        staticcall address(_3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _4:
            revert with 0, 'token has tnx fee'
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 128] = 25
    mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), 0x71562b71999873db5b286df9, 0, _4, mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 28]
    call address(_3).mem[ceil32(arg4.length) + ceil32(return_data.size) + 292 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + ceil32(return_data.size) + 296 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    else:
        mem[ceil32(arg4.length) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'UniswapV2: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg4.length) + ceil32(return_data.size) + 324] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 324])
            if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 324]:
                revert with 0, 'UniswapV2: TRANSFER_FAILED'
    require ext_code.size(address(_3))
    staticcall address(_3).0x70a08231 with:
            gas gas_remaining wei
           args 0x71562b71999873db5b286df957af199ec94617f7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != _4:
        revert with 0, 'token has tnx fee'
    revert with 0, 'passed'
}

function sub_0784f212(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 2
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = 2
    s = (2 * ceil32(return_data.size)) + 224
    idx = 2
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _18 = mem[(2 * ceil32(return_data.size)) + 288]
    require mem[(2 * ceil32(return_data.size)) + 288] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 319 < (2 * ceil32(return_data.size)) + return_data.size + 288
    _19 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288])) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288])) + 289 > test266151307():
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288])) + 289
    mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288] + 288]
    require _18 + _19 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 320 len ceil32(_19)] = mem[(2 * ceil32(return_data.size)) + _18 + 320 len ceil32(_19)]
    if ceil32(_19) <= _19:
        mem[(2 * ceil32(return_data.size)) + 224] = (4 * ceil32(return_data.size)) + 288
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _269 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _271 = mem[_269]
        require mem[_269] <= test266151307()
        require _269 + mem[_269] + 31 < _269 + return_data.size
        _273 = mem[_269 + mem[_269]]
        if mem[_269 + mem[_269]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_269 + mem[_269]])) + 1 < 0 or _269 + ceil32(return_data.size) + ceil32(ceil32(mem[_269 + mem[_269]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _269 + ceil32(return_data.size) + ceil32(ceil32(mem[_269 + mem[_269]])) + 1
        mem[_269 + ceil32(return_data.size)] = _273
        require _271 + _273 + 32 <= return_data.size
        mem[_269 + ceil32(return_data.size) + 32 len ceil32(_273)] = mem[_269 + _271 + 32 len ceil32(_273)]
        if ceil32(_273) <= _273:
            mem[(2 * ceil32(return_data.size)) + 256] = _269 + ceil32(return_data.size)
            _501 = mem[64]
            mem[mem[64]] = 2
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 0 >= mem[_501]:
                revert with 'NH{q', 50
            mem[_501 + 32] = ext_call.return_data[31 len 1]
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                    gas gas_remaining wei
            mem[_501 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _501 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if 1 >= mem[_501]:
                revert with 'NH{q', 50
            mem[_501 + 64] = ext_call.return_data[31 len 1]
            mem[_501 + (2 * ceil32(return_data.size)) + 96] = 2
            mem[_501 + (2 * ceil32(return_data.size)) + 196] = address(arg1)
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[_501 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_501 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[_501 + (4 * ceil32(return_data.size)) + 196] = address(arg1)
            require ext_code.size(address(ext_call.return_data[12 len 20]))
            staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[_501 + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_501 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            mem[_501 + (4 * ceil32(return_data.size)) + 192] = 2
            require ext_code.size(address(arg1))
            staticcall address(arg1).getReserves() with:
                    gas gas_remaining wei
            mem[_501 + (4 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _501 + (6 * ceil32(return_data.size)) + 288
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            mem[_501 + (4 * ceil32(return_data.size)) + 256] = ext_call.return_data[50 len 14]
            mem[_501 + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[18 len 14]
            mem[_501 + (6 * ceil32(return_data.size)) + 288] = 160
            mem[_501 + (6 * ceil32(return_data.size)) + 448] = 2
            idx = 0
            s = 128
            t = _501 + (6 * ceil32(return_data.size)) + 480
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_501 + (6 * ceil32(return_data.size)) + 320] = 256
            mem[_501 + (6 * ceil32(return_data.size)) + 544] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 224
            t = _501 + (6 * ceil32(return_data.size)) + (32 * mem[96]) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 512
            u = _501 + (6 * ceil32(return_data.size)) + (32 * mem[96]) + 512
            while idx < 2:
                mem[u] = t + -_501 + (-6 * ceil32(return_data.size)) - 576
                _761 = mem[s]
                _766 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _766:
                    mem[v + t + 32] = mem[v + _761 + 32]
                    v = v + 32
                    continue 
                if ceil32(_766) > _766:
                    mem[_766 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_766) + t + 32
                u = u + 32
                continue 
            mem[_501 + (6 * ceil32(return_data.size)) + 352] = t + -_501 + (-6 * ceil32(return_data.size)) - 288
            _765 = mem[_501]
            mem[t] = mem[_501]
            mem[t + 32 len 32 * _765] = mem[_501 + 32 len 32 * _765]
            mem[_501 + (6 * ceil32(return_data.size)) + 384] = t + (32 * _765) + -_501 + (-6 * ceil32(return_data.size)) - 256
            _809 = mem[_501 + (2 * ceil32(return_data.size)) + 96]
            mem[t + (32 * _765) + 32] = mem[_501 + (2 * ceil32(return_data.size)) + 96]
            mem[t + (32 * _765) + 64 len 32 * _809] = mem[_501 + (2 * ceil32(return_data.size)) + 128 len 32 * _809]
            mem[_501 + (6 * ceil32(return_data.size)) + 416] = t + (32 * _765) + (32 * _809) + -_501 + (-6 * ceil32(return_data.size)) - 224
            _833 = mem[_501 + (4 * ceil32(return_data.size)) + 192]
            mem[t + (32 * _765) + (32 * _809) + 64] = mem[_501 + (4 * ceil32(return_data.size)) + 192]
            mem[t + (32 * _765) + (32 * _809) + 96 len 32 * _833] = mem[_501 + (4 * ceil32(return_data.size)) + 224 len 32 * _833]
            return memory
              from mem[64]
               len t + (32 * _765) + (32 * _809) + (32 * _833) + -mem[64] + 96
        mem[_273 + _269 + ceil32(return_data.size) + 32] = 0
        mem[(2 * ceil32(return_data.size)) + 256] = _269 + ceil32(return_data.size)
        _503 = mem[64]
        mem[mem[64]] = 2
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 0 >= mem[_503]:
            revert with 'NH{q', 50
        mem[_503 + 32] = ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                gas gas_remaining wei
        mem[_503 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _503 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 1 >= mem[_503]:
            revert with 'NH{q', 50
        mem[_503 + 64] = ext_call.return_data[31 len 1]
        mem[_503 + (2 * ceil32(return_data.size)) + 96] = 2
        mem[_503 + (2 * ceil32(return_data.size)) + 196] = address(arg1)
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[_503 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_503 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        mem[_503 + (4 * ceil32(return_data.size)) + 196] = address(arg1)
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                gas gas_remaining wei
               args mem[_503 + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_503 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[_503 + (4 * ceil32(return_data.size)) + 192] = 2
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        mem[_503 + (4 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _503 + (6 * ceil32(return_data.size)) + 288
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[_503 + (4 * ceil32(return_data.size)) + 256] = ext_call.return_data[50 len 14]
        mem[_503 + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[18 len 14]
        mem[_503 + (6 * ceil32(return_data.size)) + 288] = 160
        mem[_503 + (6 * ceil32(return_data.size)) + 448] = 2
        idx = 0
        s = 128
        t = _503 + (6 * ceil32(return_data.size)) + 480
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_503 + (6 * ceil32(return_data.size)) + 320] = 256
        mem[_503 + (6 * ceil32(return_data.size)) + 544] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = _503 + (6 * ceil32(return_data.size)) + (32 * mem[96]) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 512
        u = _503 + (6 * ceil32(return_data.size)) + (32 * mem[96]) + 512
        while idx < 2:
            mem[u] = t + -_503 + (-6 * ceil32(return_data.size)) - 576
            _762 = mem[s]
            _768 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _768:
                mem[v + t + 32] = mem[v + _762 + 32]
                v = v + 32
                continue 
            if ceil32(_768) > _768:
                mem[_768 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_768) + t + 32
            u = u + 32
            continue 
        mem[_503 + (6 * ceil32(return_data.size)) + 352] = t + -_503 + (-6 * ceil32(return_data.size)) - 288
        _767 = mem[_503]
        mem[t] = mem[_503]
        mem[t + 32 len 32 * _767] = mem[_503 + 32 len 32 * _767]
        mem[_503 + (6 * ceil32(return_data.size)) + 384] = t + (32 * _767) + -_503 + (-6 * ceil32(return_data.size)) - 256
        _810 = mem[_503 + (2 * ceil32(return_data.size)) + 96]
        mem[t + (32 * _767) + 32] = mem[_503 + (2 * ceil32(return_data.size)) + 96]
        mem[t + (32 * _767) + 64 len 32 * _810] = mem[_503 + (2 * ceil32(return_data.size)) + 128 len 32 * _810]
        mem[_503 + (6 * ceil32(return_data.size)) + 416] = t + (32 * _767) + (32 * _810) + -_503 + (-6 * ceil32(return_data.size)) - 224
        _834 = mem[_503 + (4 * ceil32(return_data.size)) + 192]
        mem[t + (32 * _767) + (32 * _810) + 64] = mem[_503 + (4 * ceil32(return_data.size)) + 192]
        mem[t + (32 * _767) + (32 * _810) + 96 len 32 * _834] = mem[_503 + (4 * ceil32(return_data.size)) + 224 len 32 * _834]
        return memory
          from mem[64]
           len t + (32 * _767) + (32 * _810) + (32 * _834) + -mem[64] + 96
    mem[_19 + (4 * ceil32(return_data.size)) + 320] = 0
    mem[(2 * ceil32(return_data.size)) + 224] = (4 * ceil32(return_data.size)) + 288
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _270 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _272 = mem[_270]
    require mem[_270] <= test266151307()
    require _270 + mem[_270] + 31 < _270 + return_data.size
    _274 = mem[_270 + mem[_270]]
    if mem[_270 + mem[_270]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[_270 + mem[_270]])) + 1 < 0 or _270 + ceil32(return_data.size) + ceil32(ceil32(mem[_270 + mem[_270]])) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _270 + ceil32(return_data.size) + ceil32(ceil32(mem[_270 + mem[_270]])) + 1
    mem[_270 + ceil32(return_data.size)] = _274
    require _272 + _274 + 32 <= return_data.size
    mem[_270 + ceil32(return_data.size) + 32 len ceil32(_274)] = mem[_270 + _272 + 32 len ceil32(_274)]
    if ceil32(_274) <= _274:
        mem[(2 * ceil32(return_data.size)) + 256] = _270 + ceil32(return_data.size)
        _505 = mem[64]
        mem[mem[64]] = 2
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 0 >= mem[_505]:
            revert with 'NH{q', 50
        mem[_505 + 32] = ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
                gas gas_remaining wei
        mem[_505 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _505 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if 1 >= mem[_505]:
            revert with 'NH{q', 50
        mem[_505 + 64] = ext_call.return_data[31 len 1]
        mem[_505 + (2 * ceil32(return_data.size)) + 96] = 2
        mem[_505 + (2 * ceil32(return_data.size)) + 196] = address(arg1)
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[_505 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_505 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        mem[_505 + (4 * ceil32(return_data.size)) + 196] = address(arg1)
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
                gas gas_remaining wei
               args mem[_505 + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_505 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        mem[_505 + (4 * ceil32(return_data.size)) + 192] = 2
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        mem[_505 + (4 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _505 + (6 * ceil32(return_data.size)) + 288
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[_505 + (4 * ceil32(return_data.size)) + 256] = ext_call.return_data[50 len 14]
        mem[_505 + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[18 len 14]
        mem[_505 + (6 * ceil32(return_data.size)) + 288] = 160
        mem[_505 + (6 * ceil32(return_data.size)) + 448] = 2
        idx = 0
        s = 128
        t = _505 + (6 * ceil32(return_data.size)) + 480
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_505 + (6 * ceil32(return_data.size)) + 320] = 256
        mem[_505 + (6 * ceil32(return_data.size)) + 544] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 224
        t = _505 + (6 * ceil32(return_data.size)) + (32 * mem[96]) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 512
        u = _505 + (6 * ceil32(return_data.size)) + (32 * mem[96]) + 512
        while idx < 2:
            mem[u] = t + -_505 + (-6 * ceil32(return_data.size)) - 576
            _763 = mem[s]
            _770 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _770:
                mem[v + t + 32] = mem[v + _763 + 32]
                v = v + 32
                continue 
            if ceil32(_770) > _770:
                mem[_770 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_770) + t + 32
            u = u + 32
            continue 
        mem[_505 + (6 * ceil32(return_data.size)) + 352] = t + -_505 + (-6 * ceil32(return_data.size)) - 288
        _769 = mem[_505]
        mem[t] = mem[_505]
        mem[t + 32 len 32 * _769] = mem[_505 + 32 len 32 * _769]
        mem[_505 + (6 * ceil32(return_data.size)) + 384] = t + (32 * _769) + -_505 + (-6 * ceil32(return_data.size)) - 256
        _811 = mem[_505 + (2 * ceil32(return_data.size)) + 96]
        mem[t + (32 * _769) + 32] = mem[_505 + (2 * ceil32(return_data.size)) + 96]
        mem[t + (32 * _769) + 64 len 32 * _811] = mem[_505 + (2 * ceil32(return_data.size)) + 128 len 32 * _811]
        mem[_505 + (6 * ceil32(return_data.size)) + 416] = t + (32 * _769) + (32 * _811) + -_505 + (-6 * ceil32(return_data.size)) - 224
        _835 = mem[_505 + (4 * ceil32(return_data.size)) + 192]
        mem[t + (32 * _769) + (32 * _811) + 64] = mem[_505 + (4 * ceil32(return_data.size)) + 192]
        mem[t + (32 * _769) + (32 * _811) + 96 len 32 * _835] = mem[_505 + (4 * ceil32(return_data.size)) + 224 len 32 * _835]
        return memory
          from mem[64]
           len t + (32 * _769) + (32 * _811) + (32 * _835) + -mem[64] + 96
    mem[_274 + _270 + ceil32(return_data.size) + 32] = 0
    mem[(2 * ceil32(return_data.size)) + 256] = _270 + ceil32(return_data.size)
    _507 = mem[64]
    mem[mem[64]] = 2
    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64] + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 0 >= mem[_507]:
        revert with 'NH{q', 50
    mem[_507 + 32] = ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x313ce567 with:
            gas gas_remaining wei
    mem[_507 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _507 + (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 1 >= mem[_507]:
        revert with 'NH{q', 50
    mem[_507 + 64] = ext_call.return_data[31 len 1]
    mem[_507 + (2 * ceil32(return_data.size)) + 96] = 2
    mem[_507 + (2 * ceil32(return_data.size)) + 196] = address(arg1)
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[_507 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_507 + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    mem[_507 + (4 * ceil32(return_data.size)) + 196] = address(arg1)
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x70a08231 with:
            gas gas_remaining wei
           args mem[_507 + (4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_507 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[_507 + (4 * ceil32(return_data.size)) + 192] = 2
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    mem[_507 + (4 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _507 + (6 * ceil32(return_data.size)) + 288
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[_507 + (4 * ceil32(return_data.size)) + 256] = ext_call.return_data[50 len 14]
    mem[_507 + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[18 len 14]
    mem[_507 + (6 * ceil32(return_data.size)) + 288] = 160
    mem[_507 + (6 * ceil32(return_data.size)) + 448] = 2
    idx = 0
    s = 128
    t = _507 + (6 * ceil32(return_data.size)) + 480
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_507 + (6 * ceil32(return_data.size)) + 320] = 256
    mem[_507 + (6 * ceil32(return_data.size)) + 544] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 224
    t = _507 + (6 * ceil32(return_data.size)) + (32 * mem[96]) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 512
    u = _507 + (6 * ceil32(return_data.size)) + (32 * mem[96]) + 512
    while idx < 2:
        mem[u] = t + -_507 + (-6 * ceil32(return_data.size)) - 576
        _764 = mem[s]
        _772 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _772:
            mem[v + t + 32] = mem[v + _764 + 32]
            v = v + 32
            continue 
        if ceil32(_772) > _772:
            mem[_772 + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_772) + t + 32
        u = u + 32
        continue 
    mem[_507 + (6 * ceil32(return_data.size)) + 352] = t + -_507 + (-6 * ceil32(return_data.size)) - 288
    _771 = mem[_507]
    mem[t] = mem[_507]
    mem[t + 32 len 32 * _771] = mem[_507 + 32 len 32 * _771]
    mem[_507 + (6 * ceil32(return_data.size)) + 384] = t + (32 * _771) + -_507 + (-6 * ceil32(return_data.size)) - 256
    _812 = mem[_507 + (2 * ceil32(return_data.size)) + 96]
    mem[t + (32 * _771) + 32] = mem[_507 + (2 * ceil32(return_data.size)) + 96]
    mem[t + (32 * _771) + 64 len 32 * _812] = mem[_507 + (2 * ceil32(return_data.size)) + 128 len 32 * _812]
    mem[_507 + (6 * ceil32(return_data.size)) + 416] = t + (32 * _771) + (32 * _812) + -_507 + (-6 * ceil32(return_data.size)) - 224
    _836 = mem[_507 + (4 * ceil32(return_data.size)) + 192]
    mem[t + (32 * _771) + (32 * _812) + 64] = mem[_507 + (4 * ceil32(return_data.size)) + 192]
    mem[t + (32 * _771) + (32 * _812) + 96 len 32 * _836] = mem[_507 + (4 * ceil32(return_data.size)) + 224 len 32 * _836]
    return memory
      from mem[64]
       len t + (32 * _771) + (32 * _812) + (32 * _836) + -mem[64] + 96
}



}
