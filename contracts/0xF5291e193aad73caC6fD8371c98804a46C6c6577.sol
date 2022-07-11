contract main {




// =====================  Runtime code  =====================


address sub_f04f721dAddress;
uint256 unlockTimestamp;

function unlockTimestamp() payable {
    return unlockTimestamp
}

function sub_f04f721d(?) payable {
    return sub_f04f721dAddress
}

function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_f04f721dAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdraw: Boo!!! go away!!! You are not a witch'
    if block.timestamp <= unlockTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'withdraw: The magic spell is not ready yet, check after halloween'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
