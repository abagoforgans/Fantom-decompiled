contract main {




// =====================  Runtime code  =====================


mapping of address sub_027d82a6;
address stor1;
address stor2;

function sub_027d82a6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require sub_027d82a6[address(arg1)][arg2]
    return sub_027d82a6[address(arg1)][arg2]
}

function accounts(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return sub_027d82a6[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_607a6e9c(?) payable {
    require calldata.size - 4 >= 32
    if sub_027d82a6[msg.sender][arg1]:
        revert with 0, 'POSITION_EXISTS'
    require ext_code.size(stor1)
    call stor1.markets(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 352 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == bool(ext_call.return_data[96])
    create contract with 0 wei
                    code: code.data[1270 len 14076], ext_call.return_data[12 len 20], address(ext_call.return_data[32]), address(ext_call.return_data[64]), stor2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_027d82a6[msg.sender][arg1] = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}



}
