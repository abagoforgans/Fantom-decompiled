contract main {




// =====================  Runtime code  =====================


address owner;
array of address sub_a4ed8789;
mapping of uint8 stor2;
mapping of address sub_bb19dd08;
uint8 sub_b36f6873;
uint8 step; offset 168
address stor4;
address nFTAddress; offset 8
address feeCollectorAddress;
address sub_2f95fe6eAddress;

function getFeeCollector() payable {
    return feeCollectorAddress
}

function sub_2f95fe6e(?) payable {
    return sub_2f95fe6eAddress
}

function owner() payable {
    return owner
}

function getStep() payable {
    return step
}

function sub_a4ed8789(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a4ed8789.length
    return sub_a4ed8789[arg1]
}

function sub_b36f6873(?) payable {
    return sub_b36f6873
}

function getNFTAddress() payable {
    return nFTAddress
}

function sub_bb19dd08(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_bb19dd08[arg1]
}

function sub_e8e8ec6f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setStep(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    step = arg1
}

function setNFTAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nFTAddress = arg1
}

function sub_adb509ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b36f6873 = uint8(arg1)
}

function setFeeCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeCollectorAddress = arg1
}

function sub_5638abb4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2f95fe6eAddress = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_fa9f8983(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0, 'AuctionFactory: not an auction'
    require ext_code.size(sub_2f95fe6eAddress)
    call sub_2f95fe6eAddress.0x5c628a28 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(nFTAddress)
    staticcall nFTAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be an owner to spawn an auction'
    create contract with 0 wei
                    code: code.data[7345 len 9706], arg1, stor4, arg2, arg3, sub_b36f6873, sub_b36f6873, msg.sender, feeCollectorAddress, msg.sender, sub_2f95fe6eAddress, this.address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nFTAddress)
    call nFTAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_a4ed8789.length++
    sub_a4ed8789[sub_a4ed8789.length] = address(create.new_address)
    stor2[address(create.new_address)] = 1
    sub_bb19dd08[arg1] = address(create.new_address)
}

function sub_ad62080d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_bb19dd08[arg1])
    staticcall sub_bb19dd08[arg1].winning() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bb19dd08[arg1])
    staticcall sub_bb19dd08[arg1].live() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_bb19dd08[arg1])
    staticcall sub_bb19dd08[arg1].ended() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_bb19dd08[arg1])
    staticcall sub_bb19dd08[arg1].lastBid() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_bb19dd08[arg1])
    staticcall sub_bb19dd08[arg1].0xd02f576a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_bb19dd08[arg1])
    staticcall sub_bb19dd08[arg1].startTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_bb19dd08[arg1])
    staticcall sub_bb19dd08[arg1].endTime() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_bb19dd08[arg1])
    staticcall sub_bb19dd08[arg1].seller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return sub_bb19dd08[arg1], 
           address(ext_call.return_data[0]),
           bool(ext_call.return_data[0]),
           bool(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           address(ext_call.return_data[0])
}



}
