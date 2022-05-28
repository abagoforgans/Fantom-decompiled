contract main {




// =====================  Runtime code  =====================


#
#  - trade(address[] arg1, address[] arg2, uint256 arg3, uint256 arg4)
#
address stor0;
mapping of uint8 stor1;

function sub_d1302881(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
  stop
}

function sub_41937b41(?) {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)]:
        revert with 0, 'W1'
    if stor0 != msg.sender:
        revert with 0, 'W1'
    stor1[address(arg1)] = 1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor1[address(msg.sender)]) != 1:
        if stor0 != msg.sender:
            revert with 0, 'N-W'
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if bool(stor1[address(msg.sender)]) != 1:
        if stor0 != msg.sender:
            revert with 0, 'N-W'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
