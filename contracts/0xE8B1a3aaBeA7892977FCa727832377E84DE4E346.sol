contract main {




// =====================  Runtime code  =====================


address owner;
address sub_3e5f13d4Address;
address tombAddress;
mapping of uint256 sub_e3f7d122;
mapping of uint256 sub_87e45772;
mapping of uint256 sub_2a465d17;
mapping of uint8 sub_3e38ea08;
mapping of uint8 stor7;
uint256 sub_bcf6dc5d;
uint256 sub_9e61f9bf;
uint256 stor2E17;
uint256 stor8983;
uint256 stor91DA;
uint256 storA9BC;
uint256 storC3A2;
uint256 storCBC4;

function sub_159cdd9a(?) payable {
    return sub_bcf6dc5d
}

function sub_2a465d17(?) payable {
    require calldata.size - 4 >= 32
    return sub_2a465d17[arg1]
}

function sub_3e38ea08(?) payable {
    require calldata.size - 4 >= 32
    return sub_3e38ea08[arg1]
}

function sub_3e5f13d4(?) payable {
    return sub_3e5f13d4Address
}

function sub_7e7d7889(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function sub_87e45772(?) payable {
    require calldata.size - 4 >= 32
    return sub_87e45772[arg1]
}

function owner() payable {
    return owner
}

function sub_9bf5e638(?) payable {
    return sub_9e61f9bf
}

function sub_9e61f9bf(?) payable {
    return sub_9e61f9bf
}

function sub_ae8da9b4(?) payable {
    require calldata.size - 4 >= 32
    return sub_3e38ea08[address(arg1)]
}

function sub_bcf6dc5d(?) payable {
    return sub_bcf6dc5d
}

function tomb() payable {
    return tombAddress
}

function sub_e3f7d122(?) payable {
    require calldata.size - 4 >= 32
    return sub_e3f7d122[arg1]
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

function sub_d61e1724(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'tierId has to be 1,2 or 3'
    if arg1 >= 4:
        revert with 0, 'tierId has to be 1,2 or 3'
    if sub_2a465d17[arg1 << 248] > sub_87e45772[arg1 << 248]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_87e45772[arg1 << 248] - sub_2a465d17[arg1 << 248])
}

function sub_1294ff71(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'price cannot be 0'
    if arg1 >= arg2:
        revert with 0, 'tier1 needs to be the cheapest'
    if arg2 >= arg3:
        revert with 0, 'tier1 needs to be the cheapest'
    sub_e3f7d122[1] = arg1
    storC3A2 = arg2
    storCBC4 = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9e61f9bf = block.timestamp
    require ext_code.size(tombAddress)
    staticcall tombAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tombAddress)
    call tombAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_dc32cf8c(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= sub_9e61f9bf:
        revert with 0, 'too early'
    require ext_code.size(tombAddress)
    staticcall tombAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tombAddress)
    call tombAddress.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x540d60e8: ext_call.return_data[0], msg.sender
}

function sub_0a69bbfc(?) payable {
    require calldata.size - 4 >= 32
    if stor91DA + sub_87e45772[1] < sub_87e45772[1]:
        revert with 0, 'SafeMath: addition overflow'
    if stor2E17 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if stor2E17 + stor91DA + sub_87e45772[1] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor2E17 + stor91DA + sub_87e45772[1]
    if not sub_87e45772[arg1 << 248] / stor2E17 + stor91DA + sub_87e45772[1]:
        return 0
    if 10000 * sub_87e45772[arg1 << 248] / stor2E17 + stor91DA + sub_87e45772[1] / sub_87e45772[arg1 << 248] / stor2E17 + stor91DA + sub_87e45772[1] != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (10000 * sub_87e45772[arg1 << 248] / stor2E17 + stor91DA + sub_87e45772[1])
}

function sub_1f699305(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'seats cannot be 0'
    if arg2 <= 0:
        revert with 0, 'seats cannot be 0'
    if arg3 <= 0:
        revert with 0, 'seats cannot be 0'
    if arg1 <= arg2:
        revert with 0, 'tier1 needs most seats'
    if arg2 <= arg3:
        revert with 0, 'tier1 needs most seats'
    if arg4 <= 0:
        revert with 0, 'seats cannot be 0'
    if arg5 <= 0:
        revert with 0, 'seats cannot be 0'
    if arg6 <= 0:
        revert with 0, 'seats cannot be 0'
    if arg4 >= arg5:
        revert with 0, 'tier1 needs to be the cheapest'
    if arg5 >= arg6:
        revert with 0, 'tier1 needs to be the cheapest'
    sub_87e45772[1] = arg1
    stor91DA = arg2
    stor2E17 = arg3
    sub_2a465d17[1] = arg1
    stor8983 = arg2
    storA9BC = arg3
    sub_e3f7d122[1] = arg4
    storC3A2 = arg5
    storCBC4 = arg6
}

function sub_032c1a7a(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_bcf6dc5d:
        revert with 0, 'early'
    if block.timestamp > sub_9e61f9bf:
        revert with 0, 'late'
    if stor7[msg.sender]:
        revert with 0, 'sender already has a seat'
    if arg1 <= 0:
        revert with 0, 'tierId has to be 1, 2 or 3'
    if arg1 > 3:
        revert with 0, 'tierId has to be 1, 2 or 3'
    if not sub_2a465d17[arg1 << 248]:
        revert with 0, 'there are no free seats'
    require ext_code.size(sub_3e5f13d4Address)
    call sub_3e5f13d4Address.taxFreeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, sub_e3f7d122[arg1 << 248]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor7[msg.sender] = 1
    sub_3e38ea08[msg.sender] = arg1
    if 1 > sub_2a465d17[arg1 << 248]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_2a465d17[arg1 << 248]--
    emit 0x62b52d53: arg1 << 248, sub_e3f7d122[arg1 << 248], msg.sender
    if sub_87e45772[1] <= sub_2a465d17[1]:
        if stor91DA <= stor8983:
            if storA9BC >= stor2E17:
                sub_9e61f9bf = block.timestamp
}



}
