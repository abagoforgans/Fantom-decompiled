contract main {




// =====================  Runtime code  =====================


const sub_c735f63a(?) = 18446744073709551616


address ROUTERAddress;
address sub_2e73b45bAddress;
uint256 sub_b86c78a8;
uint256 totalFrozen;
uint256 sub_3e38ec98;
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

function sub_b86c78a8(?) payable {
    return sub_b86c78a8
}

function sub_dcd48770(?) payable {
    return sub_dcd48770
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
    sub_dcd48770 = arg1
}

function sub_6024e960(?) payable {
    require calldata.size - 4 >= 32
    return (Mask(192, 64, (sub_b86c78a8 * sub_f9f2af1a[address(arg1)]) - sub_0944877d[address(arg1)]) >> 64)
}

function sub_313cba70(?) payable {
    if totalFrozen > 0:
        if sub_dcd48770 < sub_3e38ec98:
            if sub_dcd48770 > sub_3e38ec98:
                revert with 0, 'w'
            require totalFrozen
            sub_b86c78a8 -= sub_3e38ec98 - sub_dcd48770 << 64 / totalFrozen
        else:
            if sub_3e38ec98 > sub_dcd48770:
                revert with 0, 'w'
            require totalFrozen
            sub_b86c78a8 += sub_dcd48770 - sub_3e38ec98 << 64 / totalFrozen
}

function _stake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if totalFrozen > 0:
        if sub_dcd48770 < sub_3e38ec98:
            if sub_dcd48770 > sub_3e38ec98:
                revert with 0, 'w'
            require totalFrozen
            sub_b86c78a8 -= sub_3e38ec98 - sub_dcd48770 << 64 / totalFrozen
        else:
            if sub_3e38ec98 > sub_dcd48770:
                revert with 0, 'w'
            require totalFrozen
            sub_b86c78a8 += sub_dcd48770 - sub_3e38ec98 << 64 / totalFrozen
    totalFrozen += arg2
    sub_f9f2af1a[address(arg1)] = arg2
    sub_0944877d[address(msg.sender)] += arg2 * sub_b86c78a8
    emit Stake(arg2, msg.sender);
}

function sub_adc698de(?) payable {
    if totalFrozen > 0:
        if sub_dcd48770 < sub_3e38ec98:
            if sub_dcd48770 > sub_3e38ec98:
                revert with 0, 'w'
            require totalFrozen
            sub_b86c78a8 -= sub_3e38ec98 - sub_dcd48770 << 64 / totalFrozen
        else:
            if sub_3e38ec98 > sub_dcd48770:
                revert with 0, 'w'
            require totalFrozen
            sub_b86c78a8 += sub_dcd48770 - sub_3e38ec98 << 64 / totalFrozen
    sub_0944877d[address(msg.sender)] += Mask(192, 64, (sub_b86c78a8 * sub_f9f2af1a[address(msg.sender)]) - sub_0944877d[address(msg.sender)])
    emit Yield((Mask(192, 64, (sub_b86c78a8 * sub_f9f2af1a[address(msg.sender)]) - sub_0944877d[address(msg.sender)]) >> 64), msg.sender);
}



}
