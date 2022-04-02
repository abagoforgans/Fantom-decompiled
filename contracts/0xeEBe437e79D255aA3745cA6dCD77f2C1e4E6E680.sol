contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct sub_0007df30;
uint256 platformFee;
address sub_3740ebb3Address;

function sub_0007df30(?) {
    require calldata.size - 4 >= 64
    return sub_0007df30[arg1][arg2].field_0, 
           sub_0007df30[arg1][arg2].field_256,
           sub_0007df30[arg1][arg2].field_512,
           sub_0007df30[arg1][arg2].field_768,
           sub_0007df30[arg1][arg2].field_1024
}

function platformFee() {
    return platformFee
}

function sub_3740ebb3(?) {
    return sub_3740ebb3Address
}

function _fallback() payable {
    revert
}

function cancelListing(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if sub_0007df30[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0, 32, 39, 0xfe4e6f74206c6973746564204974656d206f72206e6f74206f776e696e6720746865206974656d, mem[523 len 25]
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != sub_0007df30[address(arg1)][arg2].field_0:
        revert with 0, 32, 39, 0xfe4e6f74206c6973746564204974656d206f72206e6f74206f776e696e6720746865206974656d, mem[523 len 25]
    sub_0007df30[address(arg1)][arg2].field_0 = 0
    sub_0007df30[address(arg1)][arg2].field_256 = 0
    sub_0007df30[address(arg1)][arg2].field_512 = 0
    sub_0007df30[address(arg1)][arg2].field_768 = 0
    sub_0007df30[address(arg1)][arg2].field_1024 = 0
    emit ItemCanceled(arg2, sub_0007df30[address(arg1)][arg2].field_0, arg1);
    stor0 = 1
}

function updateListing(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if sub_0007df30[address(arg1)][arg2].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe4e6f74206c6973746564204974656d206f72206e6f74206f776e696e6720746865206974656d,
                    mem[203 len 25]
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != sub_0007df30[address(arg1)][arg2].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe4e6f74206c6973746564204974656d206f72206e6f74206f776e696e6720746865206974656d,
                    mem[203 len 25]
    sub_0007df30[address(arg1)][arg2].field_512 = arg3
    emit ItemUpdated(arg2, arg3, msg.sender, arg1);
    stor0 = 1
}

function listItem(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) {
    require calldata.size - 4 >= 192
    if not ext_code.size(arg1):
        revert with 0, 'Invalid NFT address.'
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be owner of NFT.'
    require ext_code.size(arg1)
    staticcall arg1.isApprovedForAll(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Must be approved before list.'
    sub_0007df30[address(arg1)][arg2].field_0 = msg.sender
    sub_0007df30[address(arg1)][arg2].field_256 = arg3
    sub_0007df30[address(arg1)][arg2].field_512 = arg4
    sub_0007df30[address(arg1)][arg2].field_768 = arg5
    sub_0007df30[address(arg1)][arg2].field_1024 = arg6
    emit ItemListed(arg2, arg3, arg4, arg5, not arg6, arg6, msg.sender, arg1);
}

function buyItem(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != sub_0007df30[address(arg1)][arg2].field_0:
        revert with 0, 'Seller doesn't own the item.'
    if block.timestamp < sub_0007df30[address(arg1)][arg2].field_768:
        revert with 0, 'Item is not buyable yet.'
    if not sub_0007df30[address(arg1)][arg2].field_512:
        if msg.value < 0:
            revert with 0, 'Not enough amount to buy item.'
    else:
        if sub_0007df30[address(arg1)][arg2].field_256 * sub_0007df30[address(arg1)][arg2].field_512 / sub_0007df30[address(arg1)][arg2].field_512 != sub_0007df30[address(arg1)][arg2].field_256:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if msg.value < sub_0007df30[address(arg1)][arg2].field_256 * sub_0007df30[address(arg1)][arg2].field_512:
            revert with 0, 'Not enough amount to buy item.'
    if sub_0007df30[address(arg1)][arg2].field_1024:
        if sub_0007df30[address(arg1)][arg2].field_1024 != msg.sender:
            revert with 0, 32, 33, 0x77596f7520617265206e6f7420656c696761626c6520746f20627579206974656d, mem[517 len 31]
    if not msg.value:
        call sub_3740ebb3Address with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        call sub_0007df30[address(arg1)][arg2].field_0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if platformFee * msg.value / msg.value != platformFee:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        call sub_3740ebb3Address with:
           value platformFee * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if platformFee * msg.value / 1000 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        call sub_0007df30[address(arg1)][arg2].field_0 with:
           value msg.value - (platformFee * msg.value / 1000) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args sub_0007df30[address(arg1)][arg2].field_0, msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_0007df30[address(arg1)][arg2].field_0 = 0
    sub_0007df30[address(arg1)][arg2].field_256 = 0
    sub_0007df30[address(arg1)][arg2].field_512 = 0
    sub_0007df30[address(arg1)][arg2].field_768 = 0
    sub_0007df30[address(arg1)][arg2].field_1024 = 0
    emit 0xee0ddd64: arg2, msg.value, sub_0007df30[address(arg1)][arg2].field_0, msg.sender, arg1
    stor0 = 1
}



}
