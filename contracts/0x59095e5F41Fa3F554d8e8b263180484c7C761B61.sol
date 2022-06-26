contract main {




// =====================  Runtime code  =====================


address sub_fcb5427fAddress;
address stor1;

function sub_fcb5427f(?) {
    return sub_fcb5427fAddress
}

function _fallback() payable {
    revert
}

function getPair(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.0xe6a43905 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function BuyToken(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require 0 < arg1.length
    require 1 < arg1.length
    require ext_code.size(stor1)
    staticcall stor1.0xe6a43905 with:
            gas gas_remaining wei
           args address(mem[128]), mem[172 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'no pair'
    mem[(32 * arg1.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(sub_fcb5427fAddress)
    call sub_fcb5427fAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(arg2), block.timestamp + 60, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 292 len (32 * arg1.length) - floor32(arg1.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
