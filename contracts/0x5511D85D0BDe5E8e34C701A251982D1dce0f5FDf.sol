contract main {




// =====================  Runtime code  =====================


#
#  - sub_026485d4(?)
#  - sub_980f2e66(?)
#  - getCampaignById(uint256 arg1)
#
address owner;
uint256 sub_e939ca0a;
mapping of struct stor2;
array of uint256 sub_0abd9563;
array of uint256 sub_ddc8af61;
mapping of uint256 sub_3c526f98;
address stor6;
address sub_01ada78aAddress;

function sub_01ada78a(?) payable {
    return sub_01ada78aAddress
}

function sub_0abd9563(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_0abd9563[arg1]
    return sub_0abd9563[arg1][arg2]
}

function sub_3c526f98(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_3c526f98[arg1][arg2]
}

function owner() payable {
    return owner
}

function sub_d7bd59d0(?) payable {
    require calldata.size - 4 >= 32
    return sub_3c526f98[arg1][msg.sender]
}

function sub_ddc8af61(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_ddc8af61[arg1]
    return sub_ddc8af61[arg1][arg2]
}

function sub_e939ca0a(?) payable {
    return sub_e939ca0a
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_85fa74bc(?) payable {
    require calldata.size - 4 >= 64
    if stor2[arg1].field_1800:
        revert with 0, 'Campaign must be expired.'
    if stor2[arg1].field_1792:
        revert with 0, 'Campaign must be not successful.'
    if arg2 > sub_3c526f98[arg1][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Asked for withdrawal of funds more than deposited.'
    if sub_3c526f98[arg1][msg.sender] < arg2:
        revert with 0, 17
    sub_3c526f98[arg1][msg.sender] -= arg2
    if stor2[arg1].field_768 < arg2:
        revert with 0, 17
    stor2[arg1].field_768 -= arg2
    require ext_code.size(stor6)
    call stor6.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function donate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor2[arg1].field_1800) != 1:
        revert with 0, 'Campaign must be active.'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be greater than zero.'
    require ext_code.size(stor6)
    call stor6.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, sub_01ada78aAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Error during transfer'
    if stor2[arg1].field_768 > !arg2:
        revert with 0, 17
    stor2[arg1].field_768 += arg2
    if sub_3c526f98[arg1][msg.sender] > !arg2:
        revert with 0, 17
    sub_3c526f98[arg1][msg.sender] += arg2
    emit 0x1f514d1b: arg1, msg.sender, arg2, stor2[arg1].field_768
    if stor2[arg1].field_768 >= stor2[arg1].field_512:
        stor2[arg1].field_1792 = 1
        stor2[arg1].field_1800 = 0
        require ext_code.size(stor6)
        call stor6.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor2[arg1].field_256, stor2[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 1 == bool(stor2[arg1].field_1800):
        if block.timestamp >= stor2[arg1].field_2048:
            stor2[arg1].field_1800 = 0
}

function sub_7fa9d037(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 99 < 98 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 99 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if bool(stor2[arg1].field_1800) != 1:
        revert with 0, 'Campaign must be active.'
    if stor2[arg1].field_256 != msg.sender:
        revert with 0, 'Must be a creator of a campaign to be able to edit it.'
    if stor2[arg1].field_1024:
        if stor2[arg1].field_1024 == uint255(stor2[arg1].field_1024) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor2[arg1][4][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[arg1].field_1024 = 0
            idx = 0
            while (uint255(stor2[arg1].field_1024) * 0.5) + 31 / 32 > idx:
                stor2[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[arg1].field_1024 == stor2[arg1].field_1025 < 32:
            revert with 0, 34
        if arg2.length:
            stor2[arg1][4][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor2[arg1].field_1024 = 0
            idx = 0
            while stor2[arg1].field_1025 + 31 / 32 > idx:
                stor2[arg1][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    if stor2[arg1].field_1280:
        if stor2[arg1].field_1280 == uint255(stor2[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor2[arg1][5][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor2[arg1].field_1280 = 0
            idx = 0
            while (uint255(stor2[arg1].field_1280) * 0.5) + 31 / 32 > idx:
                stor2[arg1][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[arg1].field_1280 == stor2[arg1].field_1281 < 32:
            revert with 0, 34
        if arg3.length:
            stor2[arg1][5][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor2[arg1].field_1280 = 0
            idx = 0
            while stor2[arg1].field_1281 + 31 / 32 > idx:
                stor2[arg1][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
    if stor2[arg1].field_1536:
        if stor2[arg1].field_1536 == uint255(stor2[arg1].field_1536) * 0.5 < 32:
            revert with 0, 34
        if arg4.length:
            stor2[arg1][6][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor2[arg1].field_1536 = 0
            idx = 0
            while (uint255(stor2[arg1].field_1536) * 0.5) + 31 / 32 > idx:
                stor2[arg1][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[arg1].field_1536 == stor2[arg1].field_1537 < 32:
            revert with 0, 34
        if arg4.length:
            stor2[arg1][6][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor2[arg1].field_1536 = 0
            idx = 0
            while stor2[arg1].field_1537 + 31 / 32 > idx:
                stor2[arg1][idx + 6].field_0 = 0
                idx = idx + 1
                continue 
}



}
