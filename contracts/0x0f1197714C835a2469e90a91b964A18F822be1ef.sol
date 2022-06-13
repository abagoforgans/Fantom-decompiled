contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_c7e37e2e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 < arg1:
        require ext_code.size(stor0)
        call stor0.summon(uint256 arg1) with:
             gas gas_remaining wei
            args 0
        s = 0
        while ext_call.success:
            if s == -1:
                revert with 'NH{q', 17
            mem[96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            require ext_code.size(stor0)
            call stor0.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
            s = s + 1
            continue 
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.next_summoner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 'NH{q', 17
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
