contract main {




// =====================  Runtime code  =====================


const sub_3630eefc(?) = 50000


address owner;
address sub_a35f01b8Address;
mapping of uint256 balanceOf;
uint256 feeMultiplier;

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_a35f01b8(?) {
    return sub_a35f01b8Address
}

function feeMultiplier() {
    return feeMultiplier
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if balanceOf[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += msg.value
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_e0352a9a(?) {
    if block.gasprice > 0x14f8b588e368f08461f9f01b866e43aa79bbadc0980b242070b8cfbfc6540:
        revert with 'NH{q', 17
    if 50000 * block.gasprice and feeMultiplier > -1 / 50000 * block.gasprice:
        revert with 'NH{q', 17
    return (50000 * block.gasprice * feeMultiplier)
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

function sub_a645ded7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.gasprice > 0x14f8b588e368f08461f9f01b866e43aa79bbadc0980b242070b8cfbfc6540:
        revert with 'NH{q', 17
    if 50000 * block.gasprice and feeMultiplier > -1 / 50000 * block.gasprice:
        revert with 'NH{q', 17
    return 50000 * block.gasprice * feeMultiplier <= balanceOf[address(arg1)]
}

function withdrawFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_a35f01b8Address != msg.sender:
        revert with 0, 'Spender is not the camp'
    if block.gasprice > 0x14f8b588e368f08461f9f01b866e43aa79bbadc0980b242070b8cfbfc6540:
        revert with 'NH{q', 17
    if 50000 * block.gasprice and feeMultiplier > -1 / 50000 * block.gasprice:
        revert with 'NH{q', 17
    call tx.origin with:
       value 50000 * block.gasprice * feeMultiplier wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if balanceOf[address(arg1)] < 50000 * block.gasprice * feeMultiplier:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += -50000 * block.gasprice * feeMultiplier
}



}
