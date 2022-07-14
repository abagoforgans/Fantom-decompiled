contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - claim()
#  - leave(uint256 arg1)
#  - enter(uint256 arg1)
#
uint8 stor0; offset 160
address owner;
address stor2;
address stor3;
uint256 stor4;
address stor5;
address stor6;
address stor7;
address stor8;
uint256 totalShares;
mapping of uint256 shares;
mapping of uint256 sub_76fbc359;
mapping of uint256 depositedAt;

function depositedAt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositedAt[arg1]
}

function totalShares() payable {
    return totalShares
}

function paused() payable {
    return bool(stor0)
}

function sub_76fbc359(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_76fbc359[arg1]
}

function owner() payable {
    return owner
}

function shares(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1]
}

function _fallback() payable {
    revert
}

function summon() payable {
    return stor2, stor3
}

function sub_c4cf0995(?) payable {
    return stor4, stor5, stor6, stor7, stor8
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMasterChef(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3:
        revert with 0, 'already set'
    stor3 = arg1
}

function balance() payable {
    require ext_code.size(stor7)
    staticcall stor7.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor4, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
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

function setPause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
}

function sub_fd15972c(?) payable {
    if not stor3:
        return 0
    require ext_code.size(stor3)
    staticcall stor3.canMint(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalShares:
        return 0
    require ext_code.size(stor7)
    staticcall stor7.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor4, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] and shares[address(arg1)] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    return (ext_call.return_data[0] * shares[address(arg1)] / totalShares)
}

function profitOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_76fbc359[address(arg1)] > -1001:
        revert with 0, 17
    if 0 == totalShares:
        if 0 < sub_76fbc359[address(arg1)] + 1000:
            return 0
    else:
        require ext_code.size(stor7)
        staticcall stor7.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor4, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] and shares[address(arg1)] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if ext_call.return_data[0] * shares[address(arg1)] / totalShares < sub_76fbc359[address(arg1)] + 1000:
            return 0
    if 0 == totalShares:
        if 0 < sub_76fbc359[address(arg1)]:
            revert with 0, 17
        return -sub_76fbc359[address(arg1)]
    require ext_code.size(stor7)
    staticcall stor7.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor4, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] and shares[address(arg1)] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if ext_call.return_data[0] * shares[address(arg1)] / totalShares < sub_76fbc359[address(arg1)]:
        revert with 0, 17
    return ((ext_call.return_data[0] * shares[address(arg1)] / totalShares) - sub_76fbc359[address(arg1)])
}

function rewardOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_76fbc359[address(arg1)] > -1001:
        revert with 0, 17
    if 0 == totalShares:
        if 0 < sub_76fbc359[address(arg1)] + 1000:
            if stor3:
                require ext_code.size(stor3)
                staticcall stor3.canMint(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return 0
            else:
                return 0
    else:
        require ext_code.size(stor7)
        staticcall stor7.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args stor4, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] and shares[address(arg1)] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if ext_call.return_data[0] * shares[address(arg1)] / totalShares < sub_76fbc359[address(arg1)] + 1000:
            if stor3:
                require ext_code.size(stor3)
                staticcall stor3.canMint(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return 0
            else:
                return 0
    if 0 == totalShares:
        if 0 < sub_76fbc359[address(arg1)]:
            revert with 0, 17
        if not stor3:
            return 0
        require ext_code.size(stor3)
        staticcall stor3.canMint(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return 0
        if -sub_76fbc359[address(arg1)] <= 0:
            return 0
        require ext_code.size(stor3)
        staticcall stor3.0x43dce47d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and -sub_76fbc359[address(arg1)] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if -1 * ext_call.return_data[0] * sub_76fbc359[address(arg1)] and 20 > -1 / -1 * ext_call.return_data[0] * sub_76fbc359[address(arg1)]:
            revert with 0, 17
        return (-20 * ext_call.return_data[0] * sub_76fbc359[address(arg1)] / 100 / 10^18)
    require ext_code.size(stor7)
    staticcall stor7.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args stor4, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] and shares[address(arg1)] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if ext_call.return_data[0] * shares[address(arg1)] / totalShares < sub_76fbc359[address(arg1)]:
        revert with 0, 17
    if not stor3:
        return 0
    require ext_code.size(stor3)
    staticcall stor3.canMint(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return 0
    if (ext_call.return_data[0] * shares[address(arg1)] / totalShares) - sub_76fbc359[address(arg1)] <= 0:
        return 0
    require ext_code.size(stor3)
    staticcall stor3.0x43dce47d with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and (ext_call.return_data[0] * shares[address(arg1)] / totalShares) - sub_76fbc359[address(arg1)] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (ext_call.return_data[0] * shares[address(arg1)] / totalShares * ext_call.return_data[0]) - (sub_76fbc359[address(arg1)] * ext_call.return_data[0]) and 20 > -1 / (ext_call.return_data[0] * shares[address(arg1)] / totalShares * ext_call.return_data[0]) - (sub_76fbc359[address(arg1)] * ext_call.return_data[0]):
        revert with 0, 17
    return ((20 * ext_call.return_data[0] * shares[address(arg1)] / totalShares * ext_call.return_data[0]) - (20 * sub_76fbc359[address(arg1)] * ext_call.return_data[0]) / 100 / 10^18)
}



}
