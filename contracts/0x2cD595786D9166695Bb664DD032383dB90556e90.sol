contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function pause() {
    require msg.sender == address(stor1.field_0)
    Mask(96, 0, stor1.field_160) = 1
}

function unpause() {
    require msg.sender == address(stor1.field_0)
    Mask(96, 0, stor1.field_160) = 0
}

function sub_18385f48(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768, bool(stor0[arg1].field_1024)
}

function sub_a93c261e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_160):
        revert with 0, 'contract is paused'
    require ext_code.size(stor2)
    call stor2.ownerOf(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you do not own that token'
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_768 = 0
    stor0[arg1].field_1024 = 0
    emit 0x4e02dcf0: arg1
}

function sub_25227892(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    if uint8(stor1.field_160):
        revert with 0, 'contract is paused'
    require ext_code.size(stor2)
    call stor2.ownerOf(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you do not own that token'
    stor0[arg1].field_0 = msg.sender
    stor0[arg1].field_256 = address(arg3)
    stor0[arg1].field_512 = arg1
    stor0[arg1].field_768 = arg2
    stor0[arg1].field_1024 = 1
    emit 0xe5341373: arg2, msg.sender, address(arg3), arg1
}

function acceptTrade(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_160):
        revert with 0, 'contract is paused'
    require ext_code.size(stor2)
    call stor2.ownerOf(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you do not own that token'
    if bool(stor0[arg1].field_1024) != 1:
        revert with 0, 'trade does not exist'
    if stor0[arg1].field_256 != msg.sender:
        revert with 0, 'you are not the receiver of this trade'
    if msg.value < stor0[arg1].field_768:
        revert with 0, 'not enough funds sent'
    call stor0[arg1].field_0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args stor0[arg1].field_0, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor1.field_160):
        revert with 0, 'contract is paused'
    require ext_code.size(stor2)
    call stor2.ownerOf(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you do not own that token'
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_512 = 0
    stor0[arg1].field_768 = 0
    stor0[arg1].field_1024 = 0
    emit 0x4e02dcf0: arg1
    emit Trade(msg.value, stor0[arg1].field_0, msg.sender, 1);
}



}
