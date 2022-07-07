contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
address stor3;

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == stor0)
}

function sub_fa15c887(?) payable {
    require calldata.size - 4 >= 160
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x5946756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65,
                    mem[201 len 27]
    require ext_code.size(stor3)
    staticcall stor3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 128, 32, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
