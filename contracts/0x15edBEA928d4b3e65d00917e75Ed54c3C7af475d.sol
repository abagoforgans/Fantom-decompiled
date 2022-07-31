contract main {




// =====================  Runtime code  =====================


mapping of struct stake;
uint256 stor1; offset 1
uint256 totalStake;
address aAddress;
uint256 stor3;
uint256 stor4;

function a() payable {
    return aAddress
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stake[address(arg1)].field_0, stake[address(arg1)].field_256
}

function stake(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stake[address(arg1)].field_0
}

function totalStake() payable {
    return totalStake
}

function _fallback() payable {
    revert
}

function pendingMIMO(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0x6d9b1823 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor3 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - stor3:
        if stor1 < stor1:
            revert with 0, 'SafeMath: addition overflow'
        if totalStake <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStake
        if (stor1 / totalStake) + stor4 < stor4:
            revert with 0, 'SafeMath: addition overflow'
        if stake[address(arg1)].field_256 > (stor1 / totalStake) + stor4:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stake[address(arg1)].field_0:
            return 0
        if (stor1 / totalStake * stake[address(arg1)].field_0) + (stor4 * stake[address(arg1)].field_0) - (stake[address(arg1)].field_256 * stake[address(arg1)].field_0) / stake[address(arg1)].field_0 != (stor1 / totalStake) + stor4 - stake[address(arg1)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor1 / totalStake * stake[address(arg1)].field_0) + (stor4 * stake[address(arg1)].field_0) + (-1 * stake[address(arg1)].field_256 * stake[address(arg1)].field_0) + 500000000 * 10^18 < 500000000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor1 / totalStake * stake[address(arg1)].field_0) + (stor4 * stake[address(arg1)].field_0) + (-1 * stake[address(arg1)].field_256 * stake[address(arg1)].field_0) + 500000000 * 10^18 / 1000000000 * 10^18)
    if (1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) / ext_call.return_data[0] - stor3 != 1000000000 * 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if (1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) + stor1 < stor1:
        revert with 0, 'SafeMath: addition overflow'
    if totalStake <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStake
    if ((1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) + stor1 / totalStake) + stor4 < stor4:
        revert with 0, 'SafeMath: addition overflow'
    if stake[address(arg1)].field_256 > ((1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) + stor1 / totalStake) + stor4:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stake[address(arg1)].field_0:
        return 0
    if ((1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) + stor1 / totalStake * stake[address(arg1)].field_0) + (stor4 * stake[address(arg1)].field_0) - (stake[address(arg1)].field_256 * stake[address(arg1)].field_0) / stake[address(arg1)].field_0 != ((1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) + stor1 / totalStake) + stor4 - stake[address(arg1)].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if ((1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) + stor1 / totalStake * stake[address(arg1)].field_0) + (stor4 * stake[address(arg1)].field_0) + (-1 * stake[address(arg1)].field_256 * stake[address(arg1)].field_0) + 500000000 * 10^18 < 500000000 * 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) + stor1 / totalStake * stake[address(arg1)].field_0) + (stor4 * stake[address(arg1)].field_0) + (-1 * stake[address(arg1)].field_256 * stake[address(arg1)].field_0) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function releaseMIMO(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(aAddress)
    staticcall aAddress.0x4f2bfe5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 != msg.sender:
        require ext_call.return_data[12 len 20] == msg.sender
    if totalStake:
        require ext_code.size(aAddress)
        staticcall aAddress.0x6d9b1823 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor3 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        stor3 = ext_call.return_data[0]
        if not ext_call.return_data[0] - stor3:
            if stor1 < stor1:
                revert with 0, 'SafeMath: addition overflow'
            if totalStake <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStake
            if (stor1 / totalStake) + stor4 < stor4:
                revert with 0, 'SafeMath: addition overflow'
            stor4 += stor1 / totalStake
        else:
            if (1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) / ext_call.return_data[0] - stor3 != 1000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if (1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) + stor1 < stor1:
                revert with 0, 'SafeMath: addition overflow'
            if totalStake <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStake
            if ((1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) + stor1 / totalStake) + stor4 < stor4:
                revert with 0, 'SafeMath: addition overflow'
            stor4 += (1000000000 * 10^18 * ext_call.return_data[0]) - (1000000000 * 10^18 * stor3) + stor1 / totalStake
    if stake[address(arg1)].field_256 > stor4:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stake[address(arg1)].field_0:
        if 0 > stor3:
            revert with 0, 'SafeMath: subtraction overflow'
        stake[address(arg1)].field_256 = stor4
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + totalStake < totalStake:
            revert with 0, 'SafeMath: addition overflow'
        if stake[address(arg1)].field_0 > ext_call.return_data[0] + totalStake:
            revert with 0, 'SafeMath: subtraction overflow'
        totalStake = ext_call.return_data[0] + totalStake - stake[address(arg1)].field_0
        stake[address(arg1)].field_0 = ext_call.return_data[0]
    else:
        if (stor4 * stake[address(arg1)].field_0) - (stake[address(arg1)].field_256 * stake[address(arg1)].field_0) / stake[address(arg1)].field_0 != stor4 - stake[address(arg1)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor4 * stake[address(arg1)].field_0) + (-1 * stake[address(arg1)].field_256 * stake[address(arg1)].field_0) + 500000000 * 10^18 < 500000000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if (stor4 * stake[address(arg1)].field_0) + (-1 * stake[address(arg1)].field_256 * stake[address(arg1)].field_0) + 500000000 * 10^18 / 1000000000 * 10^18 > stor3:
            revert with 0, 'SafeMath: subtraction overflow'
        stor3 -= (stor4 * stake[address(arg1)].field_0) + (-1 * stake[address(arg1)].field_256 * stake[address(arg1)].field_0) + 500000000 * 10^18 / 1000000000 * 10^18
        stake[address(arg1)].field_256 = stor4
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + totalStake < totalStake:
            revert with 0, 'SafeMath: addition overflow'
        if stake[address(arg1)].field_0 > ext_call.return_data[0] + totalStake:
            revert with 0, 'SafeMath: subtraction overflow'
        totalStake = ext_call.return_data[0] + totalStake - stake[address(arg1)].field_0
        stake[address(arg1)].field_0 = ext_call.return_data[0]
        if (stor4 * stake[address(arg1)].field_0) + (-1 * stake[address(arg1)].field_256 * stake[address(arg1)].field_0) + 500000000 * 10^18 / 1000000000 * 10^18:
            require ext_code.size(aAddress)
            staticcall aAddress.0x6d9b1823 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (stor4 * stake[address(arg1)].field_0) + (-1 * stake[address(arg1)].field_256 * stake[address(arg1)].field_0) + 500000000 * 10^18 / 1000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
}



}
