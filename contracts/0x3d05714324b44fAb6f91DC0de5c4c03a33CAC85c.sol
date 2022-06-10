contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x11111ecab79526a489f5dc7e71510237ccb02ac8, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_12ea6c7b(?) {
    idx = 0
    while idx < arg2:
        mem[100] = (idx % 11) + 1
        require ext_code.size(arg1)
        call arg1.summon(uint256 arg1) with:
             gas gas_remaining wei
            args ((idx % 11) + 1)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        idx = idx + 1
        continue 
}

function sub_4815d581(?) {
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[164] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
