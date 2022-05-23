contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_90425ae0;
uint256 sub_2278338e;
uint256 sub_9f1f4cc8;
address sub_49e43873Address;
address sub_8db7d261Address;
address stor6;
array of uint256 sub_9c85bcbd;
mapping of uint256 userInfo;

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1]
}

function sub_2278338e(?) {
    return sub_2278338e
}

function sub_49e43873(?) {
    return sub_49e43873Address
}

function viewFee() {
    return sub_9f1f4cc8
}

function owner() {
    return owner
}

function sub_8db7d261(?) {
    return sub_8db7d261Address
}

function sub_90425ae0(?) {
    return sub_90425ae0
}

function sub_9c85bcbd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_9c85bcbd.length
    return sub_9c85bcbd[arg1]
}

function sub_9f1f4cc8(?) {
    return sub_9f1f4cc8
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_22830af4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor6 != msg.sender:
        revert with 0, 'dev: wut?'
    stor6 = address(arg1)
}

function sub_b03d6744(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_90425ae0 = arg1
}

function changeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9f1f4cc8 = arg1
}

function sub_9311b3f1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9c85bcbd.length++
    sub_9c85bcbd[sub_9c85bcbd.length] = sub_2278338e
    if sub_2278338e == -1:
        revert with 'NH{q', 17
    sub_2278338e++
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function mintJem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userInfo[address(msg.sender)] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'user has not minted prerequisite JEMS, or has already minted this JEM'
    require ext_code.size(sub_8db7d261Address)
    staticcall sub_8db7d261Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= sub_90425ae0
    if arg1 >= sub_2278338e:
        revert with 0, 'this JEM does not exist'
    if sub_9f1f4cc8 != msg.value:
        revert with 0, 'incorrect fee amount'
    require ext_code.size(sub_49e43873Address)
    call sub_49e43873Address.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if userInfo[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)]++
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x5b2f3cb1: msg.sender, arg1
}



}
