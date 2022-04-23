contract main {




// =====================  Runtime code  =====================


const sub_0863f1db(?) = 1

const burnAddress = 57005

const sub_916e7b7e(?) = 46000


address owner;
address halflifeAddress;
address sub_0f92ca69Address;
address sub_d8cd788dAddress;
mapping of uint256 sub_11a9577b;

function sub_0f92ca69(?) payable {
    return sub_0f92ca69Address
}

function sub_11a9577b(?) payable {
    require calldata.size - 4 >= 32
    return sub_11a9577b[arg1]
}

function halflife() payable {
    return halflifeAddress
}

function owner() payable {
    return owner
}

function sub_d8cd788d(?) payable {
    return sub_d8cd788dAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function destroyHalflife(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_d8cd788dAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe4c6f636b496e48616c666c6966653a206e6f74207465616d2068616c666c6966652061646d69,
                    mem[203 len 25]
    require ext_code.size(halflifeAddress)
    call halflifeAddress.0x6db9241b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0f92ca69Address)
    staticcall sub_0f92ca69Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0f92ca69Address)
    call sub_0f92ca69Address.0xa9059cbb with:
         gas gas_remaining wei
        args 57005, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit LogDestroyHalflife(arg1);
}

function sub_64945939(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg6.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    halflifeAddress = arg1
    sub_0f92ca69Address = arg2
    sub_d8cd788dAddress = arg3
    if arg4.length != arg5.length:
        revert with 0, 'LockInHalflife: length not equal'
    if arg4.length != arg6.length:
        revert with 0, 'LockInHalflife: length not equal'
    idx = 0
    s = 0
    while idx < arg4.length:
        require idx < arg5.length
        if mem[(32 * idx) + (32 * arg4.length) + 160] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[(32 * idx) + (32 * arg4.length) + 160] + s
        continue 
    require ext_code.size(sub_0f92ca69Address)
    staticcall sub_0f92ca69Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[(64 * arg4.length) + 160] * arg4.length != ext_call.return_data[0]:
        revert with 0, 'LockInHalflife: amount not equal'
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 196] = halflifeAddress
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 228] = s
    require ext_code.size(sub_0f92ca69Address)
    call sub_0f92ca69Address.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args halflifeAddress, s
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        _71 = mem[(32 * idx) + 128]
        require idx < arg5.length
        _73 = mem[(32 * idx) + (32 * arg4.length) + 160]
        require idx < arg6.length
        _75 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 228] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 260] = _73
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 292] = block.number + 1
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 324] = 46000
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 356] = 1
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 388] = bool(_75)
        require ext_code.size(halflifeAddress)
        call halflifeAddress.0x1290fab4 with:
             gas gas_remaining wei
            args sub_0f92ca69Address, address(_71), _73, block.number + 1, 46000, 1, bool(_75)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = address(_71)
        mem[32] = 4
        sub_11a9577b[address(_71)] = ext_call.return_data[0]
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 192] = _73
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 224] = ext_call.return_data[0]
        emit LogCreateHalflife(_73, ext_call.return_data[0], address(_71));
        idx = idx + 1
        continue 
    emit OwnershipTransferred(owner, 0);
    owner = 0
}



}
