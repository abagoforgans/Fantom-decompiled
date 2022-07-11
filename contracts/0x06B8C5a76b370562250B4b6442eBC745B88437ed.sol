contract main {




// =====================  Runtime code  =====================


const swap = address(this.address)


address sub_cce061e0Address;

function sub_cce061e0(?) payable {
    return sub_cce061e0Address
}

function _fallback() payable {
    revert
}

function getVirtualPrice() payable {
    require ext_code.size(sub_cce061e0Address)
    staticcall sub_cce061e0Address.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
