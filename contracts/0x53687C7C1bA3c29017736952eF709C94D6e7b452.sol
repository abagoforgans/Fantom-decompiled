contract main {




// =====================  Runtime code  =====================


address owner;
array of address sub_a4ed8789;
mapping of address sub_bb19dd08;
uint8 sub_b36f6873;
uint8 step; offset 168
address stor3;
address nFTAddress; offset 8
address feeCollectorAddress;

function getFeeCollector() payable {
    return feeCollectorAddress
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

function sub_c275f14e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(nFTAddress)
    staticcall nFTAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Must be an owner to spawn an auction'
    require ext_code.size(sub_bb19dd08[arg1])
    staticcall sub_bb19dd08[arg1].live() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'There is already a running auction for the token'
    create contract with 0 wei
                    code: code.data[4809 len 7718], arg1, stor3, arg2, arg3, sub_b36f6873, sub_b36f6873, msg.sender, feeCollectorAddress, msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_a4ed8789.length++
    sub_a4ed8789[sub_a4ed8789.length] = address(create.new_address)
    sub_bb19dd08[arg1] = address(create.new_address)
}



}
