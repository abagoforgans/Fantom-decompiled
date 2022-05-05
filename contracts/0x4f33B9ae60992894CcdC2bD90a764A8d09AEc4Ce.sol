contract main {




// =====================  Runtime code  =====================


#
#  - sub_cf29a21c(?)
#
function _fallback() payable {
    revert
}

function ok() payable {
    mem[260 len 160] = 0, 0, 1, 10^18, 1, mem[260 len 28]
    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.mem[260 len 4] with:
         gas gas_remaining wei
        args mem[264 len 128]
    return bool(ext_call.success)
}

function sub_b22be9c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call 0x5638f545c240e52920f49c035ba6e85846d229d6 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x5638f545c240e52920f49c035ba6e85846d229d6, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}



}
