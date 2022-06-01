contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
uint256 stor2;

function _fallback() payable {
    revert
}

function pause() {
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you are not the deployer of this contract'
    Mask(96, 0, stor1.field_160) = 1
}

function unpause() {
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you are not the deployer of this contract'
    Mask(96, 0, stor1.field_160) = 0
}

function sub_7ef60302(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return stor0[arg1][arg2].field_0, stor0[arg1][arg2].field_256, stor0[arg1][arg2].field_512, bool(stor0[arg1][arg2].field_768)
}

function setFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you are not the deployer of this contract'
    stor2 = arg1
}

function withdraw() {
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you are not the deployer of this contract'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_786e3219(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if uint8(stor1.field_160):
        revert with 0, 'contract is paused'
    require ext_code.size(address(arg1))
    call address(arg1).ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you do not own that token'
    stor0[address(arg1)][arg2].field_0 = 0
    stor0[address(arg1)][arg2].field_256 = 0
    stor0[address(arg1)][arg2].field_256 = 0
    stor0[address(arg1)][arg2].field_512 = 0
    stor0[address(arg1)][arg2].field_768 = 0
    emit 0xa6ba7162: address(arg1), arg2
}

function createTrade(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor1.field_160):
        revert with 0, 'contract is paused'
    require ext_code.size(arg1)
    call arg1.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you do not own that token'
    stor0[address(arg1)][arg2].field_0 = arg1
    stor0[address(arg1)][arg2].field_256 = arg2
    stor0[address(arg1)][arg2].field_512 = arg3
    stor0[address(arg1)][arg2].field_768 = 1
    emit 0x73e7cc0c: msg.sender, arg3, arg1, arg2
}

function sub_7297f2e9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if uint8(stor1.field_160):
        revert with 0, 'contract is paused'
    if bool(stor0[address(arg1)][arg2].field_768) != 1:
        revert with 0, 'trade does not exist'
    if msg.value < stor0[address(arg1)][arg2].field_512:
        revert with 0, 'not enough funds sent'
    if msg.value and stor2 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value < msg.value * stor2 / 100:
        revert with 'NH{q', 17
    require ext_code.size(address(arg1))
    call address(arg1).ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value msg.value - (msg.value * stor2 / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(stor1.field_0) with:
       value msg.value * stor2 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(address(arg1))
    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor1.field_160):
        revert with 0, 'contract is paused'
    require ext_code.size(address(arg1))
    call address(arg1).ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you do not own that token'
    stor0[address(arg1)][arg2].field_0 = 0
    stor0[address(arg1)][arg2].field_256 = 0
    stor0[address(arg1)][arg2].field_256 = 0
    stor0[address(arg1)][arg2].field_512 = 0
    stor0[address(arg1)][arg2].field_768 = 0
    emit 0xa6ba7162: address(arg1), arg2
    emit 0x35c06e2c: msg.sender, msg.value, address(arg1), arg2
}



}
