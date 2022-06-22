contract main {




// =====================  Runtime code  =====================


const sub_c735f63a(?) = 18446744073709551616


address ROUTERAddress;
address sub_2e73b45bAddress;
uint256 totalFrozen;
uint256 sub_3e38ec98;
uint256 stor4;
uint256 sub_dcd48770;
mapping of uint256 sub_f9f2af1a;
mapping of uint256 sub_0944877d;

function sub_0944877d(?) payable {
    require calldata.size - 4 >= 32
    return sub_0944877d[arg1]
}

function totalFrozen() payable {
    return totalFrozen
}

function sub_2e73b45b(?) payable {
    return sub_2e73b45bAddress
}

function ROUTER() payable {
    return ROUTERAddress
}

function sub_3e38ec98(?) payable {
    return sub_3e38ec98
}

function sub_dcd48770(?) payable {
    return uint256(sub_dcd48770)
}

function sub_f9f2af1a(?) payable {
    require calldata.size - 4 >= 32
    return sub_f9f2af1a[arg1]
}

function _fallback() payable {
    revert
}

function sub_8cc52159(?) payable {
    require calldata.size - 4 >= 32
    uint256(sub_dcd48770) = arg1
}

function sub_b86c78a8(?) payable {
    require totalFrozen
    return (Mask(192, 0, stor4) / totalFrozen)
}

function sub_6024e960(?) payable {
    require calldata.size - 4 >= 32
    require totalFrozen
    return (Mask(192, 64, (Mask(192, 0, stor4) / totalFrozen * sub_f9f2af1a[address(arg1)]) - sub_0944877d[address(arg1)]) >> 64)
}

function _stake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    totalFrozen += arg2
    sub_f9f2af1a[address(arg1)] = arg2
    require totalFrozen
    sub_0944877d[address(msg.sender)] += arg2 * Mask(192, 0, stor4) / totalFrozen
    emit Stake(arg2, msg.sender);
}

function sub_adc698de(?) payable {
    require totalFrozen
    sub_0944877d[address(msg.sender)] += Mask(192, 64, (Mask(192, 0, stor4) / totalFrozen * sub_f9f2af1a[address(msg.sender)]) - sub_0944877d[address(msg.sender)])
    if Mask(192, 64, (Mask(192, 0, stor4) / totalFrozen * sub_f9f2af1a[address(msg.sender)]) - sub_0944877d[address(msg.sender)]) >> 64 > uint256(sub_dcd48770):
        revert with 0, 'w'
    uint256(sub_dcd48770) -= Mask(192, 64, (Mask(192, 0, stor4) / totalFrozen * sub_f9f2af1a[address(msg.sender)]) - sub_0944877d[address(msg.sender)]) >> 64
    emit Yield((Mask(192, 64, (Mask(192, 0, stor4) / totalFrozen * sub_f9f2af1a[address(msg.sender)]) - sub_0944877d[address(msg.sender)]) >> 64), msg.sender);
}



}
