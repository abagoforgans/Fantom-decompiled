contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function fetchToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != 0x3d05b64af3f7f991c703c9d7a95f30111f9dcfab:
        require 0x6e4084315030747edd36e5780e0f4e6879d9a1db == msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exit() payable {
    require ext_code.size(0x49c93a95dbcc9a6a4d8f77e59c038ce5020e82f8)
    call 0x49c93a95dbcc9a6a4d8f77e59c038ce5020e82f8.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xd8321aa83fb0a4ecd6348d4577431310a6e0814d)
    staticcall 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd8321aa83fb0a4ecd6348d4577431310a6e0814d)
    call 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x3d05b64af3f7f991c703c9d7a95f30111f9dcfab, ext_call.return_data[0] / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xd8321aa83fb0a4ecd6348d4577431310a6e0814d)
    call 0xd8321aa83fb0a4ecd6348d4577431310a6e0814d.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x6e4084315030747edd36e5780e0f4e6879d9a1db, ext_call.return_data[0] / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
