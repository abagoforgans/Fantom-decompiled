contract main {




// =====================  Runtime code  =====================


address storeAddress;
mapping of struct sub_92ebea20;

function sub_92ebea20(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_92ebea20[arg1].field_0, sub_92ebea20[arg1].field_256
}

function store() payable {
    return storeAddress
}

function sub_e497ec8d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_92ebea20[address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0, 'Governable: New storage shouldn't be empty'
    storeAddress = arg1
}

function sub_7e91dd50(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Controllable: Not a controller'
    if sub_92ebea20[address(arg1)].field_0 > -2592001:
        revert with 'NH{q', 17
    if sub_92ebea20[address(arg1)].field_0 + (720 * 24 * 3600) < block.timestamp:
        sub_92ebea20[address(arg1)].field_0 = block.timestamp
        sub_92ebea20[address(arg1)].field_256 = 0
    if sub_92ebea20[address(arg1)].field_256 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_92ebea20[address(arg1)].field_256 += arg2
}



}
