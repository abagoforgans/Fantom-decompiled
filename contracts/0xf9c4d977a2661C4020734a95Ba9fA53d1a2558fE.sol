contract main {




// =====================  Runtime code  =====================


address sub_f36ef8d3Address;

function sub_f36ef8d3(?) payable {
    return sub_f36ef8d3Address
}

function _fallback() payable {
    revert
}

function voterCallsFinalizeRefundMainDapp() payable {
    call sub_f36ef8d3Address.voterCallsFinalizeRefund(address rg1) with:
         gas gas_remaining wei
        args Mask(224, 32, msg.sender) >> 32, mem[196 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 37, 0xfe566f7465722046696e616c697a6174696f6e20526566756e642063616c6c206661696c65, mem[269 len 27]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        37,
                        0xfe566f7465722046696e616c697a6174696f6e20526566756e642063616c6c206661696c65,
                        mem[ceil32(return_data.size) + 270 len 27]
    ('bool', 'ext_call.success')
}



}
