contract main {




// =====================  Runtime code  =====================


#
#  - swapBot(uint256 arg1, address[] arg2, address[] arg3)
#
address owner;
array of struct minter;
mapping of uint256 stor2;

function getMinterLength() payable {
    return minter.length
}

function getMinter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if arg1 > minter.length - 1:
        revert with 0, 'index out of bounds'
    if arg1 >= minter.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return minter[arg1].field_0
}

function owner() payable {
    return owner
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '_addMinter is the zero address'
    if stor2[address(arg1)]:
        return 0
    minter.length++
    minter[minter.length].field_0 = arg1
    minter[minter.length].field_160 = 0
    stor2[address(arg1)] = minter.length
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function delMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '_delMinter is the zero address'
    if not stor2[address(arg1)]:
        return 0
    require minter.length - 1 < minter.length
    require stor2[address(arg1)] - 1 < minter.length
    minter[stor2[address(arg1)]].field_0 = minter[minter.length].field_0
    stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
    require minter.length
    minter[minter.length].field_0 = 0
    minter.length--
    stor2[address(arg1)] = 0
    return 1
}

function reclaimToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_eb1a641d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Bot: ZERO_ADDRESS'
    if not eth.balance(this.address):
        revert with 0, 'Bot: ZERO_BALANCE'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x725472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x725472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
}

function sub_45c50b08(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Bot: ZERO_ADDRESS'
    if arg2 <= 0:
        revert with 0, 'Bot: ZERO_ADDRESS'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Bot: BALANCE < amount'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x725472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x725472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
}

function sub_94cc7554(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg2:
        revert with 0, 'Bot: ZERO_ADDRESS'
    if not arg1:
        revert with 0, 'Bot: ZERO_Token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Bot: ZERO_BALANCE'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_593a7039(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg2:
        revert with 0, 'Bot: ZERO_ADDRESS'
    if not arg1:
        revert with 0, 'Bot: ZERO_Token'
    if arg3 <= 0:
        revert with 0, 'Bot: ZERO_ADDRESS'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Bot: BALANCE < amount'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}



}
