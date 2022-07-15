contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct deals;
array of uint256 sub_7e6e56d1;
uint256 stor3;

function deals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deals[arg1].field_0, 
           deals[arg1].field_256,
           deals[arg1].field_512,
           deals[arg1].field_768,
           deals[arg1].field_1024,
           deals[arg1].field_1280,
           bool(deals[arg1].field_1536)
}

function sub_7e6e56d1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7e6e56d1[address(arg1)]
}

function sub_7fc3c6a8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_7e6e56d1[arg1]
    return sub_7e6e56d1[arg1][arg2]
}

function _fallback() payable {
    revert
}

function cancel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == deals[arg1].field_0
    deals[arg1].field_1536 = 0
}

function create(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if stor3 == -1:
        revert with 'NH{q', 17
    stor3++
    sub_7e6e56d1[address(msg.sender)]++
    sub_7e6e56d1[address(msg.sender)][sub_7e6e56d1[address(msg.sender)]] = stor3
    deals[stor3].field_0 = msg.sender
    deals[stor3].field_256 = arg1
    deals[stor3].field_512 = arg2
    deals[stor3].field_768 = arg3
    deals[stor3].field_1024 = arg4
    deals[stor3].field_1280 = arg5
    deals[stor3].field_1536 = 1
    emit 0x1c07d8ea: stor3, msg.sender, arg1
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require msg.sender == deals[arg1].field_256
    require deals[arg1].field_1536
    deals[arg1].field_1536 = 0
    require ext_code.size(deals[arg1].field_768)
    call deals[arg1].field_768.0x23b872dd with:
         gas gas_remaining wei
        args deals[arg1].field_256, deals[arg1].field_0, deals[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(deals[arg1].field_512)
    call deals[arg1].field_512.0x23b872dd with:
         gas gas_remaining wei
        args deals[arg1].field_0, deals[arg1].field_256, deals[arg1].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor0 = 1
}



}
