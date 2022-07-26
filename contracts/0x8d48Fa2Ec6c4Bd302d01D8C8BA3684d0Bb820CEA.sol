contract main {




// =====================  Runtime code  =====================


#
#  - sub_66bfb0c5(?)
#
address owner;
array of struct sub_22d9246b;
mapping of uint256 stor2;

function sub_22d9246b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if arg1 > sub_22d9246b.length - 1:
        revert with 0, 'index out of bounds'
    if arg1 >= sub_22d9246b.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return sub_22d9246b[arg1].field_0
}

function sub_689ab749(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function owner() payable {
    return owner
}

function sub_b1bb92e6(?) payable {
    return sub_22d9246b.length
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

function sub_b8b60ba7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '_addMinter is the zero address'
    if stor2[address(arg1)]:
        return 0
    sub_22d9246b.length++
    sub_22d9246b[sub_22d9246b.length].field_0 = arg1
    sub_22d9246b[sub_22d9246b.length].field_160 = 0
    stor2[address(arg1)] = sub_22d9246b.length
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

function sub_cab1d3af(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'YOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '_delMinter is the zero address'
    if not stor2[address(arg1)]:
        return 0
    require sub_22d9246b.length - 1 < sub_22d9246b.length
    require stor2[address(arg1)] - 1 < sub_22d9246b.length
    sub_22d9246b[stor2[address(arg1)]].field_0 = sub_22d9246b[sub_22d9246b.length].field_0
    stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
    require sub_22d9246b.length
    sub_22d9246b[sub_22d9246b.length].field_0 = 0
    sub_22d9246b.length--
    stor2[address(arg1)] = 0
    return 1
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
