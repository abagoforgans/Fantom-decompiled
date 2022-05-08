contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint8 stor3; offset 160
address stor3;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b5345cea(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
    stor2 = address(arg2)
    address(stor3.field_0) = address(arg3)
    uint8(stor3.field_160) = uint8(arg4)
}

function getPrice() payable {
    require ext_code.size(address(stor3.field_0))
    staticcall address(stor3.field_0).balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 18 < uint8(stor3.field_160):
        revert with 0, 17
    if not uint8(-uint8(stor3.field_160) + 18):
        require ext_code.size(stor2)
        staticcall stor2.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] and 1 > -1 / 10^18 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
    if bool(bool(uint8(-uint8(stor3.field_160) + 18) < 78)) or bool(bool(uint8(-uint8(stor3.field_160) + 18) < 32)):
        require ext_code.size(stor2)
        staticcall stor2.balanceOf(address arg1) with:
                gas gas_remaining wei
               args stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] and 10^uint8(-uint8(stor3.field_160) + 18) > -1 / 10^18 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[0] * 10^uint8(-uint8(stor3.field_160) + 18) / ext_call.return_data[0])
    s = 10
    t = 1
    idx = uint8(-uint8(stor3.field_160) + 18)
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(stor2)
    staticcall stor2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] and s * t > -1 / 10^18 * ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] * s * t / ext_call.return_data[0])
}



}
