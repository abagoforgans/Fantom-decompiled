contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function craft(uint256 arg1, uint8 arg2, uint8 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
    staticcall 0xf41270836df4db1d28f7fd0935270e3a603e78cc.simulate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
            gas gas_remaining wei
           args 0, uint32(arg1), arg2 << 248, arg3 << 248, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
        call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.next_item() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
        call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.0x65f1bfc4 with:
             gas gas_remaining wei
            args arg1, arg2 << 248, arg3 << 248, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xf41270836df4db1d28f7fd0935270e3a603e78cc)
        call 0xf41270836df4db1d28f7fd0935270e3a603e78cc.0x23b872dd with:
             gas gas_remaining wei
            args this.address, 0xecef69a9b88614a572943d0ae1370d1ab5f47b42, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}



}
