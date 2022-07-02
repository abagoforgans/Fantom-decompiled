contract main {




// =====================  Runtime code  =====================


#
#  - sub_7c40f841(?)
#
address owner;
address wethAddress;
address _routerAddress;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address sub_0091be55Address;
uint256 stor4; offset 32
uint256 sub_aca5e77c;

function sub_0091be55(?) {
    return sub_0091be55Address
}

function weth() {
    return wethAddress
}

function owner() {
    return owner
}

function isLocked() {
    return bool(uint8(stor3.field_168))
}

function sub_aca5e77c(?) {
    return sub_aca5e77c
}

function sub_b0ff718b(?) {
    return bool(uint8(stor3.field_160))
}

function _router() {
    return _routerAddress
}

function _fallback() payable {
    emit ETHReceived(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b29f83d0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_aca5e77c = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _routerAddress = arg1
}

function sub_11249b98(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor3.field_168) = Mask(88, 0, arg1)
}

function sub_1fcacf86(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
}

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f282b833(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(wethAddress)
    staticcall wethAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    call wethAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function emergencyWithdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
}

function sub_3c1c4035(?) payable {
    require calldata.size - 4 >= 192
    if uint8(stor3.field_168):
        revert with 0, 'Sniper: Locked!'
    mem[96] = 2
    mem[128] = arg3
    mem[160] = sub_0091be55Address
    require ext_code.size(wethAddress)
    call wethAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg5
    if arg2 == wethAddress:
        mem[192] = 2
        mem[64] = 288
        mem[224] = wethAddress
        mem[256] = arg1
        idx = 0
        while uint32(idx) < uint32(arg5 + 1):
            if uint32(idx):
                require 0 < mem[96]
                _581 = mem[128]
                _582 = mem[64]
                mem[mem[64] + 36] = arg4
                mem[mem[64] + 68] = msg.value - sub_aca5e77c / arg5
                mem[mem[64] + 132] = address(_581)
                mem[mem[64] + 164] = block.timestamp
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = mem[192]
                _584 = mem[192]
                s = 0
                while s < 32 * mem[192]:
                    mem[mem[64] + s + 228] = mem[s + 224]
                    s = s + 32
                    continue 
                _1190 = mem[64]
                mem[mem[64]] = (32 * mem[192]) + _582 + -mem[64] + 196
                mem[64] = (32 * _584) + _582 + 228
                mem[_1190 + 32] = mem[_1190 + 36 len 28] or 0x8803dbee00000000000000000000000000000000000000000000000000000000
                _1193 = mem[_1190]
                t = _1190 + 32
                u = mem[64]
                s = mem[_1190]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_1190])] = mem[_1190 + floor32(mem[_1190]) + -(mem[_1190] % 32) + 64 len mem[_1190] % 32] or Mask(8 * -(mem[_1190] % 32) + 32, -(8 * -(mem[_1190] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1190])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1193 + (32 * _584) + _582 + -mem[64] + 224]
                if not return_data.size:
                    if not ext_call.success:
                        _1779 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        _1781 = mem[96]
                        s = 0
                        while s < _1781:
                            mem[_1779 + s + 64] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not _1781 % 32:
                            emit StringFailure(mem[mem[64] len _1781 + _1779 + -mem[64] + 64]);
                        else:
                            mem[floor32(_1781) + _1779 + 64] = mem[floor32(_1781) + _1779 + -(_1781 % 32) + 96 len _1781 % 32]
                            emit StringFailure(mem[mem[64] len floor32(_1781) + _1779 + -mem[64] + 96]);
                else:
                    _1773 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1773] = return_data.size
                    mem[_1773 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        _1782 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        s = 0
                        while s < return_data.size:
                            mem[_1782 + s + 64] = mem[_1773 + s + 32]
                            s = s + 32
                            continue 
                        if not return_data.size % 32:
                            emit StringFailure(mem[mem[64] len return_data.size + _1782 + -mem[64] + 64]);
                        else:
                            mem[floor32(return_data.size) + _1782 + 64] = mem[floor32(return_data.size) + _1782 + -(return_data.size % 32) + 96 len return_data.size % 32]
                            emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1782 + -mem[64] + 96]);
                idx = idx + 1
                continue 
            if not arg6:
                idx = idx + 1
                continue 
            if arg2 == wethAddress:
                _606 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_606]
                mem[_606 + 32] = wethAddress
                require 1 < mem[_606]
                mem[_606 + 64] = arg1
                mem[_606 + 96] = 2
                mem[64] = _606 + 192
                mem[_606 + 128] = arg1
                mem[_606 + 160] = wethAddress
                mem[_606 + 228] = sub_aca5e77c
                mem[_606 + 260] = 0
                mem[_606 + 324] = this.address
                mem[_606 + 356] = block.timestamp
                mem[_606 + 292] = 160
                mem[_606 + 388] = mem[_606]
                _673 = mem[_606]
                s = 0
                while s < 32 * mem[_606]:
                    mem[_606 + s + 420] = mem[_606 + s + 32]
                    s = s + 32
                    continue 
                mem[_606 + 192] = (32 * mem[_606]) + 196
                mem[64] = (32 * mem[_606]) + _606 + 420
                mem[_606 + 224] = stor4 or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _1198 = mem[_606 + 192]
                t = _606 + 224
                u = mem[64]
                s = mem[_606 + 192]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_606 + 192])] = mem[_606 + floor32(mem[_606 + 192]) + -(mem[_606 + 192] % 32) + 256 len mem[_606 + 192] % 32] or Mask(8 * -(mem[_606 + 192] % 32) + 32, -(8 * -(mem[_606 + 192] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_606 + 192])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1198 + (32 * _673) + _606 + -mem[64] + 416]
                if not return_data.size:
                    if not ext_call.success:
                        _1787 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        _1789 = mem[96]
                        s = 0
                        while s < _1789:
                            mem[_1787 + s + 64] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not _1789 % 32:
                            emit StringFailure(mem[mem[64] len _1789 + _1787 + -mem[64] + 64]);
                        else:
                            mem[floor32(_1789) + _1787 + 64] = mem[floor32(_1789) + _1787 + -(_1789 % 32) + 96 len _1789 % 32]
                            emit StringFailure(mem[mem[64] len floor32(_1789) + _1787 + -mem[64] + 96]);
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args _routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1952 = mem[64]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 132] = arg3
                    mem[mem[64] + 164] = block.timestamp
                    mem[mem[64] + 100] = 160
                    mem[mem[64] + 196] = mem[_606 + 96]
                    _1954 = mem[_606 + 96]
                    s = 0
                    while s < 32 * _1954:
                        mem[mem[64] + s + 228] = mem[_606 + s + 128]
                        s = s + 32
                        continue 
                    _2273 = mem[64]
                    mem[mem[64]] = (32 * _1954) + 196
                    mem[64] = (32 * _1954) + mem[64] + 228
                    mem[_2273 + 32] = mem[_2273 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                    _2276 = mem[_2273]
                    t = _2273 + 32
                    u = (32 * _1954) + _1952 + 228
                    s = mem[_2273]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[(32 * _1954) + _1952 + floor32(mem[_2273]) + 228] = mem[_2273 + -(mem[_2273] % 32) + floor32(mem[_2273]) + 64 len mem[_2273] % 32] or Mask(8 * -(mem[_2273] % 32) + 32, -(8 * -(mem[_2273] % 32) + 32) + 256, mem[(32 * _1954) + _1952 + floor32(mem[_2273]) + 228])
                    call _routerAddress.mem[(32 * _1954) + _1952 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _1954) + _1952 + 232 len _2276 - 4]
                    if not return_data.size:
                        mem[(32 * _1954) + _1952 + 228] = 32
                        if ext_call.success:
                            mem[(32 * _1954) + _1952 + 260] = 15
                            mem[(32 * _1954) + _1952 + 292] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        mem[(32 * _1954) + _1952 + 260] = mem[96]
                        idx = 0
                        while idx < mem[96]:
                            mem[(32 * _1954) + _1952 + idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if not mem[96] % 32:
                            emit StringFailure(mem[mem[64] len mem[96] + (32 * _1954) + _1952 + -mem[64] + 292]);
                        else:
                            mem[floor32(mem[96]) + (32 * _1954) + _1952 + 292] = mem[floor32(mem[96]) + (32 * _1954) + _1952 + -(mem[96] % 32) + 324 len mem[96] % 32]
                            emit StringFailure(mem[mem[64] len floor32(mem[96]) + (32 * _1954) + _1952 + -mem[64] + 324]);
                    else:
                        mem[64] = (32 * _1954) + _1952 + ceil32(return_data.size) + 229
                        mem[(32 * _1954) + _1952 + 228] = return_data.size
                        mem[(32 * _1954) + _1952 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1954) + _1952 + ceil32(return_data.size) + 229] = 32
                        if ext_call.success:
                            mem[(32 * _1954) + _1952 + ceil32(return_data.size) + 261] = 15
                            mem[(32 * _1954) + _1952 + ceil32(return_data.size) + 293] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        mem[(32 * _1954) + _1952 + ceil32(return_data.size) + 261] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[(32 * _1954) + _1952 + ceil32(return_data.size) + idx + 293] = mem[(32 * _1954) + _1952 + idx + 260]
                            idx = idx + 32
                            continue 
                        emit StringFailure(Array(len=return_data.size, data=mem[(32 * _1954) + _1952 + ceil32(return_data.size) + 293 len return_data.size]));
                else:
                    _1774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1774] = return_data.size
                    mem[_1774 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        _1792 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        s = 0
                        while s < return_data.size:
                            mem[_1792 + s + 64] = mem[_1774 + s + 32]
                            s = s + 32
                            continue 
                        if not return_data.size % 32:
                            emit StringFailure(mem[mem[64] len return_data.size + _1792 + -mem[64] + 64]);
                        else:
                            mem[floor32(return_data.size) + _1792 + 64] = mem[floor32(return_data.size) + _1792 + -(return_data.size % 32) + 96 len return_data.size % 32]
                            emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1792 + -mem[64] + 96]);
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args _routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1956 = mem[64]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 132] = arg3
                    mem[mem[64] + 164] = block.timestamp
                    mem[mem[64] + 100] = 160
                    mem[mem[64] + 196] = mem[_606 + 96]
                    _1958 = mem[_606 + 96]
                    s = 0
                    while s < 32 * _1958:
                        mem[mem[64] + s + 228] = mem[_606 + s + 128]
                        s = s + 32
                        continue 
                    _2279 = mem[64]
                    mem[mem[64]] = (32 * _1958) + 196
                    mem[64] = (32 * _1958) + mem[64] + 228
                    mem[_2279 + 32] = mem[_2279 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                    _2282 = mem[_2279]
                    t = _2279 + 32
                    u = (32 * _1958) + _1956 + 228
                    s = mem[_2279]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[(32 * _1958) + _1956 + floor32(mem[_2279]) + 228] = mem[_2279 + -(mem[_2279] % 32) + floor32(mem[_2279]) + 64 len mem[_2279] % 32] or Mask(8 * -(mem[_2279] % 32) + 32, -(8 * -(mem[_2279] % 32) + 32) + 256, mem[(32 * _1958) + _1956 + floor32(mem[_2279]) + 228])
                    call _routerAddress.mem[(32 * _1958) + _1956 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _1958) + _1956 + 232 len _2282 - 4]
                    if not return_data.size:
                        mem[(32 * _1958) + _1956 + 228] = 32
                        if ext_call.success:
                            mem[(32 * _1958) + _1956 + 260] = 15
                            mem[(32 * _1958) + _1956 + 292] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        mem[(32 * _1958) + _1956 + 260] = mem[96]
                        idx = 0
                        while idx < mem[96]:
                            mem[(32 * _1958) + _1956 + idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if not mem[96] % 32:
                            emit StringFailure(mem[mem[64] len mem[96] + (32 * _1958) + _1956 + -mem[64] + 292]);
                        else:
                            mem[floor32(mem[96]) + (32 * _1958) + _1956 + 292] = mem[floor32(mem[96]) + (32 * _1958) + _1956 + -(mem[96] % 32) + 324 len mem[96] % 32]
                            emit StringFailure(mem[mem[64] len floor32(mem[96]) + (32 * _1958) + _1956 + -mem[64] + 324]);
                    else:
                        mem[64] = (32 * _1958) + _1956 + ceil32(return_data.size) + 229
                        mem[(32 * _1958) + _1956 + 228] = return_data.size
                        mem[(32 * _1958) + _1956 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1958) + _1956 + ceil32(return_data.size) + 229] = 32
                        if ext_call.success:
                            mem[(32 * _1958) + _1956 + ceil32(return_data.size) + 261] = 15
                            mem[(32 * _1958) + _1956 + ceil32(return_data.size) + 293] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        mem[(32 * _1958) + _1956 + ceil32(return_data.size) + 261] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[(32 * _1958) + _1956 + ceil32(return_data.size) + idx + 293] = mem[(32 * _1958) + _1956 + idx + 260]
                            idx = idx + 32
                            continue 
                        emit StringFailure(Array(len=return_data.size, data=mem[(32 * _1958) + _1956 + ceil32(return_data.size) + 293 len return_data.size]));
            else:
                _607 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_607]
                mem[_607 + 32] = wethAddress
                require 1 < mem[_607]
                mem[_607 + 64] = arg2
                require 2 < mem[_607]
                mem[_607 + 96] = arg1
                mem[_607 + 128] = 3
                mem[64] = _607 + 256
                mem[_607 + 160] = arg1
                mem[_607 + 192] = arg2
                mem[_607 + 224] = wethAddress
                mem[_607 + 292] = sub_aca5e77c
                mem[_607 + 324] = 0
                mem[_607 + 388] = this.address
                mem[_607 + 420] = block.timestamp
                mem[_607 + 356] = 160
                mem[_607 + 452] = mem[_607]
                _686 = mem[_607]
                s = 0
                while s < 32 * mem[_607]:
                    mem[_607 + s + 484] = mem[_607 + s + 32]
                    s = s + 32
                    continue 
                mem[_607 + 256] = (32 * mem[_607]) + 196
                mem[64] = (32 * mem[_607]) + _607 + 484
                mem[_607 + 288] = stor4 or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _1203 = mem[_607 + 256]
                t = _607 + 288
                u = mem[64]
                s = mem[_607 + 256]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_607 + 256])] = mem[_607 + floor32(mem[_607 + 256]) + -(mem[_607 + 256] % 32) + 320 len mem[_607 + 256] % 32] or Mask(8 * -(mem[_607 + 256] % 32) + 32, -(8 * -(mem[_607 + 256] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_607 + 256])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1203 + (32 * _686) + _607 + -mem[64] + 480]
                if not return_data.size:
                    if not ext_call.success:
                        _1797 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        _1799 = mem[96]
                        s = 0
                        while s < _1799:
                            mem[_1797 + s + 64] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not _1799 % 32:
                            emit StringFailure(mem[mem[64] len _1799 + _1797 + -mem[64] + 64]);
                        else:
                            mem[floor32(_1799) + _1797 + 64] = mem[floor32(_1799) + _1797 + -(_1799 % 32) + 96 len _1799 % 32]
                            emit StringFailure(mem[mem[64] len floor32(_1799) + _1797 + -mem[64] + 96]);
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args _routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1960 = mem[64]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 132] = arg3
                    mem[mem[64] + 164] = block.timestamp
                    mem[mem[64] + 100] = 160
                    mem[mem[64] + 196] = mem[_607 + 128]
                    _1962 = mem[_607 + 128]
                    s = 0
                    while s < 32 * _1962:
                        mem[mem[64] + s + 228] = mem[_607 + s + 160]
                        s = s + 32
                        continue 
                    _2285 = mem[64]
                    mem[mem[64]] = (32 * _1962) + _1960 + -mem[64] + 196
                    mem[64] = (32 * _1962) + _1960 + 228
                    mem[_2285 + 32] = mem[_2285 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                    _2288 = mem[_2285]
                    t = _2285 + 32
                    u = mem[64]
                    s = mem[_2285]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2285])] = mem[_2285 + floor32(mem[_2285]) + -(mem[_2285] % 32) + 64 len mem[_2285] % 32] or Mask(8 * -(mem[_2285] % 32) + 32, -(8 * -(mem[_2285] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2285])])
                    call _routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2288 + (32 * _1962) + _1960 + -mem[64] + 224]
                    if not return_data.size:
                        if ext_call.success:
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = 15
                            mem[mem[64] + 64] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        _2691 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        _2693 = mem[96]
                        idx = 0
                        while idx < _2693:
                            mem[_2691 + idx + 64] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if not _2693 % 32:
                            emit StringFailure(mem[mem[64] len _2693 + _2691 + -mem[64] + 64]);
                        else:
                            mem[floor32(_2693) + _2691 + 64] = mem[floor32(_2693) + _2691 + -(_2693 % 32) + 96 len _2693 % 32]
                            emit StringFailure(mem[mem[64] len floor32(_2693) + _2691 + -mem[64] + 96]);
                    else:
                        _2673 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2673] = return_data.size
                        mem[_2673 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = 15
                            mem[mem[64] + 64] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        _2694 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[_2694 + idx + 64] = mem[_2673 + idx + 32]
                            idx = idx + 32
                            continue 
                        if not return_data.size % 32:
                            emit StringFailure(mem[mem[64] len return_data.size + _2694 + -mem[64] + 64]);
                        else:
                            mem[floor32(return_data.size) + _2694 + 64] = mem[floor32(return_data.size) + _2694 + -(return_data.size % 32) + 96 len return_data.size % 32]
                            emit StringFailure(mem[mem[64] len floor32(return_data.size) + _2694 + -mem[64] + 96]);
                else:
                    _1775 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1775] = return_data.size
                    mem[_1775 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        _1802 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        s = 0
                        while s < return_data.size:
                            mem[_1802 + s + 64] = mem[_1775 + s + 32]
                            s = s + 32
                            continue 
                        if not return_data.size % 32:
                            emit StringFailure(mem[mem[64] len return_data.size + _1802 + -mem[64] + 64]);
                        else:
                            mem[floor32(return_data.size) + _1802 + 64] = mem[floor32(return_data.size) + _1802 + -(return_data.size % 32) + 96 len return_data.size % 32]
                            emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1802 + -mem[64] + 96]);
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args _routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1964 = mem[64]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 132] = arg3
                    mem[mem[64] + 164] = block.timestamp
                    mem[mem[64] + 100] = 160
                    mem[mem[64] + 196] = mem[_607 + 128]
                    _1966 = mem[_607 + 128]
                    s = 0
                    while s < 32 * _1966:
                        mem[mem[64] + s + 228] = mem[_607 + s + 160]
                        s = s + 32
                        continue 
                    _2291 = mem[64]
                    mem[mem[64]] = (32 * _1966) + _1964 + -mem[64] + 196
                    mem[64] = (32 * _1966) + _1964 + 228
                    mem[_2291 + 32] = mem[_2291 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                    _2294 = mem[_2291]
                    t = _2291 + 32
                    u = mem[64]
                    s = mem[_2291]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2291])] = mem[_2291 + floor32(mem[_2291]) + -(mem[_2291] % 32) + 64 len mem[_2291] % 32] or Mask(8 * -(mem[_2291] % 32) + 32, -(8 * -(mem[_2291] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2291])])
                    call _routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2294 + (32 * _1966) + _1964 + -mem[64] + 224]
                    if not return_data.size:
                        if ext_call.success:
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = 15
                            mem[mem[64] + 64] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        _2697 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        _2699 = mem[96]
                        idx = 0
                        while idx < _2699:
                            mem[_2697 + idx + 64] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if not _2699 % 32:
                            emit StringFailure(mem[mem[64] len _2699 + _2697 + -mem[64] + 64]);
                        else:
                            mem[floor32(_2699) + _2697 + 64] = mem[floor32(_2699) + _2697 + -(_2699 % 32) + 96 len _2699 % 32]
                            emit StringFailure(mem[mem[64] len floor32(_2699) + _2697 + -mem[64] + 96]);
                    else:
                        _2674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2674] = return_data.size
                        mem[_2674 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = 15
                            mem[mem[64] + 64] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        _2700 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[_2700 + idx + 64] = mem[_2674 + idx + 32]
                            idx = idx + 32
                            continue 
                        if not return_data.size % 32:
                            emit StringFailure(mem[mem[64] len return_data.size + _2700 + -mem[64] + 64]);
                        else:
                            mem[floor32(return_data.size) + _2700 + 64] = mem[floor32(return_data.size) + _2700 + -(return_data.size % 32) + 96 len return_data.size % 32]
                            emit StringFailure(mem[mem[64] len floor32(return_data.size) + _2700 + -mem[64] + 96]);
            revert with 0, 'Honeypot: Cant Sell'
        _573 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        _575 = mem[96]
        mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[96] + 32]
        mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
        revert with memory
          from mem[64]
           len floor32(_575) + _573 + -mem[64] + 100
    mem[192] = 3
    mem[64] = 320
    mem[224] = wethAddress
    mem[256] = arg2
    mem[288] = arg1
    idx = 0
    while uint32(idx) < uint32(arg5 + 1):
        if uint32(idx):
            require 0 < mem[96]
            _585 = mem[128]
            _586 = mem[64]
            mem[mem[64] + 36] = arg4
            mem[mem[64] + 68] = msg.value - sub_aca5e77c / arg5
            mem[mem[64] + 132] = address(_585)
            mem[mem[64] + 164] = block.timestamp
            mem[mem[64] + 100] = 160
            mem[mem[64] + 196] = mem[192]
            _588 = mem[192]
            s = 0
            while s < 32 * mem[192]:
                mem[mem[64] + s + 228] = mem[s + 224]
                s = s + 32
                continue 
            _1206 = mem[64]
            mem[mem[64]] = (32 * mem[192]) + _586 + -mem[64] + 196
            mem[64] = (32 * _588) + _586 + 228
            mem[_1206 + 32] = mem[_1206 + 36 len 28] or 0x8803dbee00000000000000000000000000000000000000000000000000000000
            _1209 = mem[_1206]
            t = _1206 + 32
            u = mem[64]
            s = mem[_1206]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_1206])] = mem[_1206 + floor32(mem[_1206]) + -(mem[_1206] % 32) + 64 len mem[_1206] % 32] or Mask(8 * -(mem[_1206] % 32) + 32, -(8 * -(mem[_1206] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1206])])
            call _routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1209 + (32 * _588) + _586 + -mem[64] + 224]
            if not return_data.size:
                if not ext_call.success:
                    _1805 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _1807 = mem[96]
                    s = 0
                    while s < _1807:
                        mem[_1805 + s + 64] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not _1807 % 32:
                        emit StringFailure(mem[mem[64] len _1807 + _1805 + -mem[64] + 64]);
                    else:
                        mem[floor32(_1807) + _1805 + 64] = mem[floor32(_1807) + _1805 + -(_1807 % 32) + 96 len _1807 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_1807) + _1805 + -mem[64] + 96]);
            else:
                _1776 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1776] = return_data.size
                mem[_1776 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _1808 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    s = 0
                    while s < return_data.size:
                        mem[_1808 + s + 64] = mem[_1776 + s + 32]
                        s = s + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _1808 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _1808 + 64] = mem[floor32(return_data.size) + _1808 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1808 + -mem[64] + 96]);
            idx = idx + 1
            continue 
        if not arg6:
            idx = idx + 1
            continue 
        if arg2 == wethAddress:
            _609 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_609]
            mem[_609 + 32] = wethAddress
            require 1 < mem[_609]
            mem[_609 + 64] = arg1
            mem[_609 + 96] = 2
            mem[64] = _609 + 192
            mem[_609 + 128] = arg1
            mem[_609 + 160] = wethAddress
            mem[_609 + 228] = sub_aca5e77c
            mem[_609 + 260] = 0
            mem[_609 + 324] = this.address
            mem[_609 + 356] = block.timestamp
            mem[_609 + 292] = 160
            mem[_609 + 388] = mem[_609]
            _677 = mem[_609]
            s = 0
            while s < 32 * mem[_609]:
                mem[_609 + s + 420] = mem[_609 + s + 32]
                s = s + 32
                continue 
            mem[_609 + 192] = (32 * mem[_609]) + 196
            mem[64] = (32 * mem[_609]) + _609 + 420
            mem[_609 + 224] = stor4 or 0x38ed173900000000000000000000000000000000000000000000000000000000
            _1214 = mem[_609 + 192]
            t = _609 + 224
            u = mem[64]
            s = mem[_609 + 192]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_609 + 192])] = mem[_609 + floor32(mem[_609 + 192]) + -(mem[_609 + 192] % 32) + 256 len mem[_609 + 192] % 32] or Mask(8 * -(mem[_609 + 192] % 32) + 32, -(8 * -(mem[_609 + 192] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_609 + 192])])
            call _routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1214 + (32 * _677) + _609 + -mem[64] + 416]
            if not return_data.size:
                if not ext_call.success:
                    _1813 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _1815 = mem[96]
                    s = 0
                    while s < _1815:
                        mem[_1813 + s + 64] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not _1815 % 32:
                        emit StringFailure(mem[mem[64] len _1815 + _1813 + -mem[64] + 64]);
                    else:
                        mem[floor32(_1815) + _1813 + 64] = mem[floor32(_1815) + _1813 + -(_1815 % 32) + 96 len _1815 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_1815) + _1813 + -mem[64] + 96]);
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 15
                    mem[mem[64] + 64] = 'HoneypotPassed!'
                    emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                    idx = idx + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1968 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 132] = arg3
                mem[mem[64] + 164] = block.timestamp
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = mem[_609 + 96]
                _1970 = mem[_609 + 96]
                s = 0
                while s < 32 * _1970:
                    mem[mem[64] + s + 228] = mem[_609 + s + 128]
                    s = s + 32
                    continue 
                _2299 = mem[64]
                mem[mem[64]] = (32 * _1970) + 196
                mem[64] = (32 * _1970) + mem[64] + 228
                mem[_2299 + 32] = mem[_2299 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _2302 = mem[_2299]
                t = _2299 + 32
                u = mem[64]
                s = mem[_2299]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_2299])] = mem[_2299 + floor32(mem[_2299]) + -(mem[_2299] % 32) + 64 len mem[_2299] % 32] or Mask(8 * -(mem[_2299] % 32) + 32, -(8 * -(mem[_2299] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2299])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2302 + (32 * _1970) + _1968 + -mem[64] + 224]
                if not return_data.size:
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2703 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _2705 = mem[96]
                    idx = 0
                    while idx < _2705:
                        mem[_2703 + idx + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if not _2705 % 32:
                        emit StringFailure(mem[mem[64] len _2705 + _2703 + -mem[64] + 64]);
                    else:
                        mem[floor32(_2705) + _2703 + 64] = mem[floor32(_2705) + _2703 + -(_2705 % 32) + 96 len _2705 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_2705) + _2703 + -mem[64] + 96]);
                else:
                    _2675 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2675] = return_data.size
                    mem[_2675 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2706 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[_2706 + idx + 64] = mem[_2675 + idx + 32]
                        idx = idx + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _2706 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _2706 + 64] = mem[floor32(return_data.size) + _2706 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _2706 + -mem[64] + 96]);
            else:
                _1777 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1777] = return_data.size
                mem[_1777 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _1818 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    s = 0
                    while s < return_data.size:
                        mem[_1818 + s + 64] = mem[_1777 + s + 32]
                        s = s + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _1818 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _1818 + 64] = mem[floor32(return_data.size) + _1818 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1818 + -mem[64] + 96]);
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 15
                    mem[mem[64] + 64] = 'HoneypotPassed!'
                    emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                    idx = idx + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1972 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 132] = arg3
                mem[mem[64] + 164] = block.timestamp
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = mem[_609 + 96]
                _1974 = mem[_609 + 96]
                s = 0
                while s < 32 * _1974:
                    mem[mem[64] + s + 228] = mem[_609 + s + 128]
                    s = s + 32
                    continue 
                _2305 = mem[64]
                mem[mem[64]] = (32 * _1974) + _1972 + -mem[64] + 196
                mem[64] = (32 * _1974) + _1972 + 228
                mem[_2305 + 32] = mem[_2305 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _2308 = mem[_2305]
                t = _2305 + 32
                u = mem[64]
                s = mem[_2305]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_2305])] = mem[_2305 + floor32(mem[_2305]) + -(mem[_2305] % 32) + 64 len mem[_2305] % 32] or Mask(8 * -(mem[_2305] % 32) + 32, -(8 * -(mem[_2305] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2305])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2308 + (32 * _1974) + _1972 + -mem[64] + 224]
                if not return_data.size:
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2709 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _2711 = mem[96]
                    idx = 0
                    while idx < _2711:
                        mem[_2709 + idx + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if not _2711 % 32:
                        emit StringFailure(mem[mem[64] len _2711 + _2709 + -mem[64] + 64]);
                    else:
                        mem[floor32(_2711) + _2709 + 64] = mem[floor32(_2711) + _2709 + -(_2711 % 32) + 96 len _2711 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_2711) + _2709 + -mem[64] + 96]);
                else:
                    _2676 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2676] = return_data.size
                    mem[_2676 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2712 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[_2712 + idx + 64] = mem[_2676 + idx + 32]
                        idx = idx + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _2712 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _2712 + 64] = mem[floor32(return_data.size) + _2712 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _2712 + -mem[64] + 96]);
        else:
            _610 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_610]
            mem[_610 + 32] = wethAddress
            require 1 < mem[_610]
            mem[_610 + 64] = arg2
            require 2 < mem[_610]
            mem[_610 + 96] = arg1
            mem[_610 + 128] = 3
            mem[64] = _610 + 256
            mem[_610 + 160] = arg1
            mem[_610 + 192] = arg2
            mem[_610 + 224] = wethAddress
            mem[_610 + 292] = sub_aca5e77c
            mem[_610 + 324] = 0
            mem[_610 + 388] = this.address
            mem[_610 + 420] = block.timestamp
            mem[_610 + 356] = 160
            mem[_610 + 452] = mem[_610]
            _694 = mem[_610]
            s = 0
            while s < 32 * mem[_610]:
                mem[_610 + s + 484] = mem[_610 + s + 32]
                s = s + 32
                continue 
            mem[_610 + 256] = (32 * mem[_610]) + 196
            mem[64] = (32 * mem[_610]) + _610 + 484
            mem[_610 + 288] = stor4 or 0x38ed173900000000000000000000000000000000000000000000000000000000
            _1219 = mem[_610 + 256]
            t = _610 + 288
            u = mem[64]
            s = mem[_610 + 256]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_610 + 256])] = mem[_610 + floor32(mem[_610 + 256]) + -(mem[_610 + 256] % 32) + 320 len mem[_610 + 256] % 32] or Mask(8 * -(mem[_610 + 256] % 32) + 32, -(8 * -(mem[_610 + 256] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_610 + 256])])
            call _routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1219 + (32 * _694) + _610 + -mem[64] + 480]
            if not return_data.size:
                if not ext_call.success:
                    _1823 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _1825 = mem[96]
                    s = 0
                    while s < _1825:
                        mem[_1823 + s + 64] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not _1825 % 32:
                        emit StringFailure(mem[mem[64] len _1825 + _1823 + -mem[64] + 64]);
                    else:
                        mem[floor32(_1825) + _1823 + 64] = mem[floor32(_1825) + _1823 + -(_1825 % 32) + 96 len _1825 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_1825) + _1823 + -mem[64] + 96]);
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 15
                    mem[mem[64] + 64] = 'HoneypotPassed!'
                    emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                    idx = idx + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1976 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 132] = arg3
                mem[mem[64] + 164] = block.timestamp
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = mem[_610 + 128]
                _1978 = mem[_610 + 128]
                s = 0
                while s < 32 * _1978:
                    mem[mem[64] + s + 228] = mem[_610 + s + 160]
                    s = s + 32
                    continue 
                _2311 = mem[64]
                mem[mem[64]] = (32 * _1978) + 196
                mem[64] = (32 * _1978) + mem[64] + 228
                mem[_2311 + 32] = mem[_2311 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _2314 = mem[_2311]
                t = _2311 + 32
                u = (32 * _1978) + _1976 + 228
                s = mem[_2311]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[(32 * _1978) + _1976 + floor32(mem[_2311]) + 228] = mem[_2311 + -(mem[_2311] % 32) + floor32(mem[_2311]) + 64 len mem[_2311] % 32] or Mask(8 * -(mem[_2311] % 32) + 32, -(8 * -(mem[_2311] % 32) + 32) + 256, mem[(32 * _1978) + _1976 + floor32(mem[_2311]) + 228])
                call _routerAddress.mem[(32 * _1978) + _1976 + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * _1978) + _1976 + 232 len _2314 - 4]
                if not return_data.size:
                    mem[(32 * _1978) + _1976 + 228] = 32
                    if ext_call.success:
                        mem[(32 * _1978) + _1976 + 260] = 15
                        mem[(32 * _1978) + _1976 + 292] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    mem[(32 * _1978) + _1976 + 260] = mem[96]
                    idx = 0
                    while idx < mem[96]:
                        mem[(32 * _1978) + _1976 + idx + 292] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if not mem[96] % 32:
                        emit StringFailure(mem[mem[64] len mem[96] + (32 * _1978) + _1976 + -mem[64] + 292]);
                    else:
                        mem[floor32(mem[96]) + (32 * _1978) + _1976 + 292] = mem[floor32(mem[96]) + (32 * _1978) + _1976 + -(mem[96] % 32) + 324 len mem[96] % 32]
                        emit StringFailure(mem[mem[64] len floor32(mem[96]) + (32 * _1978) + _1976 + -mem[64] + 324]);
                else:
                    mem[64] = (32 * _1978) + _1976 + ceil32(return_data.size) + 229
                    mem[(32 * _1978) + _1976 + 228] = return_data.size
                    mem[(32 * _1978) + _1976 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1978) + _1976 + ceil32(return_data.size) + 229] = 32
                    if ext_call.success:
                        mem[(32 * _1978) + _1976 + ceil32(return_data.size) + 261] = 15
                        mem[(32 * _1978) + _1976 + ceil32(return_data.size) + 293] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    mem[(32 * _1978) + _1976 + ceil32(return_data.size) + 261] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[(32 * _1978) + _1976 + ceil32(return_data.size) + idx + 293] = mem[(32 * _1978) + _1976 + idx + 260]
                        idx = idx + 32
                        continue 
                    emit StringFailure(Array(len=return_data.size, data=mem[(32 * _1978) + _1976 + ceil32(return_data.size) + 293 len return_data.size]));
            else:
                _1778 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1778] = return_data.size
                mem[_1778 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _1828 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    s = 0
                    while s < return_data.size:
                        mem[_1828 + s + 64] = mem[_1778 + s + 32]
                        s = s + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _1828 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _1828 + 64] = mem[floor32(return_data.size) + _1828 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1828 + -mem[64] + 96]);
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 15
                    mem[mem[64] + 64] = 'HoneypotPassed!'
                    emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                    idx = idx + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1980 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 132] = arg3
                mem[mem[64] + 164] = block.timestamp
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = mem[_610 + 128]
                _1982 = mem[_610 + 128]
                s = 0
                while s < 32 * _1982:
                    mem[mem[64] + s + 228] = mem[_610 + s + 160]
                    s = s + 32
                    continue 
                _2317 = mem[64]
                mem[mem[64]] = (32 * _1982) + 196
                mem[64] = (32 * _1982) + mem[64] + 228
                mem[_2317 + 32] = mem[_2317 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _2320 = mem[_2317]
                t = _2317 + 32
                u = mem[64]
                s = mem[_2317]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_2317])] = mem[_2317 + floor32(mem[_2317]) + -(mem[_2317] % 32) + 64 len mem[_2317] % 32] or Mask(8 * -(mem[_2317] % 32) + 32, -(8 * -(mem[_2317] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2317])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2320 + (32 * _1982) + _1980 + -mem[64] + 224]
                if not return_data.size:
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2721 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _2723 = mem[96]
                    idx = 0
                    while idx < _2723:
                        mem[_2721 + idx + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if not _2723 % 32:
                        emit StringFailure(mem[mem[64] len _2723 + _2721 + -mem[64] + 64]);
                    else:
                        mem[floor32(_2723) + _2721 + 64] = mem[floor32(_2723) + _2721 + -(_2723 % 32) + 96 len _2723 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_2723) + _2721 + -mem[64] + 96]);
                else:
                    _2678 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2678] = return_data.size
                    mem[_2678 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2724 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[_2724 + idx + 64] = mem[_2678 + idx + 32]
                        idx = idx + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _2724 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _2724 + 64] = mem[floor32(return_data.size) + _2724 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _2724 + -mem[64] + 96]);
        revert with 0, 'Honeypot: Cant Sell'
    _577 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    _579 = mem[96]
    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        revert with 0, 32, mem[mem[64] + 36 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
    revert with memory
      from mem[64]
       len floor32(_579) + _577 + -mem[64] + 100
}

function sub_9d875caf(?) payable {
    require calldata.size - 4 >= 192
    if uint8(stor3.field_168):
        revert with 0, 'Sniper: Locked!'
    mem[96] = 2
    mem[128] = arg3
    mem[160] = sub_0091be55Address
    require ext_code.size(wethAddress)
    call wethAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg5
    if arg2 == wethAddress:
        mem[192] = 2
        mem[64] = 288
        mem[224] = wethAddress
        mem[256] = arg1
        idx = 0
        while uint32(idx) < uint32(arg5 + 1):
            if uint32(idx):
                require 0 < mem[96]
                _581 = mem[128]
                _582 = mem[64]
                mem[mem[64] + 36] = msg.value - sub_aca5e77c / arg5
                mem[mem[64] + 68] = arg4
                mem[mem[64] + 132] = address(_581)
                mem[mem[64] + 164] = block.timestamp
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = mem[192]
                _584 = mem[192]
                s = 0
                while s < 32 * mem[192]:
                    mem[mem[64] + s + 228] = mem[s + 224]
                    s = s + 32
                    continue 
                _1190 = mem[64]
                mem[mem[64]] = (32 * mem[192]) + _582 + -mem[64] + 196
                mem[64] = (32 * _584) + _582 + 228
                mem[_1190 + 32] = mem[_1190 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _1193 = mem[_1190]
                t = _1190 + 32
                u = mem[64]
                s = mem[_1190]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_1190])] = mem[_1190 + floor32(mem[_1190]) + -(mem[_1190] % 32) + 64 len mem[_1190] % 32] or Mask(8 * -(mem[_1190] % 32) + 32, -(8 * -(mem[_1190] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1190])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1193 + (32 * _584) + _582 + -mem[64] + 224]
                if not return_data.size:
                    if not ext_call.success:
                        _1779 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        _1781 = mem[96]
                        s = 0
                        while s < _1781:
                            mem[_1779 + s + 64] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not _1781 % 32:
                            emit StringFailure(mem[mem[64] len _1781 + _1779 + -mem[64] + 64]);
                        else:
                            mem[floor32(_1781) + _1779 + 64] = mem[floor32(_1781) + _1779 + -(_1781 % 32) + 96 len _1781 % 32]
                            emit StringFailure(mem[mem[64] len floor32(_1781) + _1779 + -mem[64] + 96]);
                else:
                    _1773 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1773] = return_data.size
                    mem[_1773 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        _1782 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        s = 0
                        while s < return_data.size:
                            mem[_1782 + s + 64] = mem[_1773 + s + 32]
                            s = s + 32
                            continue 
                        if not return_data.size % 32:
                            emit StringFailure(mem[mem[64] len return_data.size + _1782 + -mem[64] + 64]);
                        else:
                            mem[floor32(return_data.size) + _1782 + 64] = mem[floor32(return_data.size) + _1782 + -(return_data.size % 32) + 96 len return_data.size % 32]
                            emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1782 + -mem[64] + 96]);
                idx = idx + 1
                continue 
            if not arg6:
                idx = idx + 1
                continue 
            if arg2 == wethAddress:
                _606 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_606]
                mem[_606 + 32] = wethAddress
                require 1 < mem[_606]
                mem[_606 + 64] = arg1
                mem[_606 + 96] = 2
                mem[64] = _606 + 192
                mem[_606 + 128] = arg1
                mem[_606 + 160] = wethAddress
                mem[_606 + 228] = sub_aca5e77c
                mem[_606 + 260] = 0
                mem[_606 + 324] = this.address
                mem[_606 + 356] = block.timestamp
                mem[_606 + 292] = 160
                mem[_606 + 388] = mem[_606]
                _673 = mem[_606]
                s = 0
                while s < 32 * mem[_606]:
                    mem[_606 + s + 420] = mem[_606 + s + 32]
                    s = s + 32
                    continue 
                mem[_606 + 192] = (32 * mem[_606]) + 196
                mem[64] = (32 * mem[_606]) + _606 + 420
                mem[_606 + 224] = stor4 or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _1198 = mem[_606 + 192]
                t = _606 + 224
                u = mem[64]
                s = mem[_606 + 192]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_606 + 192])] = mem[_606 + floor32(mem[_606 + 192]) + -(mem[_606 + 192] % 32) + 256 len mem[_606 + 192] % 32] or Mask(8 * -(mem[_606 + 192] % 32) + 32, -(8 * -(mem[_606 + 192] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_606 + 192])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1198 + (32 * _673) + _606 + -mem[64] + 416]
                if not return_data.size:
                    if not ext_call.success:
                        _1787 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        _1789 = mem[96]
                        s = 0
                        while s < _1789:
                            mem[_1787 + s + 64] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not _1789 % 32:
                            emit StringFailure(mem[mem[64] len _1789 + _1787 + -mem[64] + 64]);
                        else:
                            mem[floor32(_1789) + _1787 + 64] = mem[floor32(_1789) + _1787 + -(_1789 % 32) + 96 len _1789 % 32]
                            emit StringFailure(mem[mem[64] len floor32(_1789) + _1787 + -mem[64] + 96]);
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args _routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1952 = mem[64]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 132] = arg3
                    mem[mem[64] + 164] = block.timestamp
                    mem[mem[64] + 100] = 160
                    mem[mem[64] + 196] = mem[_606 + 96]
                    _1954 = mem[_606 + 96]
                    s = 0
                    while s < 32 * _1954:
                        mem[mem[64] + s + 228] = mem[_606 + s + 128]
                        s = s + 32
                        continue 
                    _2273 = mem[64]
                    mem[mem[64]] = (32 * _1954) + 196
                    mem[64] = (32 * _1954) + mem[64] + 228
                    mem[_2273 + 32] = mem[_2273 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                    _2276 = mem[_2273]
                    t = _2273 + 32
                    u = (32 * _1954) + _1952 + 228
                    s = mem[_2273]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[(32 * _1954) + _1952 + floor32(mem[_2273]) + 228] = mem[_2273 + -(mem[_2273] % 32) + floor32(mem[_2273]) + 64 len mem[_2273] % 32] or Mask(8 * -(mem[_2273] % 32) + 32, -(8 * -(mem[_2273] % 32) + 32) + 256, mem[(32 * _1954) + _1952 + floor32(mem[_2273]) + 228])
                    call _routerAddress.mem[(32 * _1954) + _1952 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _1954) + _1952 + 232 len _2276 - 4]
                    if not return_data.size:
                        mem[(32 * _1954) + _1952 + 228] = 32
                        if ext_call.success:
                            mem[(32 * _1954) + _1952 + 260] = 15
                            mem[(32 * _1954) + _1952 + 292] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        mem[(32 * _1954) + _1952 + 260] = mem[96]
                        idx = 0
                        while idx < mem[96]:
                            mem[(32 * _1954) + _1952 + idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if not mem[96] % 32:
                            emit StringFailure(mem[mem[64] len mem[96] + (32 * _1954) + _1952 + -mem[64] + 292]);
                        else:
                            mem[floor32(mem[96]) + (32 * _1954) + _1952 + 292] = mem[floor32(mem[96]) + (32 * _1954) + _1952 + -(mem[96] % 32) + 324 len mem[96] % 32]
                            emit StringFailure(mem[mem[64] len floor32(mem[96]) + (32 * _1954) + _1952 + -mem[64] + 324]);
                    else:
                        mem[64] = (32 * _1954) + _1952 + ceil32(return_data.size) + 229
                        mem[(32 * _1954) + _1952 + 228] = return_data.size
                        mem[(32 * _1954) + _1952 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1954) + _1952 + ceil32(return_data.size) + 229] = 32
                        if ext_call.success:
                            mem[(32 * _1954) + _1952 + ceil32(return_data.size) + 261] = 15
                            mem[(32 * _1954) + _1952 + ceil32(return_data.size) + 293] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        mem[(32 * _1954) + _1952 + ceil32(return_data.size) + 261] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[(32 * _1954) + _1952 + ceil32(return_data.size) + idx + 293] = mem[(32 * _1954) + _1952 + idx + 260]
                            idx = idx + 32
                            continue 
                        emit StringFailure(Array(len=return_data.size, data=mem[(32 * _1954) + _1952 + ceil32(return_data.size) + 293 len return_data.size]));
                else:
                    _1774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1774] = return_data.size
                    mem[_1774 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        _1792 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        s = 0
                        while s < return_data.size:
                            mem[_1792 + s + 64] = mem[_1774 + s + 32]
                            s = s + 32
                            continue 
                        if not return_data.size % 32:
                            emit StringFailure(mem[mem[64] len return_data.size + _1792 + -mem[64] + 64]);
                        else:
                            mem[floor32(return_data.size) + _1792 + 64] = mem[floor32(return_data.size) + _1792 + -(return_data.size % 32) + 96 len return_data.size % 32]
                            emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1792 + -mem[64] + 96]);
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args _routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1956 = mem[64]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 132] = arg3
                    mem[mem[64] + 164] = block.timestamp
                    mem[mem[64] + 100] = 160
                    mem[mem[64] + 196] = mem[_606 + 96]
                    _1958 = mem[_606 + 96]
                    s = 0
                    while s < 32 * _1958:
                        mem[mem[64] + s + 228] = mem[_606 + s + 128]
                        s = s + 32
                        continue 
                    _2279 = mem[64]
                    mem[mem[64]] = (32 * _1958) + 196
                    mem[64] = (32 * _1958) + mem[64] + 228
                    mem[_2279 + 32] = mem[_2279 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                    _2282 = mem[_2279]
                    t = _2279 + 32
                    u = (32 * _1958) + _1956 + 228
                    s = mem[_2279]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[(32 * _1958) + _1956 + floor32(mem[_2279]) + 228] = mem[_2279 + -(mem[_2279] % 32) + floor32(mem[_2279]) + 64 len mem[_2279] % 32] or Mask(8 * -(mem[_2279] % 32) + 32, -(8 * -(mem[_2279] % 32) + 32) + 256, mem[(32 * _1958) + _1956 + floor32(mem[_2279]) + 228])
                    call _routerAddress.mem[(32 * _1958) + _1956 + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[(32 * _1958) + _1956 + 232 len _2282 - 4]
                    if not return_data.size:
                        mem[(32 * _1958) + _1956 + 228] = 32
                        if ext_call.success:
                            mem[(32 * _1958) + _1956 + 260] = 15
                            mem[(32 * _1958) + _1956 + 292] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        mem[(32 * _1958) + _1956 + 260] = mem[96]
                        idx = 0
                        while idx < mem[96]:
                            mem[(32 * _1958) + _1956 + idx + 292] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if not mem[96] % 32:
                            emit StringFailure(mem[mem[64] len mem[96] + (32 * _1958) + _1956 + -mem[64] + 292]);
                        else:
                            mem[floor32(mem[96]) + (32 * _1958) + _1956 + 292] = mem[floor32(mem[96]) + (32 * _1958) + _1956 + -(mem[96] % 32) + 324 len mem[96] % 32]
                            emit StringFailure(mem[mem[64] len floor32(mem[96]) + (32 * _1958) + _1956 + -mem[64] + 324]);
                    else:
                        mem[64] = (32 * _1958) + _1956 + ceil32(return_data.size) + 229
                        mem[(32 * _1958) + _1956 + 228] = return_data.size
                        mem[(32 * _1958) + _1956 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[(32 * _1958) + _1956 + ceil32(return_data.size) + 229] = 32
                        if ext_call.success:
                            mem[(32 * _1958) + _1956 + ceil32(return_data.size) + 261] = 15
                            mem[(32 * _1958) + _1956 + ceil32(return_data.size) + 293] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        mem[(32 * _1958) + _1956 + ceil32(return_data.size) + 261] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[(32 * _1958) + _1956 + ceil32(return_data.size) + idx + 293] = mem[(32 * _1958) + _1956 + idx + 260]
                            idx = idx + 32
                            continue 
                        emit StringFailure(Array(len=return_data.size, data=mem[(32 * _1958) + _1956 + ceil32(return_data.size) + 293 len return_data.size]));
            else:
                _607 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                require 0 < mem[_607]
                mem[_607 + 32] = wethAddress
                require 1 < mem[_607]
                mem[_607 + 64] = arg2
                require 2 < mem[_607]
                mem[_607 + 96] = arg1
                mem[_607 + 128] = 3
                mem[64] = _607 + 256
                mem[_607 + 160] = arg1
                mem[_607 + 192] = arg2
                mem[_607 + 224] = wethAddress
                mem[_607 + 292] = sub_aca5e77c
                mem[_607 + 324] = 0
                mem[_607 + 388] = this.address
                mem[_607 + 420] = block.timestamp
                mem[_607 + 356] = 160
                mem[_607 + 452] = mem[_607]
                _686 = mem[_607]
                s = 0
                while s < 32 * mem[_607]:
                    mem[_607 + s + 484] = mem[_607 + s + 32]
                    s = s + 32
                    continue 
                mem[_607 + 256] = (32 * mem[_607]) + 196
                mem[64] = (32 * mem[_607]) + _607 + 484
                mem[_607 + 288] = stor4 or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _1203 = mem[_607 + 256]
                t = _607 + 288
                u = mem[64]
                s = mem[_607 + 256]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_607 + 256])] = mem[_607 + floor32(mem[_607 + 256]) + -(mem[_607 + 256] % 32) + 320 len mem[_607 + 256] % 32] or Mask(8 * -(mem[_607 + 256] % 32) + 32, -(8 * -(mem[_607 + 256] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_607 + 256])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1203 + (32 * _686) + _607 + -mem[64] + 480]
                if not return_data.size:
                    if not ext_call.success:
                        _1797 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        _1799 = mem[96]
                        s = 0
                        while s < _1799:
                            mem[_1797 + s + 64] = mem[s + 128]
                            s = s + 32
                            continue 
                        if not _1799 % 32:
                            emit StringFailure(mem[mem[64] len _1799 + _1797 + -mem[64] + 64]);
                        else:
                            mem[floor32(_1799) + _1797 + 64] = mem[floor32(_1799) + _1797 + -(_1799 % 32) + 96 len _1799 % 32]
                            emit StringFailure(mem[mem[64] len floor32(_1799) + _1797 + -mem[64] + 96]);
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args _routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1960 = mem[64]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 132] = arg3
                    mem[mem[64] + 164] = block.timestamp
                    mem[mem[64] + 100] = 160
                    mem[mem[64] + 196] = mem[_607 + 128]
                    _1962 = mem[_607 + 128]
                    s = 0
                    while s < 32 * _1962:
                        mem[mem[64] + s + 228] = mem[_607 + s + 160]
                        s = s + 32
                        continue 
                    _2285 = mem[64]
                    mem[mem[64]] = (32 * _1962) + _1960 + -mem[64] + 196
                    mem[64] = (32 * _1962) + _1960 + 228
                    mem[_2285 + 32] = mem[_2285 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                    _2288 = mem[_2285]
                    t = _2285 + 32
                    u = mem[64]
                    s = mem[_2285]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2285])] = mem[_2285 + floor32(mem[_2285]) + -(mem[_2285] % 32) + 64 len mem[_2285] % 32] or Mask(8 * -(mem[_2285] % 32) + 32, -(8 * -(mem[_2285] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2285])])
                    call _routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2288 + (32 * _1962) + _1960 + -mem[64] + 224]
                    if not return_data.size:
                        if ext_call.success:
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = 15
                            mem[mem[64] + 64] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        _2691 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        _2693 = mem[96]
                        idx = 0
                        while idx < _2693:
                            mem[_2691 + idx + 64] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if not _2693 % 32:
                            emit StringFailure(mem[mem[64] len _2693 + _2691 + -mem[64] + 64]);
                        else:
                            mem[floor32(_2693) + _2691 + 64] = mem[floor32(_2693) + _2691 + -(_2693 % 32) + 96 len _2693 % 32]
                            emit StringFailure(mem[mem[64] len floor32(_2693) + _2691 + -mem[64] + 96]);
                    else:
                        _2673 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2673] = return_data.size
                        mem[_2673 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = 15
                            mem[mem[64] + 64] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        _2694 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[_2694 + idx + 64] = mem[_2673 + idx + 32]
                            idx = idx + 32
                            continue 
                        if not return_data.size % 32:
                            emit StringFailure(mem[mem[64] len return_data.size + _2694 + -mem[64] + 64]);
                        else:
                            mem[floor32(return_data.size) + _2694 + 64] = mem[floor32(return_data.size) + _2694 + -(return_data.size % 32) + 96 len return_data.size % 32]
                            emit StringFailure(mem[mem[64] len floor32(return_data.size) + _2694 + -mem[64] + 96]);
                else:
                    _1775 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1775] = return_data.size
                    mem[_1775 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        _1802 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        s = 0
                        while s < return_data.size:
                            mem[_1802 + s + 64] = mem[_1775 + s + 32]
                            s = s + 32
                            continue 
                        if not return_data.size % 32:
                            emit StringFailure(mem[mem[64] len return_data.size + _1802 + -mem[64] + 64]);
                        else:
                            mem[floor32(return_data.size) + _1802 + 64] = mem[floor32(return_data.size) + _1802 + -(return_data.size % 32) + 96 len return_data.size % 32]
                            emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1802 + -mem[64] + 96]);
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args _routerAddress, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1964 = mem[64]
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 132] = arg3
                    mem[mem[64] + 164] = block.timestamp
                    mem[mem[64] + 100] = 160
                    mem[mem[64] + 196] = mem[_607 + 128]
                    _1966 = mem[_607 + 128]
                    s = 0
                    while s < 32 * _1966:
                        mem[mem[64] + s + 228] = mem[_607 + s + 160]
                        s = s + 32
                        continue 
                    _2291 = mem[64]
                    mem[mem[64]] = (32 * _1966) + _1964 + -mem[64] + 196
                    mem[64] = (32 * _1966) + _1964 + 228
                    mem[_2291 + 32] = mem[_2291 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                    _2294 = mem[_2291]
                    t = _2291 + 32
                    u = mem[64]
                    s = mem[_2291]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2291])] = mem[_2291 + floor32(mem[_2291]) + -(mem[_2291] % 32) + 64 len mem[_2291] % 32] or Mask(8 * -(mem[_2291] % 32) + 32, -(8 * -(mem[_2291] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2291])])
                    call _routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2294 + (32 * _1966) + _1964 + -mem[64] + 224]
                    if not return_data.size:
                        if ext_call.success:
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = 15
                            mem[mem[64] + 64] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        _2697 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        _2699 = mem[96]
                        idx = 0
                        while idx < _2699:
                            mem[_2697 + idx + 64] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        if not _2699 % 32:
                            emit StringFailure(mem[mem[64] len _2699 + _2697 + -mem[64] + 64]);
                        else:
                            mem[floor32(_2699) + _2697 + 64] = mem[floor32(_2699) + _2697 + -(_2699 % 32) + 96 len _2699 % 32]
                            emit StringFailure(mem[mem[64] len floor32(_2699) + _2697 + -mem[64] + 96]);
                    else:
                        _2674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2674] = return_data.size
                        mem[_2674 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = 15
                            mem[mem[64] + 64] = 'HoneypotPassed!'
                            emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                            idx = idx + 1
                            continue 
                        _2700 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = return_data.size
                        idx = 0
                        while idx < return_data.size:
                            mem[_2700 + idx + 64] = mem[_2674 + idx + 32]
                            idx = idx + 32
                            continue 
                        if not return_data.size % 32:
                            emit StringFailure(mem[mem[64] len return_data.size + _2700 + -mem[64] + 64]);
                        else:
                            mem[floor32(return_data.size) + _2700 + 64] = mem[floor32(return_data.size) + _2700 + -(return_data.size % 32) + 96 len return_data.size % 32]
                            emit StringFailure(mem[mem[64] len floor32(return_data.size) + _2700 + -mem[64] + 96]);
            revert with 0, 'Honeypot: Cant Sell'
        _573 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[96]
        _575 = mem[96]
        mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[96] + 32]
        mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
        revert with memory
          from mem[64]
           len floor32(_575) + _573 + -mem[64] + 100
    mem[192] = 3
    mem[64] = 320
    mem[224] = wethAddress
    mem[256] = arg2
    mem[288] = arg1
    idx = 0
    while uint32(idx) < uint32(arg5 + 1):
        if uint32(idx):
            require 0 < mem[96]
            _585 = mem[128]
            _586 = mem[64]
            mem[mem[64] + 36] = msg.value - sub_aca5e77c / arg5
            mem[mem[64] + 68] = arg4
            mem[mem[64] + 132] = address(_585)
            mem[mem[64] + 164] = block.timestamp
            mem[mem[64] + 100] = 160
            mem[mem[64] + 196] = mem[192]
            _588 = mem[192]
            s = 0
            while s < 32 * mem[192]:
                mem[mem[64] + s + 228] = mem[s + 224]
                s = s + 32
                continue 
            _1206 = mem[64]
            mem[mem[64]] = (32 * mem[192]) + _586 + -mem[64] + 196
            mem[64] = (32 * _588) + _586 + 228
            mem[_1206 + 32] = mem[_1206 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
            _1209 = mem[_1206]
            t = _1206 + 32
            u = mem[64]
            s = mem[_1206]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_1206])] = mem[_1206 + floor32(mem[_1206]) + -(mem[_1206] % 32) + 64 len mem[_1206] % 32] or Mask(8 * -(mem[_1206] % 32) + 32, -(8 * -(mem[_1206] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1206])])
            call _routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1209 + (32 * _588) + _586 + -mem[64] + 224]
            if not return_data.size:
                if not ext_call.success:
                    _1805 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _1807 = mem[96]
                    s = 0
                    while s < _1807:
                        mem[_1805 + s + 64] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not _1807 % 32:
                        emit StringFailure(mem[mem[64] len _1807 + _1805 + -mem[64] + 64]);
                    else:
                        mem[floor32(_1807) + _1805 + 64] = mem[floor32(_1807) + _1805 + -(_1807 % 32) + 96 len _1807 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_1807) + _1805 + -mem[64] + 96]);
            else:
                _1776 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1776] = return_data.size
                mem[_1776 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _1808 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    s = 0
                    while s < return_data.size:
                        mem[_1808 + s + 64] = mem[_1776 + s + 32]
                        s = s + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _1808 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _1808 + 64] = mem[floor32(return_data.size) + _1808 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1808 + -mem[64] + 96]);
            idx = idx + 1
            continue 
        if not arg6:
            idx = idx + 1
            continue 
        if arg2 == wethAddress:
            _609 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_609]
            mem[_609 + 32] = wethAddress
            require 1 < mem[_609]
            mem[_609 + 64] = arg1
            mem[_609 + 96] = 2
            mem[64] = _609 + 192
            mem[_609 + 128] = arg1
            mem[_609 + 160] = wethAddress
            mem[_609 + 228] = sub_aca5e77c
            mem[_609 + 260] = 0
            mem[_609 + 324] = this.address
            mem[_609 + 356] = block.timestamp
            mem[_609 + 292] = 160
            mem[_609 + 388] = mem[_609]
            _677 = mem[_609]
            s = 0
            while s < 32 * mem[_609]:
                mem[_609 + s + 420] = mem[_609 + s + 32]
                s = s + 32
                continue 
            mem[_609 + 192] = (32 * mem[_609]) + 196
            mem[64] = (32 * mem[_609]) + _609 + 420
            mem[_609 + 224] = stor4 or 0x38ed173900000000000000000000000000000000000000000000000000000000
            _1214 = mem[_609 + 192]
            t = _609 + 224
            u = mem[64]
            s = mem[_609 + 192]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_609 + 192])] = mem[_609 + floor32(mem[_609 + 192]) + -(mem[_609 + 192] % 32) + 256 len mem[_609 + 192] % 32] or Mask(8 * -(mem[_609 + 192] % 32) + 32, -(8 * -(mem[_609 + 192] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_609 + 192])])
            call _routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1214 + (32 * _677) + _609 + -mem[64] + 416]
            if not return_data.size:
                if not ext_call.success:
                    _1813 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _1815 = mem[96]
                    s = 0
                    while s < _1815:
                        mem[_1813 + s + 64] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not _1815 % 32:
                        emit StringFailure(mem[mem[64] len _1815 + _1813 + -mem[64] + 64]);
                    else:
                        mem[floor32(_1815) + _1813 + 64] = mem[floor32(_1815) + _1813 + -(_1815 % 32) + 96 len _1815 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_1815) + _1813 + -mem[64] + 96]);
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 15
                    mem[mem[64] + 64] = 'HoneypotPassed!'
                    emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                    idx = idx + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1968 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 132] = arg3
                mem[mem[64] + 164] = block.timestamp
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = mem[_609 + 96]
                _1970 = mem[_609 + 96]
                s = 0
                while s < 32 * _1970:
                    mem[mem[64] + s + 228] = mem[_609 + s + 128]
                    s = s + 32
                    continue 
                _2299 = mem[64]
                mem[mem[64]] = (32 * _1970) + 196
                mem[64] = (32 * _1970) + mem[64] + 228
                mem[_2299 + 32] = mem[_2299 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _2302 = mem[_2299]
                t = _2299 + 32
                u = mem[64]
                s = mem[_2299]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_2299])] = mem[_2299 + floor32(mem[_2299]) + -(mem[_2299] % 32) + 64 len mem[_2299] % 32] or Mask(8 * -(mem[_2299] % 32) + 32, -(8 * -(mem[_2299] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2299])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2302 + (32 * _1970) + _1968 + -mem[64] + 224]
                if not return_data.size:
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2703 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _2705 = mem[96]
                    idx = 0
                    while idx < _2705:
                        mem[_2703 + idx + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if not _2705 % 32:
                        emit StringFailure(mem[mem[64] len _2705 + _2703 + -mem[64] + 64]);
                    else:
                        mem[floor32(_2705) + _2703 + 64] = mem[floor32(_2705) + _2703 + -(_2705 % 32) + 96 len _2705 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_2705) + _2703 + -mem[64] + 96]);
                else:
                    _2675 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2675] = return_data.size
                    mem[_2675 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2706 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[_2706 + idx + 64] = mem[_2675 + idx + 32]
                        idx = idx + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _2706 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _2706 + 64] = mem[floor32(return_data.size) + _2706 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _2706 + -mem[64] + 96]);
            else:
                _1777 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1777] = return_data.size
                mem[_1777 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _1818 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    s = 0
                    while s < return_data.size:
                        mem[_1818 + s + 64] = mem[_1777 + s + 32]
                        s = s + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _1818 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _1818 + 64] = mem[floor32(return_data.size) + _1818 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1818 + -mem[64] + 96]);
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 15
                    mem[mem[64] + 64] = 'HoneypotPassed!'
                    emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                    idx = idx + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1972 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 132] = arg3
                mem[mem[64] + 164] = block.timestamp
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = mem[_609 + 96]
                _1974 = mem[_609 + 96]
                s = 0
                while s < 32 * _1974:
                    mem[mem[64] + s + 228] = mem[_609 + s + 128]
                    s = s + 32
                    continue 
                _2305 = mem[64]
                mem[mem[64]] = (32 * _1974) + _1972 + -mem[64] + 196
                mem[64] = (32 * _1974) + _1972 + 228
                mem[_2305 + 32] = mem[_2305 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _2308 = mem[_2305]
                t = _2305 + 32
                u = mem[64]
                s = mem[_2305]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_2305])] = mem[_2305 + floor32(mem[_2305]) + -(mem[_2305] % 32) + 64 len mem[_2305] % 32] or Mask(8 * -(mem[_2305] % 32) + 32, -(8 * -(mem[_2305] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2305])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2308 + (32 * _1974) + _1972 + -mem[64] + 224]
                if not return_data.size:
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2709 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _2711 = mem[96]
                    idx = 0
                    while idx < _2711:
                        mem[_2709 + idx + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if not _2711 % 32:
                        emit StringFailure(mem[mem[64] len _2711 + _2709 + -mem[64] + 64]);
                    else:
                        mem[floor32(_2711) + _2709 + 64] = mem[floor32(_2711) + _2709 + -(_2711 % 32) + 96 len _2711 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_2711) + _2709 + -mem[64] + 96]);
                else:
                    _2676 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2676] = return_data.size
                    mem[_2676 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2712 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[_2712 + idx + 64] = mem[_2676 + idx + 32]
                        idx = idx + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _2712 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _2712 + 64] = mem[floor32(return_data.size) + _2712 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _2712 + -mem[64] + 96]);
        else:
            _610 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            require 0 < mem[_610]
            mem[_610 + 32] = wethAddress
            require 1 < mem[_610]
            mem[_610 + 64] = arg2
            require 2 < mem[_610]
            mem[_610 + 96] = arg1
            mem[_610 + 128] = 3
            mem[64] = _610 + 256
            mem[_610 + 160] = arg1
            mem[_610 + 192] = arg2
            mem[_610 + 224] = wethAddress
            mem[_610 + 292] = sub_aca5e77c
            mem[_610 + 324] = 0
            mem[_610 + 388] = this.address
            mem[_610 + 420] = block.timestamp
            mem[_610 + 356] = 160
            mem[_610 + 452] = mem[_610]
            _694 = mem[_610]
            s = 0
            while s < 32 * mem[_610]:
                mem[_610 + s + 484] = mem[_610 + s + 32]
                s = s + 32
                continue 
            mem[_610 + 256] = (32 * mem[_610]) + 196
            mem[64] = (32 * mem[_610]) + _610 + 484
            mem[_610 + 288] = stor4 or 0x38ed173900000000000000000000000000000000000000000000000000000000
            _1219 = mem[_610 + 256]
            t = _610 + 288
            u = mem[64]
            s = mem[_610 + 256]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_610 + 256])] = mem[_610 + floor32(mem[_610 + 256]) + -(mem[_610 + 256] % 32) + 320 len mem[_610 + 256] % 32] or Mask(8 * -(mem[_610 + 256] % 32) + 32, -(8 * -(mem[_610 + 256] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_610 + 256])])
            call _routerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1219 + (32 * _694) + _610 + -mem[64] + 480]
            if not return_data.size:
                if not ext_call.success:
                    _1823 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _1825 = mem[96]
                    s = 0
                    while s < _1825:
                        mem[_1823 + s + 64] = mem[s + 128]
                        s = s + 32
                        continue 
                    if not _1825 % 32:
                        emit StringFailure(mem[mem[64] len _1825 + _1823 + -mem[64] + 64]);
                    else:
                        mem[floor32(_1825) + _1823 + 64] = mem[floor32(_1825) + _1823 + -(_1825 % 32) + 96 len _1825 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_1825) + _1823 + -mem[64] + 96]);
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 15
                    mem[mem[64] + 64] = 'HoneypotPassed!'
                    emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                    idx = idx + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1976 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 132] = arg3
                mem[mem[64] + 164] = block.timestamp
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = mem[_610 + 128]
                _1978 = mem[_610 + 128]
                s = 0
                while s < 32 * _1978:
                    mem[mem[64] + s + 228] = mem[_610 + s + 160]
                    s = s + 32
                    continue 
                _2311 = mem[64]
                mem[mem[64]] = (32 * _1978) + 196
                mem[64] = (32 * _1978) + mem[64] + 228
                mem[_2311 + 32] = mem[_2311 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _2314 = mem[_2311]
                t = _2311 + 32
                u = (32 * _1978) + _1976 + 228
                s = mem[_2311]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[(32 * _1978) + _1976 + floor32(mem[_2311]) + 228] = mem[_2311 + -(mem[_2311] % 32) + floor32(mem[_2311]) + 64 len mem[_2311] % 32] or Mask(8 * -(mem[_2311] % 32) + 32, -(8 * -(mem[_2311] % 32) + 32) + 256, mem[(32 * _1978) + _1976 + floor32(mem[_2311]) + 228])
                call _routerAddress.mem[(32 * _1978) + _1976 + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * _1978) + _1976 + 232 len _2314 - 4]
                if not return_data.size:
                    mem[(32 * _1978) + _1976 + 228] = 32
                    if ext_call.success:
                        mem[(32 * _1978) + _1976 + 260] = 15
                        mem[(32 * _1978) + _1976 + 292] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    mem[(32 * _1978) + _1976 + 260] = mem[96]
                    idx = 0
                    while idx < mem[96]:
                        mem[(32 * _1978) + _1976 + idx + 292] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if not mem[96] % 32:
                        emit StringFailure(mem[mem[64] len mem[96] + (32 * _1978) + _1976 + -mem[64] + 292]);
                    else:
                        mem[floor32(mem[96]) + (32 * _1978) + _1976 + 292] = mem[floor32(mem[96]) + (32 * _1978) + _1976 + -(mem[96] % 32) + 324 len mem[96] % 32]
                        emit StringFailure(mem[mem[64] len floor32(mem[96]) + (32 * _1978) + _1976 + -mem[64] + 324]);
                else:
                    mem[64] = (32 * _1978) + _1976 + ceil32(return_data.size) + 229
                    mem[(32 * _1978) + _1976 + 228] = return_data.size
                    mem[(32 * _1978) + _1976 + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1978) + _1976 + ceil32(return_data.size) + 229] = 32
                    if ext_call.success:
                        mem[(32 * _1978) + _1976 + ceil32(return_data.size) + 261] = 15
                        mem[(32 * _1978) + _1976 + ceil32(return_data.size) + 293] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    mem[(32 * _1978) + _1976 + ceil32(return_data.size) + 261] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[(32 * _1978) + _1976 + ceil32(return_data.size) + idx + 293] = mem[(32 * _1978) + _1976 + idx + 260]
                        idx = idx + 32
                        continue 
                    emit StringFailure(Array(len=return_data.size, data=mem[(32 * _1978) + _1976 + ceil32(return_data.size) + 293 len return_data.size]));
            else:
                _1778 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1778] = return_data.size
                mem[_1778 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _1828 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    s = 0
                    while s < return_data.size:
                        mem[_1828 + s + 64] = mem[_1778 + s + 32]
                        s = s + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _1828 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _1828 + 64] = mem[floor32(return_data.size) + _1828 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _1828 + -mem[64] + 96]);
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = 15
                    mem[mem[64] + 64] = 'HoneypotPassed!'
                    emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                    idx = idx + 1
                    continue 
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args _routerAddress, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1980 = mem[64]
                mem[mem[64] + 36] = ext_call.return_data[0]
                mem[mem[64] + 68] = 0
                mem[mem[64] + 132] = arg3
                mem[mem[64] + 164] = block.timestamp
                mem[mem[64] + 100] = 160
                mem[mem[64] + 196] = mem[_610 + 128]
                _1982 = mem[_610 + 128]
                s = 0
                while s < 32 * _1982:
                    mem[mem[64] + s + 228] = mem[_610 + s + 160]
                    s = s + 32
                    continue 
                _2317 = mem[64]
                mem[mem[64]] = (32 * _1982) + 196
                mem[64] = (32 * _1982) + mem[64] + 228
                mem[_2317 + 32] = mem[_2317 + 36 len 28] or 0x38ed173900000000000000000000000000000000000000000000000000000000
                _2320 = mem[_2317]
                t = _2317 + 32
                u = mem[64]
                s = mem[_2317]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_2317])] = mem[_2317 + floor32(mem[_2317]) + -(mem[_2317] % 32) + 64 len mem[_2317] % 32] or Mask(8 * -(mem[_2317] % 32) + 32, -(8 * -(mem[_2317] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2317])])
                call _routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2320 + (32 * _1982) + _1980 + -mem[64] + 224]
                if not return_data.size:
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2721 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[96]
                    _2723 = mem[96]
                    idx = 0
                    while idx < _2723:
                        mem[_2721 + idx + 64] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    if not _2723 % 32:
                        emit StringFailure(mem[mem[64] len _2723 + _2721 + -mem[64] + 64]);
                    else:
                        mem[floor32(_2723) + _2721 + 64] = mem[floor32(_2723) + _2721 + -(_2723 % 32) + 96 len _2723 % 32]
                        emit StringFailure(mem[mem[64] len floor32(_2723) + _2721 + -mem[64] + 96]);
                else:
                    _2678 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2678] = return_data.size
                    mem[_2678 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = 15
                        mem[mem[64] + 64] = 'HoneypotPassed!'
                        emit 0x74f9e4c0: Array(len=15, data='HoneypotPassed!')
                        idx = idx + 1
                        continue 
                    _2724 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = return_data.size
                    idx = 0
                    while idx < return_data.size:
                        mem[_2724 + idx + 64] = mem[_2678 + idx + 32]
                        idx = idx + 32
                        continue 
                    if not return_data.size % 32:
                        emit StringFailure(mem[mem[64] len return_data.size + _2724 + -mem[64] + 64]);
                    else:
                        mem[floor32(return_data.size) + _2724 + 64] = mem[floor32(return_data.size) + _2724 + -(return_data.size % 32) + 96 len return_data.size % 32]
                        emit StringFailure(mem[mem[64] len floor32(return_data.size) + _2724 + -mem[64] + 96]);
        revert with 0, 'Honeypot: Cant Sell'
    _577 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    _579 = mem[96]
    mem[mem[64] + 68 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        revert with 0, 32, mem[mem[64] + 36 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 68] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 100 len mem[96] % 32]
    revert with memory
      from mem[64]
       len floor32(_579) + _577 + -mem[64] + 100
}



}
