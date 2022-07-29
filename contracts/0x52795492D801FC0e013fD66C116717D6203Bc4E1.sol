contract main {




// =====================  Runtime code  =====================


address adminAddress;
address sub_48db3888Address;
address sub_e6560251Address;
uint256 stor3;

function sub_48db3888(?) payable {
    return sub_48db3888Address
}

function sub_e6560251(?) payable {
    return sub_e6560251Address
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function invest(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_e6560251Address)
    call sub_e6560251Address.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 and stor3 > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(sub_48db3888Address)
    call sub_48db3888Address.0xc8616da5 with:
         gas gas_remaining wei
        args 0, 96, arg1, arg2 * stor3 / 100, 6, 'COSMIC'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Invest((arg2 * stor3 / 100), arg1);
}

function sub_33d2d68a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_48db3888Address)
    staticcall sub_48db3888Address.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_48db3888Address)
    if ext_call.return_data[12 len 20] != msg.sender:
        staticcall sub_48db3888Address.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'RefineCosmic: not approved to refine'
    call sub_48db3888Address.0x3be9d767 with:
         gas gas_remaining wei
        args Array(len=6, data='COSMIC'), arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 and stor3 > -1 / arg2:
        revert with 'NH{q', 17
    require ext_code.size(sub_e6560251Address)
    call sub_e6560251Address.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2 * stor3 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x12ce834e: (arg2 * stor3 / 100), arg1
}



}
