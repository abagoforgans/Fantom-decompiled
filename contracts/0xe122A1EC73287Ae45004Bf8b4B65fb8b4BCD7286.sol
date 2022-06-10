contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function onERC721Received(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Mask(32, 224, sha3('onERC721Received(address,address', ',uint256,bytes)'))
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
