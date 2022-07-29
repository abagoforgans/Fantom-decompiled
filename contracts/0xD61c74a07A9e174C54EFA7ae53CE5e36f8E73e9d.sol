contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.0x6a627842 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
