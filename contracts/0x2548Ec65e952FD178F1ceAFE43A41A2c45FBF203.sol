contract main {




// =====================  Runtime code  =====================


uint256 sub_758c6c9d;

function sub_758c6c9d(?) payable {
    return sub_758c6c9d
}

function _fallback() payable {
    revert
}

function sub_58e4958e(?) payable {
    if block.timestamp <= sub_758c6c9d + (72 * 24 * 3600):
        revert with 0, 'Can only call every 3 days'
    require ext_code.size(0x38aca5484b8603373acc6961ecd57a6a594510a3)
    staticcall 0x38aca5484b8603373acc6961ecd57a6a594510a3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d068)
        call 0x9fad24f572045c7869117160a571b2e50b10d068.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0x321162cd933e2be498cd2267a90534a804051b11, ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x3a1659ddcf2339be3aea159ca010979fb49155ff)
        call 0x3a1659ddcf2339be3aea159ca010979fb49155ff.exchange(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 1, 0, ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x9fad24f572045c7869117160a571b2e50b10d068)
        call 0x9fad24f572045c7869117160a571b2e50b10d068.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args 0, 1664760954, ext_call.return_data[0], this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x940f41f0ec9ba1a34cf001cc03347ac092f5f6b5)
    staticcall 0x940f41f0ec9ba1a34cf001cc03347ac092f5f6b5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0xfa949783947bf6c1b171db13aeacbb488845b3f)
        call 0x0fa949783947bf6c1b171db13aeacbb488845b3f.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 2, 0, ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xe578c856933d8e1082740bf7661e379aa2a30b26)
    staticcall 0xe578c856933d8e1082740bf7661e379aa2a30b26.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0xfa949783947bf6c1b171db13aeacbb488845b3f)
        call 0x0fa949783947bf6c1b171db13aeacbb488845b3f.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 1, 0, ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x7e6332dd090d287d3489245038daf987955dcfb)
    staticcall 0x7e6332dd090d287d3489245038daf987955dcfb.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x7e6332dd090d287d3489245038daf987955dcfb)
        call 0x07e6332dd090d287d3489245038daf987955dcfb.0xa9059cbb with:
             gas gas_remaining wei
            args 0x49c93a95dbcc9a6a4d8f77e59c038ce5020e82f8, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_758c6c9d = block.timestamp
}



}
