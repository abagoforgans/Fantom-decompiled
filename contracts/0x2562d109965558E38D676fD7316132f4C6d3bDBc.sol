contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address sub_5a19e800Address; offset 8
uint256 stor0; offset 8
address owner;
array of address sub_02d52ddc;

function sub_02d52ddc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_02d52ddc.length
    return address(sub_02d52ddc[arg1])
}

function isInitialized() payable {
    return bool(uint8(stor0.field_0))
}

function sub_5a19e800(?) payable {
    return sub_5a19e800Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not owner'
    owner = arg1
    return 1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'caller is not owner'
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = 0
    sub_5a19e800Address = arg1
    return 1
}

function sub_2c2cf3cd(?) payable {
    idx = 0
    s = 0
    while idx < sub_02d52ddc.length:
        mem[0] = 2
        mem[100] = address(sub_02d52ddc[idx])
        require ext_code.size(sub_5a19e800Address)
        staticcall sub_5a19e800Address.0x70a08231 with:
                gas gas_remaining wei
               args address(sub_02d52ddc[idx])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx + 1 < idx:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return (_16 * sub_02d52ddc.length)
}

function sub_08a35fef(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Sender is not owner'
    sub_02d52ddc.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_02d52ddc.length > idx:
            uint256(sub_02d52ddc[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(sub_02d52ddc[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_02d52ddc.length > idx:
            uint256(sub_02d52ddc[idx]) = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_0b2383eb(?) payable {
    require ext_code.size(sub_5a19e800Address)
    staticcall sub_5a19e800Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < sub_02d52ddc.length:
        mem[0] = 2
        mem[100] = address(sub_02d52ddc[idx])
        require ext_code.size(sub_5a19e800Address)
        staticcall sub_5a19e800Address.0x70a08231 with:
                gas gas_remaining wei
               args address(sub_02d52ddc[idx])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx + 1 < idx:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if _30 * sub_02d52ddc.length > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - (_30 * sub_02d52ddc.length))
}



}
