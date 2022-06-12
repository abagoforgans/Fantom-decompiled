contract main {




// =====================  Runtime code  =====================


array of uint256 sub_975993d8;
address stor1;

function sub_975993d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_975993d8.length
    return sub_975993d8[arg1]
}

function _fallback() payable {
    revert
}

function sub_eba59f2e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        if idx >= sub_975993d8.length:
            revert with 'NH{q', 50
        mem[0] = 0
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = sub_975993d8[idx]
        require ext_code.size(stor1)
        call stor1.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args sub_975993d8[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_15663ef6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        if idx >= sub_975993d8.length:
            revert with 'NH{q', 50
        require ext_code.size(stor1)
        call stor1.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args sub_975993d8[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= sub_975993d8.length:
            revert with 'NH{q', 50
        mem[0] = 0
        mem[96] = sub_975993d8[idx]
        mem[128] = block.timestamp
        emit 0x483e82af: sub_975993d8[idx], block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
