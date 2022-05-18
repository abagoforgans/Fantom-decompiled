contract main {




// =====================  Runtime code  =====================


address sub_12ee98bbAddress;

function sub_12ee98bb(?) payable {
    return sub_12ee98bbAddress
}

function _fallback() payable {
    revert
}

function swap() payable {
    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_12ee98bbAddress)
    call sub_12ee98bbAddress.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 1, 0, 10^6, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
