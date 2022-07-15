contract main {




// =====================  Runtime code  =====================


#
#  - transferTokens(address arg1, uint256 arg2, address arg3)
#
address owner;
mapping of uint8 stor1;
mapping of address referrers;
mapping of uint256 referralsCount;
mapping of uint256 sub_b09c1c77;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function referrers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrers[arg1]
}

function getReferrer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referrers[address(arg1)]
}

function referralsCount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referralsCount[arg1]
}

function owner() payable {
    return owner
}

function sub_b09c1c77(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b09c1c77[arg1]
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

function updateOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
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

function recordReferralShare(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator: caller is not the operator'
    if arg1:
        if arg2 > 0:
            if sub_b09c1c77[address(arg1)] > !arg2:
                revert with 0, 17
            sub_b09c1c77[address(arg1)] += arg2
}

function recordReferral(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operator: caller is not the operator'
    if arg1:
        if arg2:
            if arg1 != arg2:
                if not referrers[address(arg1)]:
                    referrers[address(arg1)] = arg2
                    if referralsCount[address(arg2)] > -2:
                        revert with 0, 17
                    referralsCount[address(arg2)]++
}



}
