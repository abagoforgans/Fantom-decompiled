contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function _fallback() payable {
    revert
}

function drop(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(msg.sender)][address(arg1)]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 1000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        stor0[address(msg.sender)][address(arg1)] = 1
}



}
