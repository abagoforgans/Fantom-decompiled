contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function payOut() {
    if stor0[address(msg.sender)].field_0:
        if stor0[address(msg.sender)].field_256 < block.timestamp:
            call msg.sender with:
               value stor0[address(msg.sender)].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor0[address(msg.sender)].field_0 = 0
            stor0[address(msg.sender)].field_256 = 0
}

function payIn() payable {
    if stor0[address(msg.sender)].field_0:
        if stor0[address(msg.sender)].field_256 < block.timestamp:
            call msg.sender with:
               value stor0[address(msg.sender)].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor0[address(msg.sender)].field_0 = 0
            stor0[address(msg.sender)].field_256 = 0
    if stor0[address(msg.sender)].field_0 <= 0:
        stor0[address(msg.sender)].field_0 = msg.value
        stor0[address(msg.sender)].field_256 = block.timestamp + 13148730
    else:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
