contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 sub_c68f9a77;
mapping of uint8 stor3;

function sub_5a15e2b9(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function owner() payable {
    return owner
}

function sub_c68f9a77(?) payable {
    require calldata.size - 4 >= 64
    return sub_c68f9a77[arg1][arg2]
}

function getBonusOnFarmsForUser(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sub_c68f9a77[arg2][address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_40454a18(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addOrRemoveContractBonusSource(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = uint8(arg2)
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

function removeUserBonusOnFarm(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[address(msg.sender)]:
        revert with 0, 'caller is not in contract list'
    if arg2 > sub_c68f9a77[arg3][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_c68f9a77[arg3][address(arg1)] -= arg2
    require ext_code.size(stor1)
    call stor1.updateUserBonus(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), arg3, sub_c68f9a77[arg3][address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addUserBonusOnFarm(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[address(msg.sender)]:
        revert with 0, 'caller is not in contract list'
    if sub_c68f9a77[arg3][address(arg1)] + arg2 < sub_c68f9a77[arg3][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_c68f9a77[arg3][address(arg1)] += arg2
    if sub_c68f9a77[arg3][address(arg1)] >= 10000:
        revert with 0, 'Invalid percent'
    require ext_code.size(stor1)
    call stor1.updateUserBonus(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), arg3, sub_c68f9a77[arg3][address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
