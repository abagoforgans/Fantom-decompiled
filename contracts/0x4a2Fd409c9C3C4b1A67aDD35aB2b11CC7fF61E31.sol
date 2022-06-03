contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function sub_acad5b69(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_47db997c(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
    emit 0xa5aa4c54: arg2, arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function unoswap(address arg1, uint256 arg2, uint256 arg3, bytes32[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'You are not allowed to swap'
    if msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0x11696e76616c6964206d73672e76616c7565
    idx = arg4 + 68
    s = cd[(arg4 + 36)]
    t = arg2
    while idx < arg4 + (32 * arg4.length) + 36:
        staticcall address(s).getReserves() with:
                gas gas_remaining wei
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not Mask(1, 255, s):
            idx = idx + 32
            s = cd[idx]
            t = 0 / 10^9 * ext_call.return_data[0]
            continue 
        idx = idx + 32
        s = cd[idx]
        t = 0 / 10^9 * ext_call.return_data[32]
        continue 
    staticcall address(s).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not Mask(1, 255, s):
        if 0 / 10^9 * ext_call.return_data[0] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        ' ',
                        0x164d696e2072657475726e206e6f742072656163686564
    else:
        if 0 / 10^9 * ext_call.return_data[32] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        ' ',
                        0x164d696e2072657475726e206e6f742072656163686564
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(cd[(arg4 + 36)]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = arg4 + 68
    s = cd[(arg4 + 36)]
    t = arg2
    while idx < arg4 + (32 * arg4.length) + 36:
        staticcall address(s).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if not Mask(1, 255, s):
            mem[292] = 0
            mem[324] = 0 / 10^9 * ext_call.return_data[0]
            mem[356] = address(cd[idx])
            mem[388] = 128
            mem[420] = 0
            call address(s).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / 10^9 * ext_call.return_data[0], address(cd[idx]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 32
            s = cd[idx]
            t = 0 / 10^9 * ext_call.return_data[0]
            continue 
        mem[292] = 0 / 10^9 * ext_call.return_data[32]
        mem[324] = 0
        mem[356] = address(cd[idx])
        mem[388] = 128
        mem[420] = 0
        call address(s).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / 10^9 * ext_call.return_data[32], 0, address(cd[idx]), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 32
        s = cd[idx]
        t = 0 / 10^9 * ext_call.return_data[32]
        continue 
    staticcall address(s).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not Mask(1, 255, s):
        call address(s).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0 / 10^9 * ext_call.return_data[0], msg.sender, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 / 10^9 * ext_call.return_data[0] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        ' ',
                        0x164d696e2072657475726e206e6f742072656163686564
        return (0 / 10^9 * ext_call.return_data[0])
    call address(s).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0 / 10^9 * ext_call.return_data[32], 0, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 / 10^9 * ext_call.return_data[32] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ' ',
                    0x164d696e2072657475726e206e6f742072656163686564
    return (0 / 10^9 * ext_call.return_data[32])
}



}
