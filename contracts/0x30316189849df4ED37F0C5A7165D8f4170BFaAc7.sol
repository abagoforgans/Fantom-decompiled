contract main {




// =====================  Runtime code  =====================


address owner;
address wnativeAddress;
address routerAddress;
address gtonAddress;

function wnative() {
    return wnativeAddress
}

function owner() {
    return owner
}

function gton() {
    return gtonAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function reclaimNative(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, ''
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function lock(string arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(wnativeAddress)
    call wnativeAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = routerAddress
    mem[132] = msg.value
    require ext_code.size(wnativeAddress)
    call wnativeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, msg.value
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = wnativeAddress
    mem[ceil32(return_data.size) + 160] = gtonAddress
    if 3600 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = msg.value
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 3600
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args msg.value, 0, 160, address(this.address), block.timestamp + 3600, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _32 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _33 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 32 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 224
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    require return_data.size >= _32 + (32 * _33) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _33] = mem[ceil32(return_data.size) + _32 + 224 len 32 * _33]
    _47 = mem[64]
    mem[mem[64] len arg2.length] = arg2[all]
    mem[arg2.length + mem[64]] = 0
    _49 = sha3(mem[mem[64] len arg2.length + _47 - mem[64]])
    _50 = mem[64]
    mem[mem[64] len arg1.length] = arg1[all]
    mem[arg1.length + mem[64]] = 0
    _52 = sha3(mem[mem[64] len arg1.length + _50 - mem[64]])
    if 0 >= _33:
        revert with 0, 50
    _54 = mem[(2 * ceil32(return_data.size)) + 224]
    _55 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = arg1.length
    mem[mem[64] + 128 len arg1.length] = arg1[all]
    mem[mem[64] + arg1.length + 128] = 0
    mem[mem[64] + 32] = ceil32(arg1.length) + 128
    mem[_55 + ceil32(arg1.length) + 128] = arg2.length
    mem[_55 + ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[_55 + ceil32(arg1.length) + arg2.length + 160] = 0
    mem[_55 + 64] = _54
    emit Lock(string arg1, bytes arg2, string arg3, bytes arg4, uint256 arg5):
              mem[mem[64] len _55 + ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 160],
              _52,
              _49,
}



}
