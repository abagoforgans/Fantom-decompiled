contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_8bfe8cc0Address;
address sub_821e94acAddress;

function sub_821e94ac(?) payable {
    return sub_821e94acAddress
}

function sub_8bfe8cc0(?) payable {
    return sub_8bfe8cc0Address
}

function _fallback() payable {
    revert
}

function sub_b8b69683(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[100] = sub_821e94acAddress
        mem[132] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_821e94acAddress, cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
