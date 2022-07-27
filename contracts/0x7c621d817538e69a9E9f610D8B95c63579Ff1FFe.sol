contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address testAddress;
array of struct sub_eaa42568;
mapping of struct stor4;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_eaa42568.length
    return sub_eaa42568[arg1].field_0, 
           sub_eaa42568[arg1].field_256,
           bool(sub_eaa42568[arg1].field_512),
           sub_eaa42568[arg1].field_768
}

function owner() payable {
    return owner
}

function sub_eaa42568(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_eaa42568.length:
        revert with 'NH{q', 50
    return sub_eaa42568[arg1].field_0, 
           sub_eaa42568[arg1].field_256,
           bool(sub_eaa42568[arg1].field_512),
           sub_eaa42568[arg1].field_768
}

function test() payable {
    return testAddress
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

function sub_df945c6e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= sub_eaa42568.length:
        revert with 'NH{q', 50
    sub_eaa42568[arg1].field_512 = 0
    stor1 = 1
}

function poolLength() payable {
    require ext_code.size(testAddress)
    staticcall testAddress.lastHarvest() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return sub_eaa42568.length, ext_call.return_data[0]
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

function sub_5f17e616(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= sub_eaa42568.length:
        revert with 'NH{q', 50
    sub_eaa42568[arg1].field_768 = arg2
    stor1 = 1
}

function sub_d36bbf44(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor4[arg1].field_0)
    call stor4[arg1].field_0.set_fee(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_5a52e16e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor4[arg1].field_0)
    call stor4[arg1].field_0.0x4641257d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= sub_eaa42568.length:
        revert with 'NH{q', 50
    sub_eaa42568[arg1].field_256 = block.timestamp
    stor1 = 1
}

function addAddress(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    stor4[stor3.length].field_0 = arg1
    stor4[stor3.length].field_256 = 0
    stor4[stor3.length].field_512 = 1
    stor4[stor3.length].field_768 = arg2
    sub_eaa42568.length++
    sub_eaa42568[sub_eaa42568.length].field_0 = stor4[stor3.length].field_0
    sub_eaa42568[sub_eaa42568.length].field_256 = stor4[stor3.length].field_256
    sub_eaa42568[sub_eaa42568.length].field_512 = uint8(bool(stor4[stor3.length].field_512))
    sub_eaa42568[sub_eaa42568.length].field_768 = stor4[stor3.length].field_768
    stor1 = 1
}



}
