contract main {




// =====================  Runtime code  =====================


const x = 123


address sub_fcec0dfaAddress;

function sub_fcec0dfa(?) payable {
    return sub_fcec0dfaAddress
}

function _fallback() payable {
    revert
}

function sub_d8ff62c6(?) payable {
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0xe95dc522 with:
         gas gas_remaining wei
        args 0, 0, 1, 2 * 10^18, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function y() payable {
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.coins(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_fcec0dfaAddress = ext_call.return_data[12 len 20]
    return sub_fcec0dfaAddress
}

function sub_f8e4f240(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x27e611fd27b276acbd5ffd632e5eaebec9761e40, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
