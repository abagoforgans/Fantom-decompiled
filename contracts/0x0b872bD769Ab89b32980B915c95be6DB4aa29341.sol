contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 10^17
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
