contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address WFTMAddress;

function WFTM() {
    return WFTMAddress
}

function _fallback() payable {
    revert
}

function deposit() payable {
    require ext_code.size(WFTMAddress)
    call WFTMAddress.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function test1(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(WFTMAddress)
    call WFTMAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_aff2770c(?) {
    require ext_code.size(WFTMAddress)
    staticcall WFTMAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw() {
    require ext_code.size(WFTMAddress)
    staticcall WFTMAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WFTMAddress)
    call WFTMAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0c22faa1(?) {
    require ext_code.size(WFTMAddress)
    staticcall WFTMAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(WFTMAddress)
    call WFTMAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call this.address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
