contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function verify_relay_staker_address(int8 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == ('signextend', 0, ('param', 'arg1'))
    emit RelayAddressVerified(msg.sender, ('signextend', 0, ('param', 'arg1')), arg2);
}



}
