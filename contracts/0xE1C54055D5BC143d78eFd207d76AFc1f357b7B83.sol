contract main {




// =====================  Runtime code  =====================


#
#  - sub_982b43a7(?)
#
address sub_8ed8ea7eAddress;
address sub_50d7d613Address;
address sub_d8f06c26Address;
array of uint256 stor4;

function sub_50d7d613(?) payable {
    return sub_50d7d613Address
}

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function sub_d8f06c26(?) payable {
    return sub_d8f06c26Address
}

function _fallback() payable {
    revert
}

function sub_a6fc90f7(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 < 2
    require arg6 == arg6
    require arg5 <= 1
    require arg5 < 2
    mem[192] = arg5
    mem[224] = arg6
    stor4.length = 129
    s = 0
    idx = 192
    while 256 > idx:
        stor4[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor4.length + 31 / 32 > idx:
        stor4[idx] = 0
        idx = idx + 1
        continue 
    require ext_code.size(sub_d8f06c26Address)
    staticcall sub_d8f06c26Address.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 128, 9, 'not empty', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
