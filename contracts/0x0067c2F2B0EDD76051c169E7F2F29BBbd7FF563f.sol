contract main {




// =====================  Runtime code  =====================


#
#  - sub_d94dc558(?)
#
mapping of address markets;
address adminAddress;

function markets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return markets[arg1]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'invalid user'
    adminAddress = arg1
}

function sub_95b6fe13(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if adminAddress != msg.sender:
        revert with 0, 'invalid user'
    markets[arg1] = address(arg2)
}

function withdrawToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'invalid user'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_712b5d75(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'invalid user'
    idx = arg2
    while idx > arg3:
        require ext_code.size(markets[arg1])
        call markets[arg1].0xa0712d68 with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx and 7500 > -1 / idx:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = 7500 * idx / 10000
        require ext_code.size(markets[arg1])
        call markets[arg1].borrow(uint256 arg1) with:
             gas gas_remaining wei
            args (7500 * idx / 10000)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        idx = 7500 * idx / 10000
        continue 
}



}
