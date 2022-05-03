contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_c6c7ba5b(?) payable {
    require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
    call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.0xe95dc522 with:
         gas gas_remaining wei
        args 0, 0, 1, 2 * 10^18, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_767216bc(?) payable {
    require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
    call 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 3 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2b97abd5(?) payable {
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

function sub_710918fc(?) payable {
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

function sub_b22be9c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args 0x5638f545c240e52920f49c035ba6e85846d229d6, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}



}
