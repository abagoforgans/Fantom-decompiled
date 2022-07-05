contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1)
#  - withdraw(uint256 arg1)
#  - resetApprovals()
#  - sub_3d208077(?)
#  - rebalanceCollateral()
#
const sub_3e4db047(?) = 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor6;
address governanceAddress;
address strategistAddress;
address keeperAddress;
address rewardsAddress;
uint256 withdrawalFee;
uint256 sub_c089f572;
uint256 sub_f90766a6;
uint256 reserveAllocation;
uint256 sub_04b2b886;
uint256 sub_f7c18daa;
uint256 sub_263f4f40;
address wantAddress;
uint256 minReportDelay;
uint256 maxReportDelay;
uint256 profitFactor;
uint256 lastHarvest;
array of address sub_0658f495;
uint32 stor25;
address routerAddress;
uint256 stor25;
uint256 sub_3ef5a13a;
address sub_9ec6bcb7Address;
array of address stor80167465652159884487584418398737133515478493586045375474096367959472086682926;

function sub_04b2b886(?) payable {
    return sub_04b2b886
}

function sub_0658f495(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0658f495.length
    return sub_0658f495[arg1]
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function sub_263f4f40(?) payable {
    return sub_263f4f40
}

function maxReportDelay() payable {
    return maxReportDelay
}

function decimals() payable {
    return decimals
}

function sub_3ef5a13a(?) payable {
    return sub_3ef5a13a
}

function governance() payable {
    return governanceAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function withdrawalFee() payable {
    return withdrawalFee
}

function profitFactor() payable {
    return profitFactor
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function minReportDelay() payable {
    return minReportDelay
}

function rewards() payable {
    return rewardsAddress
}

function sub_9ec6bcb7(?) payable {
    return sub_9ec6bcb7Address
}

function keeper() payable {
    return keeperAddress
}

function sub_c089f572(?) payable {
    return sub_c089f572
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function lastHarvest() payable {
    return lastHarvest
}

function sub_f7c18daa(?) payable {
    return sub_f7c18daa
}

function router() payable {
    return address(routerAddress)
}

function reserveAllocation() payable {
    return reserveAllocation
}

function sub_f90766a6(?) payable {
    return sub_f90766a6
}

function _fallback() payable {
    revert
}

function sub_fd192d7d(?) payable {
    require calldata.size - 4 >= 32
    return 1
}

function sub_9cb2afcf(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    require arg1 <= 10000
    sub_3ef5a13a = arg1
}

function setRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == strategistAddress
    require arg1
    rewardsAddress = arg1
    emit UpdatedRewards(arg1);
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governanceAddress
    require arg1
    governanceAddress = arg1
    emit 0x17fdeaa3: arg1
}

function setLimits(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    sub_f7c18daa = arg1
    sub_263f4f40 = arg2
}

function setProfitFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    profitFactor = arg1
    emit UpdatedProfitFactor(arg1);
}

function setMinReportDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    minReportDelay = arg1
    emit UpdatedMinReportDelay(arg1);
}

function setMaxReportDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    maxReportDelay = arg1
    emit UpdatedMaxReportDelay(arg1);
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    require arg1
    keeperAddress = arg1
    emit UpdatedKeeper(arg1);
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    require arg1
    strategistAddress = arg1
    emit UpdatedStrategist(arg1);
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    require arg1 <= 50
    require arg2 <= 500
    require arg3 <= 2000
    sub_c089f572 = arg2
    sub_f90766a6 = arg3
    withdrawalFee = arg1
}

function sub_f352c76f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 1
    while idx < sub_0658f495.length:
        mem[0] = 24
        if sub_0658f495[idx] != address(arg1):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    return bool(s)
}

function sub_74d14b39(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).borrowRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b8445cab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalBalance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function poolLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ec082ace(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(address(routerAddress))
    call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2, address(this.address), block.timestamp + 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function harvestTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if lastHarvest > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - lastHarvest < minReportDelay:
        return 0
    if lastHarvest > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - lastHarvest >= maxReportDelay:
        return 1
    if not profitFactor:
        return 0
    if arg1 * profitFactor / profitFactor != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    return (arg1 * profitFactor < 0)
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_3876e5a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        if sub_0658f495[idx] == address(arg1):
            require idx < sub_0658f495.length
            mem[0] = 24
            sub_0658f495[idx] = 0
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_9cdf020b(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    t = 0
    t = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].borrowRate() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _15 = mem[_14]
        if mem[_14] <= t:
            idx = idx + 1
            s = s
            t = mem[_14]
            t = t
            continue 
        require idx < sub_0658f495.length
        mem[0] = 24
        idx = idx + 1
        s = sub_0658f495[idx]
        t = _15
        t = _15
        continue 
    return address(s)
}

function sub_3dd9ff8e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).exchangeRateLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function estimatedTotalAssets() payable {
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _26 = mem[_25]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _26:
            _32 = mem[64]
            mem[64] = mem[64] + 64
            mem[_32] = 26
            mem[_32 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_29] * _26 / _26 != mem[_29]:
                revert with 0, 'SafeMath: multiplication overflow'
            _33 = mem[64]
            mem[64] = mem[64] + 64
            mem[_33] = 26
            mem[_33 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    return ext_call.return_data[0]
}

function addLendingPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    idx = 0
    s = 1
    while idx < sub_0658f495.length:
        mem[0] = 24
        if sub_0658f495[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    require 1 == bool(s)
    require ext_code.size(arg1)
    staticcall arg1.0x6f307dc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == wantAddress
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == sub_9ec6bcb7Address
    sub_0658f495.length++
    storB13D[stor24.length] = arg1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(routerAddress), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(wantAddress)
    call wantAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getPricePerShare() payable {
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _42 = mem[_39]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _50 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _42:
            _64 = mem[64]
            mem[64] = mem[64] + 64
            mem[_64] = 26
            mem[_64 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_50] * _42 / _42 != mem[_50]:
                revert with 0, 'SafeMath: multiplication overflow'
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = 26
            mem[_65 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    if not ext_call.return_data[0]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * ext_call.return_data[0] / totalSupply)
}

function sub_3128801e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if msg.sender == strategistAddress:
        idx = 0
        s = 0
        t = 0
        t = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].borrowRate() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _29 = mem[_26]
            if mem[_26] <= t:
                idx = idx + 1
                s = s
                t = mem[_26]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _29
            t = _29
            continue 
    else:
        require msg.sender == governanceAddress
        idx = 0
        s = 0
        t = 0
        t = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].borrowRate() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _30 = mem[_28]
            if mem[_28] <= t:
                idx = idx + 1
                s = s
                t = mem[_28]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _30
            t = _30
            continue 
    require ext_code.size(address(routerAddress))
    call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args address(s), arg1, address(this.address), block.timestamp + 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveContracts() payable {
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    mem[100] = this.address
    mem[132] = address(routerAddress)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(routerAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = address(routerAddress)
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor25)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor25), uint32(stor25), -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call wantAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor25), uint32(stor25), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor25), uint32(stor25), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor25) == bool(0, Mask(224, 0, stor25))
            if not 0, Mask(224, 0, stor25):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_019a3046(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(arg1)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(arg1))
    call address(arg1).redeem(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require arg1
    require arg1 <= sub_f7c18daa
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _139 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _141 = mem[_139]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _141:
            _151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_151] = 26
            mem[_151 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_146] * _141 / _141 != mem[_146]:
                revert with 0, 'SafeMath: multiplication overflow'
            _152 = mem[64]
            mem[64] = mem[64] + 64
            mem[_152] = 26
            mem[_152 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 + ext_call.return_data[0] <= sub_263f4f40
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = arg1
    require ext_code.size(wantAddress)
    call wantAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _142 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_142] == bool(mem[_142])
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
        emit Deposit(msg.sender, arg1, arg1);
    else:
        if not ext_call.return_data[0]:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / totalSupply) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require (0 / totalSupply) + arg1 <= sub_f7c18daa
        else:
            if balanceOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            require (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) + arg1 <= sub_f7c18daa
        if not arg1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
            emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
            emit Deposit(msg.sender, arg1, 0 / ext_call.return_data[0]);
        else:
            if totalSupply * arg1 / arg1 != totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += totalSupply * arg1 / ext_call.return_data[0]
            if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
            emit Transfer((totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender);
            emit Deposit(msg.sender, arg1, totalSupply * arg1 / ext_call.return_data[0]);
    stor6 = 1
}

function depositAll() payable {
    mem[100] = msg.sender
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_call.return_data[0]
    require ext_call.return_data[0] <= sub_f7c18daa
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _143 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _145 = mem[_143]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _150 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _145:
            _155 = mem[64]
            mem[64] = mem[64] + 64
            mem[_155] = 26
            mem[_155 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_150] * _145 / _145 != mem[_150]:
                revert with 0, 'SafeMath: multiplication overflow'
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require 2 * ext_call.return_data[0] <= sub_263f4f40
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = ext_call.return_data[0]
    require ext_code.size(wantAddress)
    call wantAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _146 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_146] == bool(mem[_146])
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if ext_call.return_data[0] + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += ext_call.return_data[0]
        if ext_call.return_data[0] + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], 0, msg.sender);
        emit Deposit(msg.sender, ext_call.return_data[0], ext_call.return_data[0]);
    else:
        if not ext_call.return_data[0]:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / totalSupply) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require (0 / totalSupply) + ext_call.return_data[0] <= sub_f7c18daa
        else:
            if balanceOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) + ext_call.return_data[0] <= sub_f7c18daa
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
            emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
            emit Deposit(msg.sender, ext_call.return_data[0], 0 / ext_call.return_data[0]);
        else:
            if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (totalSupply * ext_call.return_data[0] / ext_call.return_data[0]) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += totalSupply * ext_call.return_data[0] / ext_call.return_data[0]
            if (totalSupply * ext_call.return_data[0] / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += totalSupply * ext_call.return_data[0] / ext_call.return_data[0]
            emit Transfer((totalSupply * ext_call.return_data[0] / ext_call.return_data[0]), 0, msg.sender);
            emit Deposit(msg.sender, ext_call.return_data[0], totalSupply * ext_call.return_data[0] / ext_call.return_data[0]);
    stor6 = 1
}

function sub_ee6d3169(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalBalance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).exchangeRateLast() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 96] = 26
        mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        mem[(4 * ceil32(return_data.size)) + 196] = address(arg1)
        if arg3 < 0:
            mem[(4 * ceil32(return_data.size)) + 228] = arg3
            mem[(4 * ceil32(return_data.size)) + 160] = 68
            mem[(4 * ceil32(return_data.size)) + 196 len 28] = address(arg1) << 64
            mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 260] = 32
            mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0
            mem[(4 * ceil32(return_data.size)) + 392] = 0
            call address(arg1) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0) << 288)
        else:
            mem[(4 * ceil32(return_data.size)) + 228] = 0
            mem[(4 * ceil32(return_data.size)) + 160] = 68
            mem[(4 * ceil32(return_data.size)) + 196 len 28] = address(arg1) << 64
            mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 260] = 32
            mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 0, 0
            mem[(4 * ceil32(return_data.size)) + 392] = 0
            call address(arg1) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 0, 0) << 288)
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + 96] = 26
        mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        mem[(4 * ceil32(return_data.size)) + 196] = address(arg1)
        if arg3 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            mem[(4 * ceil32(return_data.size)) + 228] = arg3
            mem[(4 * ceil32(return_data.size)) + 160] = 68
            mem[(4 * ceil32(return_data.size)) + 196 len 28] = address(arg1) << 64
            mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 260] = 32
            mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0
            mem[(4 * ceil32(return_data.size)) + 392] = 0
            call address(arg1) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0) << 288)
        else:
            mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            mem[(4 * ceil32(return_data.size)) + 160] = 68
            mem[(4 * ceil32(return_data.size)) + 196 len 28] = address(arg1) << 64
            mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 260] = 32
            mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0
            mem[(4 * ceil32(return_data.size)) + 392] = 0
            call address(arg1) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
            if not mem[(4 * ceil32(return_data.size)) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(arg1))
    call address(arg1).redeem(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(address(routerAddress))
    call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args address(arg2), 0, address(this.address), block.timestamp + 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ae263a1d(?) payable {
    if msg.sender == keeperAddress:
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        idx = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _184 = mem[_173]
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not _184:
                _221 = mem[64]
                mem[64] = mem[64] + 64
                mem[_221] = 26
                mem[_221 + 32] = 'SafeMath: division by zero'
            else:
                if mem[_193] * _184 / _184 != mem[_193]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _227 = mem[64]
                mem[64] = mem[64] + 64
                mem[_227] = 26
                mem[_227 + 32] = 'SafeMath: division by zero'
            idx = idx + 1
            continue 
        if not ext_call.return_data[0]:
            _172 = mem[64]
            mem[64] = mem[64] + 64
            mem[_172] = 26
            mem[_172 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                _196 = mem[64]
                mem[64] = mem[64] + 64
                mem[_196] = 30
                mem[_196 + 32] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                idx = 0
                s = 0
                t = 0
                t = 0
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].borrowRate() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _335 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _350 = mem[_335]
                    if mem[_335] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_335]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _350
                    t = _350
                    continue 
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), ext_call.return_data[0], address(this.address), block.timestamp + 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if reserveAllocation * ext_call.return_data[0] / ext_call.return_data[0] != reserveAllocation:
                revert with 0, 'SafeMath: multiplication overflow'
            _178 = mem[64]
            mem[64] = mem[64] + 64
            mem[_178] = 26
            mem[_178 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > reserveAllocation * ext_call.return_data[0] / 10000:
                _202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_202] = 30
                mem[_202 + 32] = 'SafeMath: subtraction overflow'
                if reserveAllocation * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                idx = 0
                s = 0
                t = 0
                t = 0
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].borrowRate() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _349 = mem[_332]
                    if mem[_332] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_332]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _349
                    t = _349
                    continue 
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), ext_call.return_data[0] - (reserveAllocation * ext_call.return_data[0] / 10000), address(this.address), block.timestamp + 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == strategistAddress:
            mem[100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            idx = 0
            while idx < sub_0658f495.length:
                mem[0] = 24
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _185 = mem[_175]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _194 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _185:
                    _223 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_223] = 26
                    mem[_223 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_194] * _185 / _185 != mem[_194]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _230 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_230] = 26
                    mem[_230 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _174 = mem[64]
                mem[64] = mem[64] + 64
                mem[_174] = 26
                mem[_174 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    _198 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_198] = 30
                    mem[_198 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    idx = 0
                    s = 0
                    t = 0
                    t = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].borrowRate() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _341 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _352 = mem[_341]
                        if mem[_341] <= t:
                            idx = idx + 1
                            s = s
                            t = mem[_341]
                            t = t
                            continue 
                        require idx < sub_0658f495.length
                        mem[0] = 24
                        idx = idx + 1
                        s = sub_0658f495[idx]
                        t = _352
                        t = _352
                        continue 
                    require ext_code.size(address(routerAddress))
                    call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(s), ext_call.return_data[0], address(this.address), block.timestamp + 5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if reserveAllocation * ext_call.return_data[0] / ext_call.return_data[0] != reserveAllocation:
                    revert with 0, 'SafeMath: multiplication overflow'
                _180 = mem[64]
                mem[64] = mem[64] + 64
                mem[_180] = 26
                mem[_180 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > reserveAllocation * ext_call.return_data[0] / 10000:
                    _203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_203] = 30
                    mem[_203 + 32] = 'SafeMath: subtraction overflow'
                    if reserveAllocation * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    idx = 0
                    s = 0
                    t = 0
                    t = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].borrowRate() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _338 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _351 = mem[_338]
                        if mem[_338] <= t:
                            idx = idx + 1
                            s = s
                            t = mem[_338]
                            t = t
                            continue 
                        require idx < sub_0658f495.length
                        mem[0] = 24
                        idx = idx + 1
                        s = sub_0658f495[idx]
                        t = _351
                        t = _351
                        continue 
                    require ext_code.size(address(routerAddress))
                    call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(s), ext_call.return_data[0] - (reserveAllocation * ext_call.return_data[0] / 10000), address(this.address), block.timestamp + 5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require msg.sender == governanceAddress
            mem[100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            idx = 0
            while idx < sub_0658f495.length:
                mem[0] = 24
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _186 = mem[_177]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _195 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _186:
                    _225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_225] = 26
                    mem[_225 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_195] * _186 / _186 != mem[_195]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _233 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_233] = 26
                    mem[_233 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
            if not ext_call.return_data[0]:
                _176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_176] = 26
                mem[_176 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    _200 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_200] = 30
                    mem[_200 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    idx = 0
                    s = 0
                    t = 0
                    t = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].borrowRate() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _347 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _354 = mem[_347]
                        if mem[_347] <= t:
                            idx = idx + 1
                            s = s
                            t = mem[_347]
                            t = t
                            continue 
                        require idx < sub_0658f495.length
                        mem[0] = 24
                        idx = idx + 1
                        s = sub_0658f495[idx]
                        t = _354
                        t = _354
                        continue 
                    require ext_code.size(address(routerAddress))
                    call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(s), ext_call.return_data[0], address(this.address), block.timestamp + 5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if reserveAllocation * ext_call.return_data[0] / ext_call.return_data[0] != reserveAllocation:
                    revert with 0, 'SafeMath: multiplication overflow'
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = 26
                mem[_182 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > reserveAllocation * ext_call.return_data[0] / 10000:
                    _204 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_204] = 30
                    mem[_204 + 32] = 'SafeMath: subtraction overflow'
                    if reserveAllocation * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    idx = 0
                    s = 0
                    t = 0
                    t = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].borrowRate() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _344 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _353 = mem[_344]
                        if mem[_344] <= t:
                            idx = idx + 1
                            s = s
                            t = mem[_344]
                            t = t
                            continue 
                        require idx < sub_0658f495.length
                        mem[0] = 24
                        idx = idx + 1
                        s = sub_0658f495[idx]
                        t = _353
                        t = _353
                        continue 
                    require ext_code.size(address(routerAddress))
                    call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(s), ext_call.return_data[0] - (reserveAllocation * ext_call.return_data[0] / 10000), address(this.address), block.timestamp + 5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function sub_39e3ad19(?) payable {
    mem[64] = 96
    if msg.sender == strategistAddress:
        idx = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _829 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _831 = mem[_829]
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].totalBalance() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _837 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _839 = mem[_837]
            if not mem[_837]:
                _843 = mem[64]
                mem[64] = mem[64] + 64
                mem[_843] = 26
                mem[_843 + 32] = 'SafeMath: division by zero'
                if not _831:
                    _849 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _849 + 68] = mem[idx + _843 + 32]
                        idx = idx + 32
                        continue 
                    mem[_849 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _849 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _869 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _880 = mem[_869]
                if mem[_869] < 0 / _831:
                    if mem[_869]:
                        _885 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _880
                        _892 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_892 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_892 + 36 len 28]
                        mem[64] = _885 + 164
                        mem[_885 + 100] = 32
                        mem[_885 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        _926 = mem[_892]
                        s = 0
                        while s < _926:
                            mem[s + _885 + 164] = mem[s + _892 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_926) > _926:
                            mem[_885 + _926 + 164] = 0
                        call this.address.mem[_885 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_885 + 168 len _926 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_885 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_885 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _885 + 232] = mem[idx + _885 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_885 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_885 + 168] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_885 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _885 + ceil32(return_data.size) + 164
                        else:
                            mem[_885 + 164] = return_data.size
                            mem[_885 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_885 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_885 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _885 + ceil32(return_data.size) + 233] = mem[idx + _885 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_885 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_885 + 196] == bool(mem[_885 + 196])
                                if not mem[_885 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_885 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_885 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _885 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
                else:
                    if 0 / _831:
                        _888 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = 0 / _831
                        _900 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_900 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_900 + 36 len 28]
                        mem[64] = _888 + 164
                        mem[_888 + 100] = 32
                        mem[_888 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        _943 = mem[_900]
                        s = 0
                        while s < _943:
                            mem[s + _888 + 164] = mem[s + _900 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_943) > _943:
                            mem[_888 + _943 + 164] = 0
                        call this.address.mem[_888 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_888 + 168 len _943 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_888 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_888 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _888 + 232] = mem[idx + _888 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_888 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_888 + 168] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_888 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _888 + ceil32(return_data.size) + 164
                        else:
                            mem[_888 + 164] = return_data.size
                            mem[_888 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_888 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_888 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _888 + ceil32(return_data.size) + 233] = mem[idx + _888 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_888 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_888 + 196] == bool(mem[_888 + 196])
                                if not mem[_888 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_888 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_888 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _888 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
            else:
                if 10^18 * mem[_837] / mem[_837] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _845 = mem[64]
                mem[64] = mem[64] + 64
                mem[_845] = 26
                mem[_845 + 32] = 'SafeMath: division by zero'
                if not _831:
                    _851 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _851 + 68] = mem[idx + _845 + 32]
                        idx = idx + 32
                        continue 
                    mem[_851 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _851 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _873 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _883 = mem[_873]
                if mem[_873] < 10^18 * _839 / _831:
                    if mem[_873]:
                        _887 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _883
                        _897 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_897 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_897 + 36 len 28]
                        mem[64] = _887 + 164
                        mem[_887 + 100] = 32
                        mem[_887 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        _937 = mem[_897]
                        s = 0
                        while s < _937:
                            mem[s + _887 + 164] = mem[s + _897 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_937) > _937:
                            mem[_887 + _937 + 164] = 0
                        call this.address.mem[_887 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_887 + 168 len _937 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_887 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_887 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _887 + 232] = mem[idx + _887 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_887 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_887 + 168] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_887 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _887 + ceil32(return_data.size) + 164
                        else:
                            mem[_887 + 164] = return_data.size
                            mem[_887 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_887 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_887 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _887 + ceil32(return_data.size) + 233] = mem[idx + _887 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_887 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_887 + 196] == bool(mem[_887 + 196])
                                if not mem[_887 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_887 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_887 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _887 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
                else:
                    if 10^18 * _839 / _831:
                        _891 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = 10^18 * _839 / _831
                        _908 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_908 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_908 + 36 len 28]
                        mem[64] = _891 + 164
                        mem[_891 + 100] = 32
                        mem[_891 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        _953 = mem[_908]
                        s = 0
                        while s < _953:
                            mem[s + _891 + 164] = mem[s + _908 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_953) > _953:
                            mem[_891 + _953 + 164] = 0
                        call this.address.mem[_891 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_891 + 168 len _953 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_891 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_891 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _891 + 232] = mem[idx + _891 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_891 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_891 + 168] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_891 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _891 + ceil32(return_data.size) + 164
                        else:
                            mem[_891 + 164] = return_data.size
                            mem[_891 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_891 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_891 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _891 + ceil32(return_data.size) + 233] = mem[idx + _891 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_891 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_891 + 196] == bool(mem[_891 + 196])
                                if not mem[_891 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_891 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_891 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _891 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
            idx = idx + 1
            continue 
    else:
        require msg.sender == governanceAddress
        idx = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _830 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _832 = mem[_830]
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].totalBalance() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _838 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _840 = mem[_838]
            if not mem[_838]:
                _844 = mem[64]
                mem[64] = mem[64] + 64
                mem[_844] = 26
                mem[_844 + 32] = 'SafeMath: division by zero'
                if not _832:
                    _850 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _850 + 68] = mem[idx + _844 + 32]
                        idx = idx + 32
                        continue 
                    mem[_850 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _850 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _871 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _882 = mem[_871]
                if mem[_871] < 0 / _832:
                    if mem[_871]:
                        _886 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _882
                        _895 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_895 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_895 + 36 len 28]
                        mem[64] = _886 + 164
                        mem[_886 + 100] = 32
                        mem[_886 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        _933 = mem[_895]
                        s = 0
                        while s < _933:
                            mem[s + _886 + 164] = mem[s + _895 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_933) > _933:
                            mem[_886 + _933 + 164] = 0
                        call this.address.mem[_886 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_886 + 168 len _933 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_886 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_886 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _886 + 232] = mem[idx + _886 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_886 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_886 + 168] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_886 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _886 + ceil32(return_data.size) + 164
                        else:
                            mem[_886 + 164] = return_data.size
                            mem[_886 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_886 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_886 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _886 + ceil32(return_data.size) + 233] = mem[idx + _886 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_886 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_886 + 196] == bool(mem[_886 + 196])
                                if not mem[_886 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_886 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_886 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _886 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
                else:
                    if 0 / _832:
                        _890 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = 0 / _832
                        _905 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_905 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_905 + 36 len 28]
                        mem[64] = _890 + 164
                        mem[_890 + 100] = 32
                        mem[_890 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        _950 = mem[_905]
                        s = 0
                        while s < _950:
                            mem[s + _890 + 164] = mem[s + _905 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_950) > _950:
                            mem[_890 + _950 + 164] = 0
                        call this.address.mem[_890 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_890 + 168 len _950 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_890 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_890 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _890 + 232] = mem[idx + _890 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_890 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_890 + 168] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_890 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _890 + ceil32(return_data.size) + 164
                        else:
                            mem[_890 + 164] = return_data.size
                            mem[_890 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_890 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_890 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _890 + ceil32(return_data.size) + 233] = mem[idx + _890 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_890 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_890 + 196] == bool(mem[_890 + 196])
                                if not mem[_890 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_890 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_890 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _890 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
            else:
                if 10^18 * mem[_838] / mem[_838] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _847 = mem[64]
                mem[64] = mem[64] + 64
                mem[_847] = 26
                mem[_847 + 32] = 'SafeMath: division by zero'
                if not _832:
                    _853 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _853 + 68] = mem[idx + _847 + 32]
                        idx = idx + 32
                        continue 
                    mem[_853 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _853 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _876 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _884 = mem[_876]
                if mem[_876] < 10^18 * _840 / _832:
                    if mem[_876]:
                        _889 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _884
                        _902 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_902 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_902 + 36 len 28]
                        mem[64] = _889 + 164
                        mem[_889 + 100] = 32
                        mem[_889 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        _944 = mem[_902]
                        s = 0
                        while s < _944:
                            mem[s + _889 + 164] = mem[s + _902 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_944) > _944:
                            mem[_889 + _944 + 164] = 0
                        call this.address.mem[_889 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_889 + 168 len _944 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_889 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_889 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _889 + 232] = mem[idx + _889 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_889 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_889 + 168] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_889 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _889 + ceil32(return_data.size) + 164
                        else:
                            mem[_889 + 164] = return_data.size
                            mem[_889 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_889 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_889 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _889 + ceil32(return_data.size) + 233] = mem[idx + _889 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_889 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_889 + 196] == bool(mem[_889 + 196])
                                if not mem[_889 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_889 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_889 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _889 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
                else:
                    if 10^18 * _840 / _832:
                        _894 = mem[64]
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = 10^18 * _840 / _832
                        _912 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_912 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_912 + 36 len 28]
                        mem[64] = _894 + 164
                        mem[_894 + 100] = 32
                        mem[_894 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(this.address):
                            revert with 0, 'Address: call to non-contract'
                        _958 = mem[_912]
                        s = 0
                        while s < _958:
                            mem[s + _894 + 164] = mem[s + _912 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_958) > _958:
                            mem[_894 + _958 + 164] = 0
                        call this.address.mem[_894 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_894 + 168 len _958 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_894 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_894 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _894 + 232] = mem[idx + _894 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_894 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_894 + 168] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_894 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _894 + ceil32(return_data.size) + 164
                        else:
                            mem[_894 + 164] = return_data.size
                            mem[_894 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_894 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_894 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _894 + ceil32(return_data.size) + 233] = mem[idx + _894 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_894 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_894 + 196] == bool(mem[_894 + 196])
                                if not mem[_894 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_894 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(this.address)
                            call this.address.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_894 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _894 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
            idx = idx + 1
            continue 
}

function sub_70c0345c(?) payable {
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = mem[96]
    while idx < sub_0658f495.length:
        mem[0] = 24
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].totalBalance() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _17 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        idx = idx + 1
        s = s + mem[_17]
        continue 
    mem[mem[64]] = mem[96] + (mem[96] * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (mem[96] * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length) + (s * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length * sub_0658f495.length)
    return memory
      from mem[64]
       len 32
}

function harvest() payable {
    if msg.sender == keeperAddress:
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        idx = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4459 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4466 = mem[_4459]
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4488 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not _4466:
                _4545 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4545] = 26
                mem[_4545 + 32] = 'SafeMath: division by zero'
            else:
                if mem[_4488] * _4466 / _4466 != mem[_4488]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4562 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4562] = 26
                mem[_4562 + 32] = 'SafeMath: division by zero'
            idx = idx + 1
            continue 
    else:
        if msg.sender == strategistAddress:
            mem[100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            idx = 0
            while idx < sub_0658f495.length:
                mem[0] = 24
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4460 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4468 = mem[_4460]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4491 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _4468:
                    _4551 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4551] = 26
                    mem[_4551 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_4491] * _4468 / _4468 != mem[_4491]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4568 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4568] = 26
                    mem[_4568 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
        else:
            require msg.sender == governanceAddress
            mem[100] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            idx = 0
            while idx < sub_0658f495.length:
                mem[0] = 24
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4461 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4470 = mem[_4461]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4494 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _4470:
                    _4557 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4557] = 26
                    mem[_4557 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_4494] * _4470 / _4470 != mem[_4494]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4574 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4574] = 26
                    mem[_4574 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
    if not ext_call.return_data[0]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / totalSupply <= sub_04b2b886:
            if not sub_c089f572:
                lastHarvest = block.timestamp
                emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                               0,
            else:
                if lastHarvest > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not sub_c089f572:
                    if not governanceAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[stor7] < balanceOf[stor7]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, governanceAddress);
                    lastHarvest = block.timestamp
                    emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                   0,
                else:
                    if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                        if not governanceAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, governanceAddress);
                        lastHarvest = block.timestamp
                        emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                       0,
                    else:
                        if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not governanceAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                        if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                        emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                        lastHarvest = block.timestamp
                        emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
        else:
            if sub_04b2b886 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (0 / totalSupply) - sub_04b2b886:
                if not sub_04b2b886:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    if not rewardsAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, rewardsAddress);
                    if not governanceAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[stor7] < balanceOf[stor7]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, governanceAddress);
                    sub_04b2b886 = 0 / totalSupply
                    if not sub_c089f572:
                        lastHarvest = block.timestamp
                        emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                       0,
                    else:
                        if lastHarvest > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not sub_c089f572:
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                            lastHarvest = block.timestamp
                            emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                           0,
                        else:
                            if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                               0,
                            else:
                                if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                else:
                    if 0 / sub_04b2b886 * totalSupply / totalSupply != 0 / sub_04b2b886:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / sub_04b2b886 * totalSupply:
                        if not rewardsAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[stor10] < balanceOf[stor10]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, rewardsAddress);
                        if not governanceAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, governanceAddress);
                        sub_04b2b886 = 0 / totalSupply
                        if not sub_c089f572:
                            lastHarvest = block.timestamp
                            emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                           0,
                        else:
                            if lastHarvest > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not sub_c089f572:
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                               0,
                            else:
                                if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                                   0,
                                else:
                                    if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                    else:
                        if sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 0 / sub_04b2b886 * totalSupply != sub_f90766a6:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18:
                            if 0 > sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] += sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18
                            emit Transfer((sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                        else:
                            if 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 != 5000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000 > sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] = (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor10]
                            emit Transfer(((sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000)), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000
                            if (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor7] += 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000
                            emit Transfer((5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000), 0, governanceAddress);
                        sub_04b2b886 = 0 / totalSupply
                        if not sub_c089f572:
                            lastHarvest = block.timestamp
                            emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                        else:
                            if lastHarvest > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not sub_c089f572:
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                            else:
                                if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                                else:
                                    if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
            else:
                if (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / (0 / totalSupply) - sub_04b2b886 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not sub_04b2b886:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    if not rewardsAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, rewardsAddress);
                    if not governanceAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[stor7] < balanceOf[stor7]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, governanceAddress);
                    sub_04b2b886 = 0 / totalSupply
                    if not sub_c089f572:
                        lastHarvest = block.timestamp
                        emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                       0,
                    else:
                        if lastHarvest > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not sub_c089f572:
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                            lastHarvest = block.timestamp
                            emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                           0,
                        else:
                            if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                               0,
                            else:
                                if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                else:
                    if (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / totalSupply != (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply:
                        if not rewardsAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[stor10] < balanceOf[stor10]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, rewardsAddress);
                        if not governanceAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, governanceAddress);
                        sub_04b2b886 = 0 / totalSupply
                        if not sub_c089f572:
                            lastHarvest = block.timestamp
                            emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                           0,
                        else:
                            if lastHarvest > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not sub_c089f572:
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                               0,
                            else:
                                if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                                   0,
                                else:
                                    if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                    else:
                        if sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply != sub_f90766a6:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18:
                            if 0 > sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18
                            if (sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] += sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18
                            emit Transfer((sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                        else:
                            if 5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 != 5000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000 > sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = (sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply
                            if (sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] = (sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor10]
                            emit Transfer(((sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000)), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000
                            if (5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor7] += 5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000
                            emit Transfer((5000 * sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000), 0, governanceAddress);
                        sub_04b2b886 = 0 / totalSupply
                        if not sub_c089f572:
                            lastHarvest = block.timestamp
                            emit Harvested(0, sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                        else:
                            if lastHarvest > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not sub_c089f572:
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                            else:
                                if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                                else:
                                    if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, sub_f90766a6 * (10^18 * 0 / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if 10^18 * ext_call.return_data[0] / totalSupply <= sub_04b2b886:
            if not sub_c089f572:
                lastHarvest = block.timestamp
                emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                               0,
            else:
                if lastHarvest > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not sub_c089f572:
                    if not governanceAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[stor7] < balanceOf[stor7]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, governanceAddress);
                    lastHarvest = block.timestamp
                    emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                   0,
                else:
                    if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                        if not governanceAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, governanceAddress);
                        lastHarvest = block.timestamp
                        emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                       0,
                    else:
                        if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not governanceAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                        if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                        emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                        lastHarvest = block.timestamp
                        emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
        else:
            if sub_04b2b886 > 10^18 * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (10^18 * ext_call.return_data[0] / totalSupply) - sub_04b2b886:
                if not sub_04b2b886:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    if not rewardsAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, rewardsAddress);
                    if not governanceAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[stor7] < balanceOf[stor7]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, governanceAddress);
                    sub_04b2b886 = 10^18 * ext_call.return_data[0] / totalSupply
                    if not sub_c089f572:
                        lastHarvest = block.timestamp
                        emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                       0,
                    else:
                        if lastHarvest > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not sub_c089f572:
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                            lastHarvest = block.timestamp
                            emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                           0,
                        else:
                            if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                               0,
                            else:
                                if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                else:
                    if 0 / sub_04b2b886 * totalSupply / totalSupply != 0 / sub_04b2b886:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 0 / sub_04b2b886 * totalSupply:
                        if not rewardsAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[stor10] < balanceOf[stor10]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, rewardsAddress);
                        if not governanceAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, governanceAddress);
                        sub_04b2b886 = 10^18 * ext_call.return_data[0] / totalSupply
                        if not sub_c089f572:
                            lastHarvest = block.timestamp
                            emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                           0,
                        else:
                            if lastHarvest > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not sub_c089f572:
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                               0,
                            else:
                                if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                                   0,
                                else:
                                    if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                    else:
                        if sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 0 / sub_04b2b886 * totalSupply != sub_f90766a6:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18:
                            if 0 > sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] += sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18
                            emit Transfer((sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                        else:
                            if 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 != 5000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000 > sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] = (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor10]
                            emit Transfer(((sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000)), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000
                            if (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor7] += 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000
                            emit Transfer((5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000), 0, governanceAddress);
                        sub_04b2b886 = 10^18 * ext_call.return_data[0] / totalSupply
                        if not sub_c089f572:
                            lastHarvest = block.timestamp
                            emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                        else:
                            if lastHarvest > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not sub_c089f572:
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                            else:
                                if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                                else:
                                    if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10^18, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
            else:
                if (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / (10^18 * ext_call.return_data[0] / totalSupply) - sub_04b2b886 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not sub_04b2b886:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    if not rewardsAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, rewardsAddress);
                    if not governanceAddress:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[stor7] < balanceOf[stor7]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, 0, governanceAddress);
                    sub_04b2b886 = 10^18 * ext_call.return_data[0] / totalSupply
                    if not sub_c089f572:
                        lastHarvest = block.timestamp
                        emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                       0,
                    else:
                        if lastHarvest > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not sub_c089f572:
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                            lastHarvest = block.timestamp
                            emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                           0,
                        else:
                            if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                               0,
                            else:
                                if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                else:
                    if (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / totalSupply != (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply:
                        if not rewardsAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[stor10] < balanceOf[stor10]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, rewardsAddress);
                        if not governanceAddress:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[stor7] < balanceOf[stor7]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, governanceAddress);
                        sub_04b2b886 = 10^18 * ext_call.return_data[0] / totalSupply
                        if not sub_c089f572:
                            lastHarvest = block.timestamp
                            emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                           0,
                        else:
                            if lastHarvest > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not sub_c089f572:
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                               0,
                            else:
                                if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(uint256 arg1, uint256 arg2, uint256 arg3):
                                                   0,
                                else:
                                    if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                    else:
                        if sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply != sub_f90766a6:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18:
                            if 0 > sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18
                            if (sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] += sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18
                            emit Transfer((sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                        else:
                            if 5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 != 5000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000 > sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = (sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply
                            if (sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] = (sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor10]
                            emit Transfer(((sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18) - (5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000)), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000
                            if (5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000) + balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor7] += 5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000
                            emit Transfer((5000 * sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18 / 10000), 0, governanceAddress);
                        sub_04b2b886 = 10^18 * ext_call.return_data[0] / totalSupply
                        if not sub_c089f572:
                            lastHarvest = block.timestamp
                            emit Harvested(0, sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                        else:
                            if lastHarvest > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not sub_c089f572:
                                if not governanceAddress:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                if balanceOf[stor7] < balanceOf[stor7]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, 0, governanceAddress);
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                            else:
                                if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18, 0);
                                else:
                                    if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not governanceAddress:
                                        revert with 0, 'ERC20: mint to the zero address'
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600) + balanceOf[stor7] < balanceOf[stor7]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor7] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600
                                    emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600), 0, governanceAddress);
                                    lastHarvest = block.timestamp
                                    emit Harvested(0, sub_f90766a6 * (10^18 * 10^18 * ext_call.return_data[0] / totalSupply) - (10^18 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10^18, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
}

function sub_d2d9a69d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if msg.sender == strategistAddress:
        idx = 0
        s = 0
        t = 0
        t = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].borrowRate() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2469 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2473 = mem[_2469]
            if mem[_2469] <= t:
                idx = idx + 1
                s = s
                t = mem[_2469]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _2473
            t = _2473
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2471 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2475 = mem[_2471]
        if arg1 + mem[_2471] < mem[_2471]:
            revert with 0, 'SafeMath: addition overflow'
        idx = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            if sub_0658f495[idx] != address(s):
                require idx < sub_0658f495.length
                mem[0] = 24
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4933 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4936 = mem[_4933]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4948 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4951 = mem[_4948]
                if not _4936:
                    _4965 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4965] = 26
                    mem[_4965 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].totalBalance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 < arg1:
                        _5045 = mem[64]
                    else:
                        _5060 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                else:
                    if mem[_4948] * _4936 / _4936 != mem[_4948]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4969 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4969] = 26
                    mem[_4969 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].totalBalance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _4951 * _4936 / 10^18 < arg1:
                        _5059 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5085 = mem[_5059]
                        if mem[_5059] < _4951 * _4936 / 10^18:
                            if arg1 > 0:
                                if _4951 * _4936 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5185 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5197 = mem[_5185]
                                    if not _5085:
                                        _5209 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5209] = 26
                                        mem[_5209 + 32] = 'SafeMath: division by zero'
                                        if not _5197:
                                            _5225 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5225 + 68] = mem[idx + _5209 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5225 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5225 + -mem[64] + 100
                                        _5274 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _5197
                                        _5293 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5293 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5293 + 36 len 28]
                                        mem[64] = _5274 + 164
                                        mem[_5274 + 100] = 32
                                        mem[_5274 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5392 = mem[_5293]
                                        s = 0
                                        while s < _5392:
                                            mem[s + _5274 + 164] = mem[s + _5293 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5392) > _5392:
                                            mem[_5274 + _5392 + 164] = 0
                                        call sub_0658f495[idx].mem[_5274 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5274 + 168 len _5392 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5274 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5274 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5274 + 232] = mem[idx + _5274 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5274 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5274 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5274 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5274 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5274 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5274 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5274 + 164] = return_data.size
                                            mem[_5274 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5274 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5274 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5274 + ceil32(return_data.size) + 233] = mem[idx + _5274 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5274 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5274 + 196] == bool(mem[_5274 + 196])
                                                if not mem[_5274 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5274 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5274 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5274 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5274 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5274 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _5085 / _5085 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5215 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5215] = 26
                                        mem[_5215 + 32] = 'SafeMath: division by zero'
                                        if not _5197:
                                            _5237 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5237 + 68] = mem[idx + _5215 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5237 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5237 + -mem[64] + 100
                                        _5281 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _5085 / _5197
                                        _5307 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5307 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5307 + 36 len 28]
                                        mem[64] = _5281 + 164
                                        mem[_5281 + 100] = 32
                                        mem[_5281 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5409 = mem[_5307]
                                        s = 0
                                        while s < _5409:
                                            mem[s + _5281 + 164] = mem[s + _5307 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5409) > _5409:
                                            mem[_5281 + _5409 + 164] = 0
                                        call sub_0658f495[idx].mem[_5281 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5281 + 168 len _5409 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5281 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5281 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5281 + 232] = mem[idx + _5281 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5281 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5281 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5281 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5281 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5281 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5281 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5281 + 164] = return_data.size
                                            mem[_5281 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5281 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5281 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5281 + ceil32(return_data.size) + 233] = mem[idx + _5281 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5281 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5281 + 196] == bool(mem[_5281 + 196])
                                                if not mem[_5281 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5281 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5281 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5281 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5281 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5281 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                        else:
                            if arg1 > 0:
                                if _4951 * _4936 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5193 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5201 = mem[_5193]
                                    if not _4951 * _4936 / 10^18:
                                        _5217 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5217] = 26
                                        mem[_5217 + 32] = 'SafeMath: division by zero'
                                        if not _5201:
                                            _5239 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5239 + 68] = mem[idx + _5217 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5239 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5239 + -mem[64] + 100
                                        _5283 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _5201
                                        _5312 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5312 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5312 + 36 len 28]
                                        mem[64] = _5283 + 164
                                        mem[_5283 + 100] = 32
                                        mem[_5283 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5415 = mem[_5312]
                                        s = 0
                                        while s < _5415:
                                            mem[s + _5283 + 164] = mem[s + _5312 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5415) > _5415:
                                            mem[_5283 + _5415 + 164] = 0
                                        call sub_0658f495[idx].mem[_5283 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5283 + 168 len _5415 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5283 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5283 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5283 + 232] = mem[idx + _5283 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5283 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5283 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5283 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5283 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5283 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5283 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5283 + 164] = return_data.size
                                            mem[_5283 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5283 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5283 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5283 + ceil32(return_data.size) + 233] = mem[idx + _5283 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5283 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5283 + 196] == bool(mem[_5283 + 196])
                                                if not mem[_5283 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5283 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5283 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5283 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5283 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5283 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _4951 * _4936 / 10^18 / _4951 * _4936 / 10^18 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5226 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5226] = 26
                                        mem[_5226 + 32] = 'SafeMath: division by zero'
                                        if not _5201:
                                            _5250 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5250 + 68] = mem[idx + _5226 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5250 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5250 + -mem[64] + 100
                                        _5296 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _4951 * _4936 / 10^18 / _5201
                                        _5333 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5333 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5333 + 36 len 28]
                                        mem[64] = _5296 + 164
                                        mem[_5296 + 100] = 32
                                        mem[_5296 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5439 = mem[_5333]
                                        s = 0
                                        while s < _5439:
                                            mem[s + _5296 + 164] = mem[s + _5333 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5439) > _5439:
                                            mem[_5296 + _5439 + 164] = 0
                                        call sub_0658f495[idx].mem[_5296 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5296 + 168 len _5439 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5296 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5296 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5296 + 232] = mem[idx + _5296 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5296 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5296 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5296 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5296 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5296 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5296 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5296 + 164] = return_data.size
                                            mem[_5296 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5296 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5296 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5296 + ceil32(return_data.size) + 233] = mem[idx + _5296 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5296 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5296 + 196] == bool(mem[_5296 + 196])
                                                if not mem[_5296 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5296 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5296 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5296 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5296 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5296 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                    else:
                        _5073 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5101 = mem[_5073]
                        if mem[_5073] < arg1:
                            if arg1 > 0:
                                if _4951 * _4936 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5194 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5202 = mem[_5194]
                                    if not _5101:
                                        _5218 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5218] = 26
                                        mem[_5218 + 32] = 'SafeMath: division by zero'
                                        if not _5202:
                                            _5240 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5240 + 68] = mem[idx + _5218 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5240 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5240 + -mem[64] + 100
                                        _5285 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _5202
                                        _5315 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5315 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5315 + 36 len 28]
                                        mem[64] = _5285 + 164
                                        mem[_5285 + 100] = 32
                                        mem[_5285 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5419 = mem[_5315]
                                        s = 0
                                        while s < _5419:
                                            mem[s + _5285 + 164] = mem[s + _5315 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5419) > _5419:
                                            mem[_5285 + _5419 + 164] = 0
                                        call sub_0658f495[idx].mem[_5285 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5285 + 168 len _5419 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5285 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5285 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5285 + 232] = mem[idx + _5285 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5285 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5285 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5285 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5285 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5285 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5285 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5285 + 164] = return_data.size
                                            mem[_5285 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5285 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5285 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5285 + ceil32(return_data.size) + 233] = mem[idx + _5285 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5285 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5285 + 196] == bool(mem[_5285 + 196])
                                                if not mem[_5285 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5285 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5285 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5285 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5285 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5285 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _5101 / _5101 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5228 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5228] = 26
                                        mem[_5228 + 32] = 'SafeMath: division by zero'
                                        if not _5202:
                                            _5252 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5252 + 68] = mem[idx + _5228 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5252 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5252 + -mem[64] + 100
                                        _5297 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _5101 / _5202
                                        _5338 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5338 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5338 + 36 len 28]
                                        mem[64] = _5297 + 164
                                        mem[_5297 + 100] = 32
                                        mem[_5297 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5442 = mem[_5338]
                                        s = 0
                                        while s < _5442:
                                            mem[s + _5297 + 164] = mem[s + _5338 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5442) > _5442:
                                            mem[_5297 + _5442 + 164] = 0
                                        call sub_0658f495[idx].mem[_5297 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5297 + 168 len _5442 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5297 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5297 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5297 + 232] = mem[idx + _5297 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5297 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5297 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5297 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5297 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5297 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5297 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5297 + 164] = return_data.size
                                            mem[_5297 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5297 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5297 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5297 + ceil32(return_data.size) + 233] = mem[idx + _5297 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5297 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5297 + 196] == bool(mem[_5297 + 196])
                                                if not mem[_5297 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5297 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5297 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5297 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5297 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5297 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                        else:
                            if arg1 > 0:
                                if _4951 * _4936 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5198 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5205 = mem[_5198]
                                    if not arg1:
                                        _5230 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5230] = 26
                                        mem[_5230 + 32] = 'SafeMath: division by zero'
                                        if not _5205:
                                            _5254 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5254 + 68] = mem[idx + _5230 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5254 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5254 + -mem[64] + 100
                                        _5299 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _5205
                                        _5343 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5343 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5343 + 36 len 28]
                                        mem[64] = _5299 + 164
                                        mem[_5299 + 100] = 32
                                        mem[_5299 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5448 = mem[_5343]
                                        s = 0
                                        while s < _5448:
                                            mem[s + _5299 + 164] = mem[s + _5343 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5448) > _5448:
                                            mem[_5299 + _5448 + 164] = 0
                                        call sub_0658f495[idx].mem[_5299 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5299 + 168 len _5448 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5299 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5299 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5299 + 232] = mem[idx + _5299 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5299 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5299 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5299 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5299 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5299 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5299 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5299 + 164] = return_data.size
                                            mem[_5299 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5299 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5299 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5299 + ceil32(return_data.size) + 233] = mem[idx + _5299 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5299 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5299 + 196] == bool(mem[_5299 + 196])
                                                if not mem[_5299 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5299 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5299 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5299 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5299 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5299 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * arg1 / arg1 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5241 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5241] = 26
                                        mem[_5241 + 32] = 'SafeMath: division by zero'
                                        if not _5205:
                                            _5263 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5263 + 68] = mem[idx + _5241 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5263 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5263 + -mem[64] + 100
                                        _5318 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * arg1 / _5205
                                        _5365 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5365 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5365 + 36 len 28]
                                        mem[64] = _5318 + 164
                                        mem[_5318 + 100] = 32
                                        mem[_5318 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5466 = mem[_5365]
                                        s = 0
                                        while s < _5466:
                                            mem[s + _5318 + 164] = mem[s + _5365 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5466) > _5466:
                                            mem[_5318 + _5466 + 164] = 0
                                        call sub_0658f495[idx].mem[_5318 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5318 + 168 len _5466 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5318 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5318 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5318 + 232] = mem[idx + _5318 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5318 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5318 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5318 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5318 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5318 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5318 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5318 + 164] = return_data.size
                                            mem[_5318 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5318 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5318 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5318 + ceil32(return_data.size) + 233] = mem[idx + _5318 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5318 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5318 + 196] == bool(mem[_5318 + 196])
                                                if not mem[_5318 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5318 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5318 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5318 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5318 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5318 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
            idx = idx + 1
            continue 
        if arg1:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(s))
            staticcall address(s).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4927 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4931 = mem[_4927]
            _4935 = mem[64]
            mem[mem[64] + 36] = address(s)
            mem[mem[64] + 68] = _4931
            _4943 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_4935 + 100] = 32
            mem[_4935 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(s)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(s)):
                revert with 0, 'Address: call to non-contract'
            _4959 = mem[_4943]
            mem[_4935 + 164 len ceil32(mem[_4943])] = mem[_4943 + 32 len ceil32(mem[_4943])]
            if ceil32(_4959) > _4959:
                mem[_4935 + _4959 + 164] = 0
            call address(s) with:
                 gas gas_remaining wei
                args mem[_4935 + 168 len _4959 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_4935 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_4935 + 196] == bool(mem[_4935 + 196])
                    if not mem[_4935 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(s))
            call address(s).redeem(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require msg.sender == governanceAddress
        idx = 0
        s = 0
        t = 0
        t = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].borrowRate() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2470 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2474 = mem[_2470]
            if mem[_2470] <= t:
                idx = idx + 1
                s = s
                t = mem[_2470]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _2474
            t = _2474
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2472 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2476 = mem[_2472]
        if arg1 + mem[_2472] < mem[_2472]:
            revert with 0, 'SafeMath: addition overflow'
        idx = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            if sub_0658f495[idx] != address(s):
                require idx < sub_0658f495.length
                mem[0] = 24
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4934 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4938 = mem[_4934]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4950 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4952 = mem[_4950]
                if not _4938:
                    _4968 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4968] = 26
                    mem[_4968 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].totalBalance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 < arg1:
                        _5052 = mem[64]
                    else:
                        _5068 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                else:
                    if mem[_4950] * _4938 / _4938 != mem[_4950]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4971 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4971] = 26
                    mem[_4971 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].totalBalance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _4952 * _4938 / 10^18 < arg1:
                        _5067 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5091 = mem[_5067]
                        if mem[_5067] < _4952 * _4938 / 10^18:
                            if arg1 > 0:
                                if _4952 * _4938 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5190 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5199 = mem[_5190]
                                    if not _5091:
                                        _5212 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5212] = 26
                                        mem[_5212 + 32] = 'SafeMath: division by zero'
                                        if not _5199:
                                            _5231 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5231 + 68] = mem[idx + _5212 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5231 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5231 + -mem[64] + 100
                                        _5278 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _5199
                                        _5300 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5300 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5300 + 36 len 28]
                                        mem[64] = _5278 + 164
                                        mem[_5278 + 100] = 32
                                        mem[_5278 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5402 = mem[_5300]
                                        s = 0
                                        while s < _5402:
                                            mem[s + _5278 + 164] = mem[s + _5300 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5402) > _5402:
                                            mem[_5278 + _5402 + 164] = 0
                                        call sub_0658f495[idx].mem[_5278 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5278 + 168 len _5402 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5278 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5278 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5278 + 232] = mem[idx + _5278 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5278 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5278 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5278 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5278 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5278 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5278 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5278 + 164] = return_data.size
                                            mem[_5278 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5278 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5278 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5278 + ceil32(return_data.size) + 233] = mem[idx + _5278 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5278 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5278 + 196] == bool(mem[_5278 + 196])
                                                if not mem[_5278 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5278 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5278 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5278 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5278 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5278 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _5091 / _5091 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5220 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5220] = 26
                                        mem[_5220 + 32] = 'SafeMath: division by zero'
                                        if not _5199:
                                            _5243 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5243 + 68] = mem[idx + _5220 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5243 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5243 + -mem[64] + 100
                                        _5287 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _5091 / _5199
                                        _5319 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5319 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5319 + 36 len 28]
                                        mem[64] = _5287 + 164
                                        mem[_5287 + 100] = 32
                                        mem[_5287 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5423 = mem[_5319]
                                        s = 0
                                        while s < _5423:
                                            mem[s + _5287 + 164] = mem[s + _5319 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5423) > _5423:
                                            mem[_5287 + _5423 + 164] = 0
                                        call sub_0658f495[idx].mem[_5287 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5287 + 168 len _5423 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5287 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5287 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5287 + 232] = mem[idx + _5287 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5287 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5287 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5287 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5287 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5287 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5287 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5287 + 164] = return_data.size
                                            mem[_5287 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5287 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5287 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5287 + ceil32(return_data.size) + 233] = mem[idx + _5287 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5287 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5287 + 196] == bool(mem[_5287 + 196])
                                                if not mem[_5287 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5287 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5287 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5287 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5287 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5287 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                        else:
                            if arg1 > 0:
                                if _4952 * _4938 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5195 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5203 = mem[_5195]
                                    if not _4952 * _4938 / 10^18:
                                        _5222 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5222] = 26
                                        mem[_5222 + 32] = 'SafeMath: division by zero'
                                        if not _5203:
                                            _5245 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5245 + 68] = mem[idx + _5222 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5245 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5245 + -mem[64] + 100
                                        _5289 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _5203
                                        _5324 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5324 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5324 + 36 len 28]
                                        mem[64] = _5289 + 164
                                        mem[_5289 + 100] = 32
                                        mem[_5289 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5429 = mem[_5324]
                                        s = 0
                                        while s < _5429:
                                            mem[s + _5289 + 164] = mem[s + _5324 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5429) > _5429:
                                            mem[_5289 + _5429 + 164] = 0
                                        call sub_0658f495[idx].mem[_5289 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5289 + 168 len _5429 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5289 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5289 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5289 + 232] = mem[idx + _5289 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5289 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5289 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5289 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5289 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5289 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5289 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5289 + 164] = return_data.size
                                            mem[_5289 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5289 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5289 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5289 + ceil32(return_data.size) + 233] = mem[idx + _5289 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5289 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5289 + 196] == bool(mem[_5289 + 196])
                                                if not mem[_5289 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5289 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5289 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5289 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5289 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5289 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _4952 * _4938 / 10^18 / _4952 * _4938 / 10^18 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5232 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5232] = 26
                                        mem[_5232 + 32] = 'SafeMath: division by zero'
                                        if not _5203:
                                            _5256 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5256 + 68] = mem[idx + _5232 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5256 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5256 + -mem[64] + 100
                                        _5303 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _4952 * _4938 / 10^18 / _5203
                                        _5348 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5348 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5348 + 36 len 28]
                                        mem[64] = _5303 + 164
                                        mem[_5303 + 100] = 32
                                        mem[_5303 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5451 = mem[_5348]
                                        s = 0
                                        while s < _5451:
                                            mem[s + _5303 + 164] = mem[s + _5348 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5451) > _5451:
                                            mem[_5303 + _5451 + 164] = 0
                                        call sub_0658f495[idx].mem[_5303 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5303 + 168 len _5451 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5303 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5303 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5303 + 232] = mem[idx + _5303 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5303 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5303 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5303 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5303 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5303 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5303 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5303 + 164] = return_data.size
                                            mem[_5303 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5303 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5303 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5303 + ceil32(return_data.size) + 233] = mem[idx + _5303 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5303 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5303 + 196] == bool(mem[_5303 + 196])
                                                if not mem[_5303 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5303 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5303 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5303 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5303 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5303 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                    else:
                        _5079 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5110 = mem[_5079]
                        if mem[_5079] < arg1:
                            if arg1 > 0:
                                if _4952 * _4938 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5196 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5204 = mem[_5196]
                                    if not _5110:
                                        _5223 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5223] = 26
                                        mem[_5223 + 32] = 'SafeMath: division by zero'
                                        if not _5204:
                                            _5246 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5246 + 68] = mem[idx + _5223 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5246 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5246 + -mem[64] + 100
                                        _5291 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _5204
                                        _5327 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5327 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5327 + 36 len 28]
                                        mem[64] = _5291 + 164
                                        mem[_5291 + 100] = 32
                                        mem[_5291 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5433 = mem[_5327]
                                        s = 0
                                        while s < _5433:
                                            mem[s + _5291 + 164] = mem[s + _5327 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5433) > _5433:
                                            mem[_5291 + _5433 + 164] = 0
                                        call sub_0658f495[idx].mem[_5291 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5291 + 168 len _5433 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5291 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5291 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5291 + 232] = mem[idx + _5291 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5291 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5291 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5291 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5291 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5291 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5291 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5291 + 164] = return_data.size
                                            mem[_5291 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5291 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5291 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5291 + ceil32(return_data.size) + 233] = mem[idx + _5291 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5291 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5291 + 196] == bool(mem[_5291 + 196])
                                                if not mem[_5291 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5291 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5291 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5291 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5291 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5291 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _5110 / _5110 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5234 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5234] = 26
                                        mem[_5234 + 32] = 'SafeMath: division by zero'
                                        if not _5204:
                                            _5258 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5258 + 68] = mem[idx + _5234 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5258 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5258 + -mem[64] + 100
                                        _5304 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _5110 / _5204
                                        _5353 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5353 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5353 + 36 len 28]
                                        mem[64] = _5304 + 164
                                        mem[_5304 + 100] = 32
                                        mem[_5304 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5454 = mem[_5353]
                                        s = 0
                                        while s < _5454:
                                            mem[s + _5304 + 164] = mem[s + _5353 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5454) > _5454:
                                            mem[_5304 + _5454 + 164] = 0
                                        call sub_0658f495[idx].mem[_5304 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5304 + 168 len _5454 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5304 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5304 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5304 + 232] = mem[idx + _5304 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5304 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5304 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5304 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5304 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5304 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5304 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5304 + 164] = return_data.size
                                            mem[_5304 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5304 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5304 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5304 + ceil32(return_data.size) + 233] = mem[idx + _5304 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5304 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5304 + 196] == bool(mem[_5304 + 196])
                                                if not mem[_5304 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5304 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5304 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5304 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5304 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5304 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                        else:
                            if arg1 > 0:
                                if _4952 * _4938 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5200 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5206 = mem[_5200]
                                    if not arg1:
                                        _5236 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5236] = 26
                                        mem[_5236 + 32] = 'SafeMath: division by zero'
                                        if not _5206:
                                            _5260 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5260 + 68] = mem[idx + _5236 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5260 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5260 + -mem[64] + 100
                                        _5306 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _5206
                                        _5358 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5358 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5358 + 36 len 28]
                                        mem[64] = _5306 + 164
                                        mem[_5306 + 100] = 32
                                        mem[_5306 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5460 = mem[_5358]
                                        s = 0
                                        while s < _5460:
                                            mem[s + _5306 + 164] = mem[s + _5358 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5460) > _5460:
                                            mem[_5306 + _5460 + 164] = 0
                                        call sub_0658f495[idx].mem[_5306 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5306 + 168 len _5460 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5306 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5306 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5306 + 232] = mem[idx + _5306 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5306 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5306 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5306 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5306 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5306 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5306 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5306 + 164] = return_data.size
                                            mem[_5306 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5306 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5306 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5306 + ceil32(return_data.size) + 233] = mem[idx + _5306 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5306 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5306 + 196] == bool(mem[_5306 + 196])
                                                if not mem[_5306 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5306 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5306 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5306 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5306 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5306 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * arg1 / arg1 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5247 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5247] = 26
                                        mem[_5247 + 32] = 'SafeMath: division by zero'
                                        if not _5206:
                                            _5267 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _5267 + 68] = mem[idx + _5247 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_5267 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _5267 + -mem[64] + 100
                                        _5330 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * arg1 / _5206
                                        _5374 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5374 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5374 + 36 len 28]
                                        mem[64] = _5330 + 164
                                        mem[_5330 + 100] = 32
                                        mem[_5330 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _5474 = mem[_5374]
                                        s = 0
                                        while s < _5474:
                                            mem[s + _5330 + 164] = mem[s + _5374 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5474) > _5474:
                                            mem[_5330 + _5474 + 164] = 0
                                        call sub_0658f495[idx].mem[_5330 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_5330 + 168 len _5474 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_5330 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5330 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5330 + 232] = mem[idx + _5330 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5330 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5330 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5330 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5330 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5330 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5330 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_5330 + 164] = return_data.size
                                            mem[_5330 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_5330 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_5330 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _5330 + ceil32(return_data.size) + 233] = mem[idx + _5330 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_5330 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5330 + 196] == bool(mem[_5330 + 196])
                                                if not mem[_5330 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_5330 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_5330 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5330 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_5330 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _5330 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
            idx = idx + 1
            continue 
        if arg1:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(s))
            staticcall address(s).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4928 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4932 = mem[_4928]
            _4937 = mem[64]
            mem[mem[64] + 36] = address(s)
            mem[mem[64] + 68] = _4932
            _4945 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_4937 + 100] = 32
            mem[_4937 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(s)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(s)):
                revert with 0, 'Address: call to non-contract'
            _4961 = mem[_4945]
            mem[_4937 + 164 len ceil32(mem[_4945])] = mem[_4945 + 32 len ceil32(mem[_4945])]
            if ceil32(_4961) > _4961:
                mem[_4937 + _4961 + 164] = 0
            call address(s) with:
                 gas gas_remaining wei
                args mem[_4937 + 168 len _4961 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_4937 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_4937 + 196] == bool(mem[_4937 + 196])
                    if not mem[_4937 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(s))
            call address(s).redeem(address arg1) with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function withdrawAll() payable {
    require balanceOf[address(msg.sender)] > 0
    mem[0] = msg.sender
    mem[32] = 0
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8031 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _8034 = mem[_8031]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8042 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _8034:
            _8061 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8061] = 26
            mem[_8061 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_8042] * _8034 / _8034 != mem[_8042]:
                revert with 0, 'SafeMath: multiplication overflow'
            _8065 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8065] = 26
            mem[_8065 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    if not ext_call.return_data[0]:
        _8033 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8033] = 26
        mem[_8033 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _8049 = mem[64]
        mem[64] = mem[64] + 96
        mem[_8049] = 34
        mem[_8049 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_8049 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] = 0
        _8069 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8069] = 30
        mem[_8069 + 32] = 'SafeMath: subtraction overflow'
        if balanceOf[address(msg.sender)] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalSupply -= balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8095 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _8097 = mem[_8095]
        if 0 / totalSupply <= mem[_8095]:
            _8099 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0 / totalSupply
            _8101 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_8099 + 100] = 32
            mem[_8099 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _8121 = mem[_8101]
            mem[_8099 + 164 len ceil32(mem[_8101])] = mem[_8101 + 32 len ceil32(mem[_8101])]
            if ceil32(_8121) > _8121:
                mem[_8099 + _8121 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_8099 + 168 len _8121 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_8099 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_8099 + 196] == bool(mem[_8099 + 196])
                    if not mem[_8099 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, 0 / totalSupply, balanceOf[address(msg.sender)], 0);
        if not (0 / totalSupply) - mem[_8095]:
            _8109 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8109] = 26
            mem[_8109 + 32] = 'SafeMath: division by zero'
            _8122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8122] = 30
            mem[_8122 + 32] = 'SafeMath: subtraction overflow'
            if 0 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            idx = 0
            s = 0
            t = 0
            t = 0
            while idx < sub_0658f495.length:
                mem[0] = 24
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].borrowRate() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16106 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _16124 = mem[_16106]
                if mem[_16106] <= t:
                    idx = idx + 1
                    s = s
                    t = mem[_16106]
                    t = t
                    continue 
                require idx < sub_0658f495.length
                mem[0] = 24
                idx = idx + 1
                s = sub_0658f495[idx]
                t = _16124
                t = _16124
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16140 = mem[_16116]
            if (0 / totalSupply) + mem[_16116] < mem[_16116]:
                revert with 0, 'SafeMath: addition overflow'
            idx = 0
            while idx < sub_0658f495.length:
                mem[0] = 24
                if sub_0658f495[idx] != address(s):
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24052 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _24060 = mem[_24052]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _24096 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _24112 = mem[_24096]
                    if not _24060:
                        _24160 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_24160] = 26
                        mem[_24160 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].totalBalance() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 < 0 / totalSupply:
                            _24556 = mem[64]
                        else:
                            _24604 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                    else:
                        if mem[_24096] * _24060 / _24060 != mem[_24096]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _24171 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_24171] = 26
                        mem[_24171 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].totalBalance() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if _24112 * _24060 / 10^18 < 0 / totalSupply:
                            _24603 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _24667 = mem[_24603]
                            if mem[_24603] < _24112 * _24060 / 10^18:
                                if 0 / totalSupply > 0:
                                    if _24112 * _24060 / 10^18 > 0:
                                        require ext_code.size(sub_0658f495[idx])
                                        staticcall sub_0658f495[idx].exchangeRateLast() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _24882 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _24939 = mem[_24882]
                                        if not _24667:
                                            _25062 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_25062] = 26
                                            mem[_25062 + 32] = 'SafeMath: division by zero'
                                            if not _24939:
                                                _25159 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _25159 + 68] = mem[idx + _25062 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_25159 + 94] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _25159 + -mem[64] + 100
                                            _25370 = mem[64]
                                            mem[mem[64] + 36] = sub_0658f495[idx]
                                            mem[mem[64] + 68] = 0 / _24939
                                            _25490 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_25490 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25490 + 36 len 28]
                                            mem[64] = _25370 + 164
                                            mem[_25370 + 100] = 32
                                            mem[_25370 + 132] = 'SafeERC20: low-level call failed'
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            _26494 = mem[_25490]
                                            s = 0
                                            while s < _26494:
                                                mem[s + _25370 + 164] = mem[s + _25490 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_26494) > _26494:
                                                mem[_25370 + _26494 + 164] = 0
                                            call sub_0658f495[idx].mem[_25370 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_25370 + 168 len _26494 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_25370 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25370 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25370 + 232] = mem[idx + _25370 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25370 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25370 + 168] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25370 + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25370 + ceil32(return_data.size) + 168] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25370 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25370 + (2 * ceil32(return_data.size)) + 164
                                            else:
                                                mem[_25370 + 164] = return_data.size
                                                mem[_25370 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_25370 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25370 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25370 + ceil32(return_data.size) + 233] = mem[idx + _25370 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25370 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_25370 + 196] == bool(mem[_25370 + 196])
                                                    if not mem[_25370 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25370 + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25370 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25370 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25370 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25370 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                        else:
                                            if 10^18 * _24667 / _24667 != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _25112 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_25112] = 26
                                            mem[_25112 + 32] = 'SafeMath: division by zero'
                                            if not _24939:
                                                _25199 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _25199 + 68] = mem[idx + _25112 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_25199 + 94] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _25199 + -mem[64] + 100
                                            _25431 = mem[64]
                                            mem[mem[64] + 36] = sub_0658f495[idx]
                                            mem[mem[64] + 68] = 10^18 * _24667 / _24939
                                            _25565 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_25565 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25565 + 36 len 28]
                                            mem[64] = _25431 + 164
                                            mem[_25431 + 100] = 32
                                            mem[_25431 + 132] = 'SafeERC20: low-level call failed'
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            _26687 = mem[_25565]
                                            s = 0
                                            while s < _26687:
                                                mem[s + _25431 + 164] = mem[s + _25565 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_26687) > _26687:
                                                mem[_25431 + _26687 + 164] = 0
                                            call sub_0658f495[idx].mem[_25431 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_25431 + 168 len _26687 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_25431 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25431 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25431 + 232] = mem[idx + _25431 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25431 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25431 + 168] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25431 + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25431 + ceil32(return_data.size) + 168] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25431 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25431 + (2 * ceil32(return_data.size)) + 164
                                            else:
                                                mem[_25431 + 164] = return_data.size
                                                mem[_25431 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_25431 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25431 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25431 + ceil32(return_data.size) + 233] = mem[idx + _25431 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25431 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_25431 + 196] == bool(mem[_25431 + 196])
                                                    if not mem[_25431 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25431 + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25431 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25431 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25431 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25431 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                        require return_data.size >= 32
                            else:
                                if 0 / totalSupply > 0:
                                    if _24112 * _24060 / 10^18 > 0:
                                        require ext_code.size(sub_0658f495[idx])
                                        staticcall sub_0658f495[idx].exchangeRateLast() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _24907 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _24955 = mem[_24907]
                                        if not _24112 * _24060 / 10^18:
                                            _25114 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_25114] = 26
                                            mem[_25114 + 32] = 'SafeMath: division by zero'
                                            if not _24955:
                                                _25201 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _25201 + 68] = mem[idx + _25114 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_25201 + 94] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _25201 + -mem[64] + 100
                                            _25433 = mem[64]
                                            mem[mem[64] + 36] = sub_0658f495[idx]
                                            mem[mem[64] + 68] = 0 / _24955
                                            _25570 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_25570 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25570 + 36 len 28]
                                            mem[64] = _25433 + 164
                                            mem[_25433 + 100] = 32
                                            mem[_25433 + 132] = 'SafeERC20: low-level call failed'
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            _26693 = mem[_25570]
                                            s = 0
                                            while s < _26693:
                                                mem[s + _25433 + 164] = mem[s + _25570 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_26693) > _26693:
                                                mem[_25433 + _26693 + 164] = 0
                                            call sub_0658f495[idx].mem[_25433 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_25433 + 168 len _26693 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_25433 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25433 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25433 + 232] = mem[idx + _25433 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25433 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25433 + 168] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25433 + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25433 + ceil32(return_data.size) + 168] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25433 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25433 + (2 * ceil32(return_data.size)) + 164
                                            else:
                                                mem[_25433 + 164] = return_data.size
                                                mem[_25433 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_25433 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25433 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25433 + ceil32(return_data.size) + 233] = mem[idx + _25433 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25433 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_25433 + 196] == bool(mem[_25433 + 196])
                                                    if not mem[_25433 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25433 + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25433 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25433 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25433 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25433 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                        else:
                                            if 10^18 * _24112 * _24060 / 10^18 / _24112 * _24060 / 10^18 != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _25160 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_25160] = 26
                                            mem[_25160 + 32] = 'SafeMath: division by zero'
                                            if not _24955:
                                                _25232 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _25232 + 68] = mem[idx + _25160 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_25232 + 94] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _25232 + -mem[64] + 100
                                            _25493 = mem[64]
                                            mem[mem[64] + 36] = sub_0658f495[idx]
                                            mem[mem[64] + 68] = 10^18 * _24112 * _24060 / 10^18 / _24955
                                            _25688 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_25688 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25688 + 36 len 28]
                                            mem[64] = _25493 + 164
                                            mem[_25493 + 100] = 32
                                            mem[_25493 + 132] = 'SafeERC20: low-level call failed'
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            _26899 = mem[_25688]
                                            s = 0
                                            while s < _26899:
                                                mem[s + _25493 + 164] = mem[s + _25688 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_26899) > _26899:
                                                mem[_25493 + _26899 + 164] = 0
                                            call sub_0658f495[idx].mem[_25493 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_25493 + 168 len _26899 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_25493 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25493 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25493 + 232] = mem[idx + _25493 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25493 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25493 + 168] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25493 + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25493 + ceil32(return_data.size) + 168] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25493 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25493 + (2 * ceil32(return_data.size)) + 164
                                            else:
                                                mem[_25493 + 164] = return_data.size
                                                mem[_25493 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_25493 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25493 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25493 + ceil32(return_data.size) + 233] = mem[idx + _25493 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25493 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_25493 + 196] == bool(mem[_25493 + 196])
                                                    if not mem[_25493 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25493 + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25493 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25493 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25493 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25493 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                        require return_data.size >= 32
                        else:
                            _24635 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _24704 = mem[_24635]
                            if mem[_24635] < 0 / totalSupply:
                                if 0 / totalSupply > 0:
                                    if _24112 * _24060 / 10^18 > 0:
                                        require ext_code.size(sub_0658f495[idx])
                                        staticcall sub_0658f495[idx].exchangeRateLast() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _24908 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _24956 = mem[_24908]
                                        if not _24704:
                                            _25115 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_25115] = 26
                                            mem[_25115 + 32] = 'SafeMath: division by zero'
                                            if not _24956:
                                                _25202 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _25202 + 68] = mem[idx + _25115 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_25202 + 94] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _25202 + -mem[64] + 100
                                            _25435 = mem[64]
                                            mem[mem[64] + 36] = sub_0658f495[idx]
                                            mem[mem[64] + 68] = 0 / _24956
                                            _25573 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_25573 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25573 + 36 len 28]
                                            mem[64] = _25435 + 164
                                            mem[_25435 + 100] = 32
                                            mem[_25435 + 132] = 'SafeERC20: low-level call failed'
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            _26697 = mem[_25573]
                                            s = 0
                                            while s < _26697:
                                                mem[s + _25435 + 164] = mem[s + _25573 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_26697) > _26697:
                                                mem[_25435 + _26697 + 164] = 0
                                            call sub_0658f495[idx].mem[_25435 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_25435 + 168 len _26697 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_25435 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25435 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25435 + 232] = mem[idx + _25435 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25435 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25435 + 168] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25435 + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25435 + ceil32(return_data.size) + 168] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25435 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25435 + (2 * ceil32(return_data.size)) + 164
                                            else:
                                                mem[_25435 + 164] = return_data.size
                                                mem[_25435 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_25435 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25435 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25435 + ceil32(return_data.size) + 233] = mem[idx + _25435 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25435 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_25435 + 196] == bool(mem[_25435 + 196])
                                                    if not mem[_25435 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25435 + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25435 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25435 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25435 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25435 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                        else:
                                            if 10^18 * _24704 / _24704 != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _25162 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_25162] = 26
                                            mem[_25162 + 32] = 'SafeMath: division by zero'
                                            if not _24956:
                                                _25234 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _25234 + 68] = mem[idx + _25162 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_25234 + 94] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _25234 + -mem[64] + 100
                                            _25494 = mem[64]
                                            mem[mem[64] + 36] = sub_0658f495[idx]
                                            mem[mem[64] + 68] = 10^18 * _24704 / _24956
                                            _25693 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_25693 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25693 + 36 len 28]
                                            mem[64] = _25494 + 164
                                            mem[_25494 + 100] = 32
                                            mem[_25494 + 132] = 'SafeERC20: low-level call failed'
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            _26902 = mem[_25693]
                                            s = 0
                                            while s < _26902:
                                                mem[s + _25494 + 164] = mem[s + _25693 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_26902) > _26902:
                                                mem[_25494 + _26902 + 164] = 0
                                            call sub_0658f495[idx].mem[_25494 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_25494 + 168 len _26902 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_25494 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25494 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25494 + 232] = mem[idx + _25494 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25494 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25494 + 168] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25494 + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25494 + ceil32(return_data.size) + 168] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25494 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25494 + (2 * ceil32(return_data.size)) + 164
                                            else:
                                                mem[_25494 + 164] = return_data.size
                                                mem[_25494 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_25494 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25494 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25494 + ceil32(return_data.size) + 233] = mem[idx + _25494 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25494 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_25494 + 196] == bool(mem[_25494 + 196])
                                                    if not mem[_25494 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25494 + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25494 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25494 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25494 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25494 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                        require return_data.size >= 32
                            else:
                                if 0 / totalSupply > 0:
                                    if _24112 * _24060 / 10^18 > 0:
                                        require ext_code.size(sub_0658f495[idx])
                                        staticcall sub_0658f495[idx].exchangeRateLast() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _24940 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _24968 = mem[_24940]
                                        if not 0 / totalSupply:
                                            _25164 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_25164] = 26
                                            mem[_25164 + 32] = 'SafeMath: division by zero'
                                            if not _24968:
                                                _25236 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _25236 + 68] = mem[idx + _25164 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_25236 + 94] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _25236 + -mem[64] + 100
                                            _25496 = mem[64]
                                            mem[mem[64] + 36] = sub_0658f495[idx]
                                            mem[mem[64] + 68] = 0 / _24968
                                            _25698 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_25698 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25698 + 36 len 28]
                                            mem[64] = _25496 + 164
                                            mem[_25496 + 100] = 32
                                            mem[_25496 + 132] = 'SafeERC20: low-level call failed'
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            _26908 = mem[_25698]
                                            s = 0
                                            while s < _26908:
                                                mem[s + _25496 + 164] = mem[s + _25698 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_26908) > _26908:
                                                mem[_25496 + _26908 + 164] = 0
                                            call sub_0658f495[idx].mem[_25496 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_25496 + 168 len _26908 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_25496 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25496 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25496 + 232] = mem[idx + _25496 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25496 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25496 + 168] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25496 + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25496 + ceil32(return_data.size) + 168] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25496 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25496 + (2 * ceil32(return_data.size)) + 164
                                            else:
                                                mem[_25496 + 164] = return_data.size
                                                mem[_25496 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_25496 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25496 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25496 + ceil32(return_data.size) + 233] = mem[idx + _25496 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25496 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_25496 + 196] == bool(mem[_25496 + 196])
                                                    if not mem[_25496 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25496 + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25496 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25496 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25496 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25496 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                        else:
                                            if 10^18 * 0 / totalSupply / 0 / totalSupply != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            _25203 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_25203] = 26
                                            mem[_25203 + 32] = 'SafeMath: division by zero'
                                            if not _24968:
                                                _25283 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _25283 + 68] = mem[idx + _25203 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_25283 + 94] = 0
                                                revert with memory
                                                  from mem[64]
                                                   len _25283 + -mem[64] + 100
                                            _25576 = mem[64]
                                            mem[mem[64] + 36] = sub_0658f495[idx]
                                            mem[mem[64] + 68] = 10^18 * 0 / totalSupply / _24968
                                            _25836 = mem[64]
                                            mem[mem[64]] = 68
                                            mem[64] = mem[64] + 100
                                            mem[_25836 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25836 + 36 len 28]
                                            mem[64] = _25576 + 164
                                            mem[_25576 + 100] = 32
                                            mem[_25576 + 132] = 'SafeERC20: low-level call failed'
                                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(sub_0658f495[idx]):
                                                revert with 0, 'Address: call to non-contract'
                                            _27098 = mem[_25836]
                                            s = 0
                                            while s < _27098:
                                                mem[s + _25576 + 164] = mem[s + _25836 + 32]
                                                s = s + 32
                                                continue 
                                            if ceil32(_27098) > _27098:
                                                mem[_25576 + _27098 + 164] = 0
                                            call sub_0658f495[idx].mem[_25576 + 164 len 4] with:
                                                 gas gas_remaining wei
                                                args mem[_25576 + 168 len _27098 - 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    if mem[96]:
                                                        revert with memory
                                                          from 128
                                                           len mem[96]
                                                    mem[_25576 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25576 + 168] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25576 + 232] = mem[idx + _25576 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25576 + 232]
                                                if mem[96]:
                                                    require mem[96] >= 32
                                                    require mem[128] == bool(mem[128])
                                                    if not mem[128]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25576 + 168] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25576 + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25576 + ceil32(return_data.size) + 168] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25576 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25576 + (2 * ceil32(return_data.size)) + 164
                                            else:
                                                mem[_25576 + 164] = return_data.size
                                                mem[_25576 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[_25576 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_25576 + ceil32(return_data.size) + 169] = 32
                                                    idx = 0
                                                    while idx < 32:
                                                        mem[idx + _25576 + ceil32(return_data.size) + 233] = mem[idx + _25576 + 132]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 32, 32, mem[_25576 + ceil32(return_data.size) + 233]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    require mem[_25576 + 196] == bool(mem[_25576 + 196])
                                                    if not mem[_25576 + 196]:
                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                mem[_25576 + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(sub_0658f495[idx])
                                                call sub_0658f495[idx].redeem(address arg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                mem[_25576 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_25576 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                                require ext_code.size(wantAddress)
                                                staticcall wantAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[_25576 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _25576 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                        require return_data.size >= 32
                idx = idx + 1
                continue 
            if not 0 / totalSupply:
                _24023 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0 / totalSupply
                _24038 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_24023 + 100] = 32
                mem[_24023 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _24100 = mem[_24038]
                mem[_24023 + 164 len ceil32(mem[_24038])] = mem[_24038 + 32 len ceil32(mem[_24038])]
                if ceil32(_24100) > _24100:
                    mem[_24023 + _24100 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_24023 + 168 len _24100 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_24023 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_24023 + 196] == bool(mem[_24023 + 196])
                        if not mem[_24023 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, 0 / totalSupply, balanceOf[address(msg.sender)], 0);
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(s))
            staticcall address(s).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24028 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _24048 = mem[_24028]
            _24059 = mem[64]
            mem[mem[64] + 36] = address(s)
            mem[mem[64] + 68] = _24048
            _24075 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_24059 + 100] = 32
            mem[_24059 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(s)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(s)):
                revert with 0, 'Address: call to non-contract'
            _24139 = mem[_24075]
            mem[_24059 + 164 len ceil32(mem[_24075])] = mem[_24075 + 32 len ceil32(mem[_24075])]
            if ceil32(_24139) > _24139:
                mem[_24059 + _24139 + 164] = 0
            call address(s) with:
                 gas gas_remaining wei
                args mem[_24059 + 168 len _24139 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_24059 + 168] = this.address
                require ext_code.size(address(s))
                call address(s).redeem(address arg1) with:
                     gas gas_remaining wei
                    args this.address
                mem[_24059 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_24059 + ceil32(return_data.size) + 200] = msg.sender
                mem[_24059 + ceil32(return_data.size) + 232] = 0 / totalSupply
                mem[_24059 + ceil32(return_data.size) + 164] = 68
                mem[_24059 + ceil32(return_data.size) + 196 len 4] = unknown_0xa9059cbb(?????)
                mem[_24059 + ceil32(return_data.size) + 264] = 32
                mem[_24059 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[_24059 + ceil32(return_data.size) + 328 len 96] = 0, msg.sender, 0 / totalSupply, 0
                mem[_24059 + ceil32(return_data.size) + 396] = 0
                call wantAddress with:
                   funct Mask(32, 224, 0, msg.sender, 0 / totalSupply, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, 0 / totalSupply, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_24059 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_24059 + ceil32(return_data.size) + 360] == bool(mem[_24059 + ceil32(return_data.size) + 360])
                        if not mem[_24059 + ceil32(return_data.size) + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, 0 / totalSupply, balanceOf[address(msg.sender)], 0);
            mem[_24059 + 164] = return_data.size
            mem[_24059 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_24059 + 196] == bool(mem[_24059 + 196])
                if not mem[_24059 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_24059 + ceil32(return_data.size) + 169] = this.address
            require ext_code.size(address(s))
            call address(s).redeem(address arg1) with:
                 gas gas_remaining wei
                args this.address
            mem[_24059 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = msg.sender
            mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = 0 / totalSupply
            mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
            mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
            mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
            mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, msg.sender, 0 / totalSupply, 0
            mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, msg.sender, 0 / totalSupply, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, 0 / totalSupply, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, 0 / totalSupply, balanceOf[address(msg.sender)], 0);
            mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
            mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_24059 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_24059 + (4 * ceil32(return_data.size)) + 334] = 32
                mem[_24059 + (4 * ceil32(return_data.size)) + 366] = 32
                mem[_24059 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
                revert with memory
                  from _24059 + (4 * ceil32(return_data.size)) + 330
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                mem[_24059 + (4 * ceil32(return_data.size)) + 330] = msg.sender
                mem[_24059 + (4 * ceil32(return_data.size)) + 362] = 0 / totalSupply
                mem[_24059 + (4 * ceil32(return_data.size)) + 394] = balanceOf[address(msg.sender)]
                mem[_24059 + (4 * ceil32(return_data.size)) + 426] = 0
                emit Withdrawal(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                                mem[_24059 + (4 * ceil32(return_data.size)) + 330 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
            require return_data.size >= 32
            require mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
            if mem[_24059 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                mem[_24059 + (4 * ceil32(return_data.size)) + 330] = msg.sender
                mem[_24059 + (4 * ceil32(return_data.size)) + 362] = 0 / totalSupply
                mem[_24059 + (4 * ceil32(return_data.size)) + 394] = balanceOf[address(msg.sender)]
                mem[_24059 + (4 * ceil32(return_data.size)) + 426] = 0
                emit Withdrawal(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                                mem[_24059 + (4 * ceil32(return_data.size)) + 330 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
            mem[_24059 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_24059 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_24059 + (4 * ceil32(return_data.size)) + 366] = 42
            mem[_24059 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_24059 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
            revert with memory
              from _24059 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        if (0 / totalSupply * withdrawalFee) - (mem[_8095] * withdrawalFee) / (0 / totalSupply) - mem[_8095] != withdrawalFee:
            revert with 0, 'SafeMath: multiplication overflow'
        _8111 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8111] = 26
        mem[_8111 + 32] = 'SafeMath: division by zero'
        _8127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8127] = 30
        mem[_8127 + 32] = 'SafeMath: subtraction overflow'
        if (0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000 > 0 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        idx = 0
        s = 0
        t = 0
        t = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].borrowRate() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16123 = mem[_16104]
            if mem[_16104] <= t:
                idx = idx + 1
                s = s
                t = mem[_16104]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _16123
            t = _16123
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16139 = mem[_16115]
        if (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000) + mem[_16115] < mem[_16115]:
            revert with 0, 'SafeMath: addition overflow'
        idx = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            if sub_0658f495[idx] != address(s):
                require idx < sub_0658f495.length
                mem[0] = 24
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24051 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _24058 = mem[_24051]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24091 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _24109 = mem[_24091]
                if not _24058:
                    _24155 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_24155] = 26
                    mem[_24155 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].totalBalance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 < (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000):
                        _24545 = mem[64]
                    else:
                        _24592 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                else:
                    if mem[_24091] * _24058 / _24058 != mem[_24091]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _24168 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_24168] = 26
                    mem[_24168 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].totalBalance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _24109 * _24058 / 10^18 < (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000):
                        _24591 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _24659 = mem[_24591]
                        if mem[_24591] < _24109 * _24058 / 10^18:
                            if (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000) > 0:
                                if _24109 * _24058 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24875 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _24931 = mem[_24875]
                                    if not _24659:
                                        _25051 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25051] = 26
                                        mem[_25051 + 32] = 'SafeMath: division by zero'
                                        if not _24931:
                                            _25147 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25147 + 68] = mem[idx + _25051 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25147 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25147 + -mem[64] + 100
                                        _25358 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _24931
                                        _25475 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25475 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25475 + 36 len 28]
                                        mem[64] = _25358 + 164
                                        mem[_25358 + 100] = 32
                                        mem[_25358 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26440 = mem[_25475]
                                        s = 0
                                        while s < _26440:
                                            mem[s + _25358 + 164] = mem[s + _25475 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26440) > _26440:
                                            mem[_25358 + _26440 + 164] = 0
                                        call sub_0658f495[idx].mem[_25358 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25358 + 168 len _26440 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25358 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25358 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25358 + 232] = mem[idx + _25358 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25358 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25358 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25358 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25358 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25358 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25358 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25358 + 164] = return_data.size
                                            mem[_25358 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25358 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25358 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25358 + ceil32(return_data.size) + 233] = mem[idx + _25358 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25358 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25358 + 196] == bool(mem[_25358 + 196])
                                                if not mem[_25358 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25358 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25358 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25358 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25358 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25358 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _24659 / _24659 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _25099 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25099] = 26
                                        mem[_25099 + 32] = 'SafeMath: division by zero'
                                        if not _24931:
                                            _25189 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25189 + 68] = mem[idx + _25099 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25189 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25189 + -mem[64] + 100
                                        _25415 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _24659 / _24931
                                        _25545 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25545 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25545 + 36 len 28]
                                        mem[64] = _25415 + 164
                                        mem[_25415 + 100] = 32
                                        mem[_25415 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26637 = mem[_25545]
                                        s = 0
                                        while s < _26637:
                                            mem[s + _25415 + 164] = mem[s + _25545 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26637) > _26637:
                                            mem[_25415 + _26637 + 164] = 0
                                        call sub_0658f495[idx].mem[_25415 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25415 + 168 len _26637 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25415 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25415 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25415 + 232] = mem[idx + _25415 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25415 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25415 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25415 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25415 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25415 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25415 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25415 + 164] = return_data.size
                                            mem[_25415 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25415 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25415 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25415 + ceil32(return_data.size) + 233] = mem[idx + _25415 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25415 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25415 + 196] == bool(mem[_25415 + 196])
                                                if not mem[_25415 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25415 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25415 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25415 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25415 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25415 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                        else:
                            if (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000) > 0:
                                if _24109 * _24058 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24901 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _24951 = mem[_24901]
                                    if not _24109 * _24058 / 10^18:
                                        _25101 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25101] = 26
                                        mem[_25101 + 32] = 'SafeMath: division by zero'
                                        if not _24951:
                                            _25191 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25191 + 68] = mem[idx + _25101 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25191 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25191 + -mem[64] + 100
                                        _25417 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _24951
                                        _25550 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25550 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25550 + 36 len 28]
                                        mem[64] = _25417 + 164
                                        mem[_25417 + 100] = 32
                                        mem[_25417 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26643 = mem[_25550]
                                        s = 0
                                        while s < _26643:
                                            mem[s + _25417 + 164] = mem[s + _25550 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26643) > _26643:
                                            mem[_25417 + _26643 + 164] = 0
                                        call sub_0658f495[idx].mem[_25417 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25417 + 168 len _26643 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25417 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25417 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25417 + 232] = mem[idx + _25417 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25417 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25417 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25417 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25417 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25417 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25417 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25417 + 164] = return_data.size
                                            mem[_25417 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25417 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25417 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25417 + ceil32(return_data.size) + 233] = mem[idx + _25417 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25417 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25417 + 196] == bool(mem[_25417 + 196])
                                                if not mem[_25417 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25417 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25417 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25417 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25417 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25417 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _24109 * _24058 / 10^18 / _24109 * _24058 / 10^18 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _25148 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25148] = 26
                                        mem[_25148 + 32] = 'SafeMath: division by zero'
                                        if not _24951:
                                            _25224 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25224 + 68] = mem[idx + _25148 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25224 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25224 + -mem[64] + 100
                                        _25478 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _24109 * _24058 / 10^18 / _24951
                                        _25657 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25657 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25657 + 36 len 28]
                                        mem[64] = _25478 + 164
                                        mem[_25478 + 100] = 32
                                        mem[_25478 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26847 = mem[_25657]
                                        s = 0
                                        while s < _26847:
                                            mem[s + _25478 + 164] = mem[s + _25657 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26847) > _26847:
                                            mem[_25478 + _26847 + 164] = 0
                                        call sub_0658f495[idx].mem[_25478 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25478 + 168 len _26847 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25478 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25478 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25478 + 232] = mem[idx + _25478 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25478 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25478 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25478 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25478 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25478 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25478 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25478 + 164] = return_data.size
                                            mem[_25478 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25478 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25478 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25478 + ceil32(return_data.size) + 233] = mem[idx + _25478 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25478 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25478 + 196] == bool(mem[_25478 + 196])
                                                if not mem[_25478 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25478 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25478 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25478 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25478 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25478 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                    else:
                        _24627 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _24695 = mem[_24627]
                        if mem[_24627] < (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000):
                            if (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000) > 0:
                                if _24109 * _24058 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24902 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _24952 = mem[_24902]
                                    if not _24695:
                                        _25102 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25102] = 26
                                        mem[_25102 + 32] = 'SafeMath: division by zero'
                                        if not _24952:
                                            _25192 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25192 + 68] = mem[idx + _25102 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25192 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25192 + -mem[64] + 100
                                        _25419 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _24952
                                        _25553 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25553 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25553 + 36 len 28]
                                        mem[64] = _25419 + 164
                                        mem[_25419 + 100] = 32
                                        mem[_25419 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26647 = mem[_25553]
                                        s = 0
                                        while s < _26647:
                                            mem[s + _25419 + 164] = mem[s + _25553 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26647) > _26647:
                                            mem[_25419 + _26647 + 164] = 0
                                        call sub_0658f495[idx].mem[_25419 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25419 + 168 len _26647 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25419 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25419 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25419 + 232] = mem[idx + _25419 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25419 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25419 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25419 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25419 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25419 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25419 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25419 + 164] = return_data.size
                                            mem[_25419 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25419 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25419 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25419 + ceil32(return_data.size) + 233] = mem[idx + _25419 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25419 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25419 + 196] == bool(mem[_25419 + 196])
                                                if not mem[_25419 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25419 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25419 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25419 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25419 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25419 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _24695 / _24695 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _25150 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25150] = 26
                                        mem[_25150 + 32] = 'SafeMath: division by zero'
                                        if not _24952:
                                            _25226 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25226 + 68] = mem[idx + _25150 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25226 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25226 + -mem[64] + 100
                                        _25479 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _24695 / _24952
                                        _25662 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25662 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25662 + 36 len 28]
                                        mem[64] = _25479 + 164
                                        mem[_25479 + 100] = 32
                                        mem[_25479 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26850 = mem[_25662]
                                        s = 0
                                        while s < _26850:
                                            mem[s + _25479 + 164] = mem[s + _25662 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26850) > _26850:
                                            mem[_25479 + _26850 + 164] = 0
                                        call sub_0658f495[idx].mem[_25479 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25479 + 168 len _26850 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25479 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25479 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25479 + 232] = mem[idx + _25479 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25479 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25479 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25479 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25479 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25479 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25479 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25479 + 164] = return_data.size
                                            mem[_25479 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25479 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25479 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25479 + ceil32(return_data.size) + 233] = mem[idx + _25479 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25479 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25479 + 196] == bool(mem[_25479 + 196])
                                                if not mem[_25479 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25479 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25479 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25479 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25479 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25479 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                        else:
                            if (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000) > 0:
                                if _24109 * _24058 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24932 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _24965 = mem[_24932]
                                    if not (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000):
                                        _25152 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25152] = 26
                                        mem[_25152 + 32] = 'SafeMath: division by zero'
                                        if not _24965:
                                            _25228 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25228 + 68] = mem[idx + _25152 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25228 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25228 + -mem[64] + 100
                                        _25481 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _24965
                                        _25667 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25667 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25667 + 36 len 28]
                                        mem[64] = _25481 + 164
                                        mem[_25481 + 100] = 32
                                        mem[_25481 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26856 = mem[_25667]
                                        s = 0
                                        while s < _26856:
                                            mem[s + _25481 + 164] = mem[s + _25667 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26856) > _26856:
                                            mem[_25481 + _26856 + 164] = 0
                                        call sub_0658f495[idx].mem[_25481 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25481 + 168 len _26856 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25481 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25481 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25481 + 232] = mem[idx + _25481 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25481 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25481 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25481 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25481 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25481 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25481 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25481 + 164] = return_data.size
                                            mem[_25481 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25481 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25481 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25481 + ceil32(return_data.size) + 233] = mem[idx + _25481 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25481 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25481 + 196] == bool(mem[_25481 + 196])
                                                if not mem[_25481 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25481 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25481 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25481 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25481 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25481 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if (10^18 * 0 / totalSupply) - (10^18 * (0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000) / (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000) != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _25193 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25193] = 26
                                        mem[_25193 + 32] = 'SafeMath: division by zero'
                                        if not _24965:
                                            _25271 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25271 + 68] = mem[idx + _25193 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25271 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25271 + -mem[64] + 100
                                        _25556 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = (10^18 * 0 / totalSupply) - (10^18 * (0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000) / _24965
                                        _25801 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25801 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25801 + 36 len 28]
                                        mem[64] = _25556 + 164
                                        mem[_25556 + 100] = 32
                                        mem[_25556 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _27050 = mem[_25801]
                                        s = 0
                                        while s < _27050:
                                            mem[s + _25556 + 164] = mem[s + _25801 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_27050) > _27050:
                                            mem[_25556 + _27050 + 164] = 0
                                        call sub_0658f495[idx].mem[_25556 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25556 + 168 len _27050 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25556 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25556 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25556 + 232] = mem[idx + _25556 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25556 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25556 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25556 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25556 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25556 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25556 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25556 + 164] = return_data.size
                                            mem[_25556 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25556 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25556 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25556 + ceil32(return_data.size) + 233] = mem[idx + _25556 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25556 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25556 + 196] == bool(mem[_25556 + 196])
                                                if not mem[_25556 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25556 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25556 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25556 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25556 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25556 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
            idx = idx + 1
            continue 
        if not (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000):
            _24021 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000)
            _24035 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_24021 + 100] = 32
            mem[_24021 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _24099 = mem[_24035]
            mem[_24021 + 164 len ceil32(mem[_24035])] = mem[_24035 + 32 len ceil32(mem[_24035])]
            if ceil32(_24099) > _24099:
                mem[_24021 + _24099 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_24021 + 168 len _24099 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_24021 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_24021 + 196] == bool(mem[_24021 + 196])
                    if not mem[_24021 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000), balanceOf[address(msg.sender)], (0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000);
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(s))
        staticcall address(s).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24027 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24046 = mem[_24027]
        _24057 = mem[64]
        mem[mem[64] + 36] = address(s)
        mem[mem[64] + 68] = _24046
        _24073 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_24057 + 100] = 32
        mem[_24057 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(s)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(s)):
            revert with 0, 'Address: call to non-contract'
        _24136 = mem[_24073]
        mem[_24057 + 164 len ceil32(mem[_24073])] = mem[_24073 + 32 len ceil32(mem[_24073])]
        if ceil32(_24136) > _24136:
            mem[_24057 + _24136 + 164] = 0
        call address(s) with:
             gas gas_remaining wei
            args mem[_24057 + 168 len _24136 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_24057 + 168] = this.address
            require ext_code.size(address(s))
            call address(s).redeem(address arg1) with:
                 gas gas_remaining wei
                args this.address
            mem[_24057 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_24057 + ceil32(return_data.size) + 200] = msg.sender
            mem[_24057 + ceil32(return_data.size) + 232] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000)
            mem[_24057 + ceil32(return_data.size) + 164] = 68
            mem[_24057 + ceil32(return_data.size) + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_24057 + ceil32(return_data.size) + 264] = 32
            mem[_24057 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[_24057 + ceil32(return_data.size) + 328 len 96] = 0, msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000), 0
            mem[_24057 + ceil32(return_data.size) + 396] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_24057 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_24057 + ceil32(return_data.size) + 360] == bool(mem[_24057 + ceil32(return_data.size) + 360])
                    if not mem[_24057 + ceil32(return_data.size) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000), balanceOf[address(msg.sender)], (0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000);
        mem[_24057 + 164] = return_data.size
        mem[_24057 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_24057 + 196] == bool(mem[_24057 + 196])
            if not mem[_24057 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_24057 + ceil32(return_data.size) + 169] = this.address
        require ext_code.size(address(s))
        call address(s).redeem(address arg1) with:
             gas gas_remaining wei
            args this.address
        mem[_24057 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = msg.sender
        mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000)
        mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
        mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000), 0
        mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000), balanceOf[address(msg.sender)], (0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000);
        mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
        mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_24057 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_24057 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_24057 + (4 * ceil32(return_data.size)) + 366] = 32
            mem[_24057 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
            revert with memory
              from _24057 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            mem[_24057 + (4 * ceil32(return_data.size)) + 330] = msg.sender
            mem[_24057 + (4 * ceil32(return_data.size)) + 362] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000)
            mem[_24057 + (4 * ceil32(return_data.size)) + 394] = balanceOf[address(msg.sender)]
            mem[_24057 + (4 * ceil32(return_data.size)) + 426] = (0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000
            emit Withdrawal(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                            mem[_24057 + (4 * ceil32(return_data.size)) + 330 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
        require return_data.size >= 32
        require mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
        if mem[_24057 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
            mem[_24057 + (4 * ceil32(return_data.size)) + 330] = msg.sender
            mem[_24057 + (4 * ceil32(return_data.size)) + 362] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000)
            mem[_24057 + (4 * ceil32(return_data.size)) + 394] = balanceOf[address(msg.sender)]
            mem[_24057 + (4 * ceil32(return_data.size)) + 426] = (0 / totalSupply * withdrawalFee) - (_8097 * withdrawalFee) / 10000
            emit Withdrawal(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                            mem[_24057 + (4 * ceil32(return_data.size)) + 330 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
        mem[_24057 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_24057 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_24057 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_24057 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_24057 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
        revert with memory
          from _24057 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    if balanceOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: multiplication overflow'
    _8035 = mem[64]
    mem[64] = mem[64] + 64
    mem[_8035] = 26
    mem[_8035 + 32] = 'SafeMath: division by zero'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    _8053 = mem[64]
    mem[64] = mem[64] + 96
    mem[_8053] = 34
    mem[_8053 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 34
        mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_8053 + 66 len 30]
        revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
    mem[0] = msg.sender
    mem[32] = 0
    balanceOf[address(msg.sender)] = 0
    _8070 = mem[64]
    mem[64] = mem[64] + 64
    mem[_8070] = 30
    mem[_8070 + 32] = 'SafeMath: subtraction overflow'
    if balanceOf[address(msg.sender)] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    totalSupply -= balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _8096 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _8098 = mem[_8096]
    if balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply <= mem[_8096]:
        _8100 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
        _8103 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_8100 + 100] = 32
        mem[_8100 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _8123 = mem[_8103]
        mem[_8100 + 164 len ceil32(mem[_8103])] = mem[_8103 + 32 len ceil32(mem[_8103])]
        if ceil32(_8123) > _8123:
            mem[_8100 + _8123 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_8100 + 168 len _8123 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_8100 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_8100 + 196] == bool(mem[_8100 + 196])
                if not mem[_8100 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawal(msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, balanceOf[address(msg.sender)], 0);
    if not (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - mem[_8096]:
        _8110 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8110] = 26
        mem[_8110 + 32] = 'SafeMath: division by zero'
        _8124 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8124] = 30
        mem[_8124 + 32] = 'SafeMath: subtraction overflow'
        if 0 > balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        idx = 0
        s = 0
        t = 0
        t = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].borrowRate() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _16097 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16120 = mem[_16097]
            if mem[_16097] <= t:
                idx = idx + 1
                s = s
                t = mem[_16097]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _16120
            t = _16120
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16132 = mem[_16113]
        if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) + mem[_16113] < mem[_16113]:
            revert with 0, 'SafeMath: addition overflow'
        idx = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            if sub_0658f495[idx] != address(s):
                require idx < sub_0658f495.length
                mem[0] = 24
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24050 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _24056 = mem[_24050]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24086 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _24106 = mem[_24086]
                if not _24056:
                    _24150 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_24150] = 26
                    mem[_24150 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].totalBalance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 < balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply:
                        _24534 = mem[64]
                    else:
                        _24580 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                else:
                    if mem[_24086] * _24056 / _24056 != mem[_24086]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _24165 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_24165] = 26
                    mem[_24165 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].totalBalance() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if _24106 * _24056 / 10^18 < balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply:
                        _24579 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _24651 = mem[_24579]
                        if mem[_24579] < _24106 * _24056 / 10^18:
                            if balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply > 0:
                                if _24106 * _24056 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24868 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _24923 = mem[_24868]
                                    if not _24651:
                                        _25040 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25040] = 26
                                        mem[_25040 + 32] = 'SafeMath: division by zero'
                                        if not _24923:
                                            _25135 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25135 + 68] = mem[idx + _25040 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25135 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25135 + -mem[64] + 100
                                        _25346 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _24923
                                        _25460 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25460 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25460 + 36 len 28]
                                        mem[64] = _25346 + 164
                                        mem[_25346 + 100] = 32
                                        mem[_25346 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26386 = mem[_25460]
                                        s = 0
                                        while s < _26386:
                                            mem[s + _25346 + 164] = mem[s + _25460 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26386) > _26386:
                                            mem[_25346 + _26386 + 164] = 0
                                        call sub_0658f495[idx].mem[_25346 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25346 + 168 len _26386 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25346 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25346 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25346 + 232] = mem[idx + _25346 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25346 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25346 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25346 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25346 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25346 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25346 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25346 + 164] = return_data.size
                                            mem[_25346 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25346 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25346 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25346 + ceil32(return_data.size) + 233] = mem[idx + _25346 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25346 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25346 + 196] == bool(mem[_25346 + 196])
                                                if not mem[_25346 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25346 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25346 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25346 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25346 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25346 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _24651 / _24651 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _25086 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25086] = 26
                                        mem[_25086 + 32] = 'SafeMath: division by zero'
                                        if not _24923:
                                            _25179 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25179 + 68] = mem[idx + _25086 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25179 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25179 + -mem[64] + 100
                                        _25399 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _24651 / _24923
                                        _25525 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25525 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25525 + 36 len 28]
                                        mem[64] = _25399 + 164
                                        mem[_25399 + 100] = 32
                                        mem[_25399 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26587 = mem[_25525]
                                        s = 0
                                        while s < _26587:
                                            mem[s + _25399 + 164] = mem[s + _25525 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26587) > _26587:
                                            mem[_25399 + _26587 + 164] = 0
                                        call sub_0658f495[idx].mem[_25399 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25399 + 168 len _26587 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25399 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25399 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25399 + 232] = mem[idx + _25399 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25399 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25399 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25399 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25399 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25399 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25399 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25399 + 164] = return_data.size
                                            mem[_25399 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25399 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25399 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25399 + ceil32(return_data.size) + 233] = mem[idx + _25399 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25399 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25399 + 196] == bool(mem[_25399 + 196])
                                                if not mem[_25399 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25399 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25399 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25399 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25399 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25399 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                        else:
                            if balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply > 0:
                                if _24106 * _24056 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24895 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _24947 = mem[_24895]
                                    if not _24106 * _24056 / 10^18:
                                        _25088 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25088] = 26
                                        mem[_25088 + 32] = 'SafeMath: division by zero'
                                        if not _24947:
                                            _25181 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25181 + 68] = mem[idx + _25088 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25181 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25181 + -mem[64] + 100
                                        _25401 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _24947
                                        _25530 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25530 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25530 + 36 len 28]
                                        mem[64] = _25401 + 164
                                        mem[_25401 + 100] = 32
                                        mem[_25401 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26593 = mem[_25530]
                                        s = 0
                                        while s < _26593:
                                            mem[s + _25401 + 164] = mem[s + _25530 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26593) > _26593:
                                            mem[_25401 + _26593 + 164] = 0
                                        call sub_0658f495[idx].mem[_25401 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25401 + 168 len _26593 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25401 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25401 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25401 + 232] = mem[idx + _25401 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25401 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25401 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25401 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25401 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25401 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25401 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25401 + 164] = return_data.size
                                            mem[_25401 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25401 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25401 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25401 + ceil32(return_data.size) + 233] = mem[idx + _25401 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25401 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25401 + 196] == bool(mem[_25401 + 196])
                                                if not mem[_25401 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25401 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25401 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25401 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25401 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25401 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _24106 * _24056 / 10^18 / _24106 * _24056 / 10^18 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _25136 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25136] = 26
                                        mem[_25136 + 32] = 'SafeMath: division by zero'
                                        if not _24947:
                                            _25216 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25216 + 68] = mem[idx + _25136 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25216 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25216 + -mem[64] + 100
                                        _25463 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _24106 * _24056 / 10^18 / _24947
                                        _25626 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25626 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25626 + 36 len 28]
                                        mem[64] = _25463 + 164
                                        mem[_25463 + 100] = 32
                                        mem[_25463 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26795 = mem[_25626]
                                        s = 0
                                        while s < _26795:
                                            mem[s + _25463 + 164] = mem[s + _25626 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26795) > _26795:
                                            mem[_25463 + _26795 + 164] = 0
                                        call sub_0658f495[idx].mem[_25463 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25463 + 168 len _26795 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25463 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25463 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25463 + 232] = mem[idx + _25463 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25463 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25463 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25463 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25463 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25463 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25463 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25463 + 164] = return_data.size
                                            mem[_25463 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25463 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25463 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25463 + ceil32(return_data.size) + 233] = mem[idx + _25463 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25463 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25463 + 196] == bool(mem[_25463 + 196])
                                                if not mem[_25463 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25463 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25463 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25463 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25463 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25463 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                    else:
                        _24619 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _24686 = mem[_24619]
                        if mem[_24619] < balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply:
                            if balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply > 0:
                                if _24106 * _24056 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24896 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _24948 = mem[_24896]
                                    if not _24686:
                                        _25089 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25089] = 26
                                        mem[_25089 + 32] = 'SafeMath: division by zero'
                                        if not _24948:
                                            _25182 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25182 + 68] = mem[idx + _25089 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25182 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25182 + -mem[64] + 100
                                        _25403 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _24948
                                        _25533 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25533 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25533 + 36 len 28]
                                        mem[64] = _25403 + 164
                                        mem[_25403 + 100] = 32
                                        mem[_25403 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26597 = mem[_25533]
                                        s = 0
                                        while s < _26597:
                                            mem[s + _25403 + 164] = mem[s + _25533 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26597) > _26597:
                                            mem[_25403 + _26597 + 164] = 0
                                        call sub_0658f495[idx].mem[_25403 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25403 + 168 len _26597 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25403 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25403 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25403 + 232] = mem[idx + _25403 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25403 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25403 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25403 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25403 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25403 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25403 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25403 + 164] = return_data.size
                                            mem[_25403 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25403 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25403 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25403 + ceil32(return_data.size) + 233] = mem[idx + _25403 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25403 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25403 + 196] == bool(mem[_25403 + 196])
                                                if not mem[_25403 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25403 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25403 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25403 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25403 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25403 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * _24686 / _24686 != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _25138 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25138] = 26
                                        mem[_25138 + 32] = 'SafeMath: division by zero'
                                        if not _24948:
                                            _25218 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25218 + 68] = mem[idx + _25138 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25218 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25218 + -mem[64] + 100
                                        _25464 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * _24686 / _24948
                                        _25631 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25631 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25631 + 36 len 28]
                                        mem[64] = _25464 + 164
                                        mem[_25464 + 100] = 32
                                        mem[_25464 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26798 = mem[_25631]
                                        s = 0
                                        while s < _26798:
                                            mem[s + _25464 + 164] = mem[s + _25631 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26798) > _26798:
                                            mem[_25464 + _26798 + 164] = 0
                                        call sub_0658f495[idx].mem[_25464 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25464 + 168 len _26798 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25464 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25464 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25464 + 232] = mem[idx + _25464 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25464 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25464 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25464 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25464 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25464 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25464 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25464 + 164] = return_data.size
                                            mem[_25464 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25464 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25464 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25464 + ceil32(return_data.size) + 233] = mem[idx + _25464 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25464 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25464 + 196] == bool(mem[_25464 + 196])
                                                if not mem[_25464 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25464 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25464 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25464 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25464 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25464 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
                        else:
                            if balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply > 0:
                                if _24106 * _24056 / 10^18 > 0:
                                    require ext_code.size(sub_0658f495[idx])
                                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24924 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _24962 = mem[_24924]
                                    if not balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply:
                                        _25140 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25140] = 26
                                        mem[_25140 + 32] = 'SafeMath: division by zero'
                                        if not _24962:
                                            _25220 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25220 + 68] = mem[idx + _25140 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25220 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25220 + -mem[64] + 100
                                        _25466 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 0 / _24962
                                        _25636 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25636 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25636 + 36 len 28]
                                        mem[64] = _25466 + 164
                                        mem[_25466 + 100] = 32
                                        mem[_25466 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _26804 = mem[_25636]
                                        s = 0
                                        while s < _26804:
                                            mem[s + _25466 + 164] = mem[s + _25636 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_26804) > _26804:
                                            mem[_25466 + _26804 + 164] = 0
                                        call sub_0658f495[idx].mem[_25466 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25466 + 168 len _26804 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25466 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25466 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25466 + 232] = mem[idx + _25466 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25466 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25466 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25466 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25466 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25466 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25466 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25466 + 164] = return_data.size
                                            mem[_25466 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25466 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25466 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25466 + ceil32(return_data.size) + 233] = mem[idx + _25466 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25466 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25466 + 196] == bool(mem[_25466 + 196])
                                                if not mem[_25466 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25466 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25466 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25466 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25466 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25466 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    else:
                                        if 10^18 * balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply / balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _25183 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_25183] = 26
                                        mem[_25183 + 32] = 'SafeMath: division by zero'
                                        if not _24962:
                                            _25259 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _25259 + 68] = mem[idx + _25183 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_25259 + 94] = 0
                                            revert with memory
                                              from mem[64]
                                               len _25259 + -mem[64] + 100
                                        _25536 = mem[64]
                                        mem[mem[64] + 36] = sub_0658f495[idx]
                                        mem[mem[64] + 68] = 10^18 * balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply / _24962
                                        _25766 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_25766 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25766 + 36 len 28]
                                        mem[64] = _25536 + 164
                                        mem[_25536 + 100] = 32
                                        mem[_25536 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx]):
                                            revert with 0, 'Address: call to non-contract'
                                        _27002 = mem[_25766]
                                        s = 0
                                        while s < _27002:
                                            mem[s + _25536 + 164] = mem[s + _25766 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_27002) > _27002:
                                            mem[_25536 + _27002 + 164] = 0
                                        call sub_0658f495[idx].mem[_25536 + 164 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_25536 + 168 len _27002 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_25536 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25536 + 168] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25536 + 232] = mem[idx + _25536 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25536 + 232]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25536 + 168] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25536 + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25536 + ceil32(return_data.size) + 168] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25536 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25536 + (2 * ceil32(return_data.size)) + 164
                                        else:
                                            mem[_25536 + 164] = return_data.size
                                            mem[_25536 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_25536 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_25536 + ceil32(return_data.size) + 169] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _25536 + ceil32(return_data.size) + 233] = mem[idx + _25536 + 132]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_25536 + ceil32(return_data.size) + 233]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_25536 + 196] == bool(mem[_25536 + 196])
                                                if not mem[_25536 + 196]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                            mem[_25536 + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(sub_0658f495[idx])
                                            call sub_0658f495[idx].redeem(address arg1) with:
                                                 gas gas_remaining wei
                                                args this.address
                                            mem[_25536 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_25536 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                            require ext_code.size(wantAddress)
                                            staticcall wantAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[_25536 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _25536 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                    require return_data.size >= 32
            idx = idx + 1
            continue 
        if not balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply:
            _24015 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
            _24032 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_24015 + 100] = 32
            mem[_24015 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _24098 = mem[_24032]
            mem[_24015 + 164 len ceil32(mem[_24032])] = mem[_24032 + 32 len ceil32(mem[_24032])]
            if ceil32(_24098) > _24098:
                mem[_24015 + _24098 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_24015 + 168 len _24098 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_24015 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_24015 + 196] == bool(mem[_24015 + 196])
                    if not mem[_24015 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, balanceOf[address(msg.sender)], 0);
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(s))
        staticcall address(s).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24026 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _24044 = mem[_24026]
        _24055 = mem[64]
        mem[mem[64] + 36] = address(s)
        mem[mem[64] + 68] = _24044
        _24071 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_24055 + 100] = 32
        mem[_24055 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(s)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(s)):
            revert with 0, 'Address: call to non-contract'
        _24133 = mem[_24071]
        mem[_24055 + 164 len ceil32(mem[_24071])] = mem[_24071 + 32 len ceil32(mem[_24071])]
        if ceil32(_24133) > _24133:
            mem[_24055 + _24133 + 164] = 0
        call address(s) with:
             gas gas_remaining wei
            args mem[_24055 + 168 len _24133 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_24055 + 168] = this.address
            require ext_code.size(address(s))
            call address(s).redeem(address arg1) with:
                 gas gas_remaining wei
                args this.address
            mem[_24055 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_24055 + ceil32(return_data.size) + 200] = msg.sender
            mem[_24055 + ceil32(return_data.size) + 232] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
            mem[_24055 + ceil32(return_data.size) + 164] = 68
            mem[_24055 + ceil32(return_data.size) + 196 len 4] = unknown_0xa9059cbb(?????)
            mem[_24055 + ceil32(return_data.size) + 264] = 32
            mem[_24055 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[_24055 + ceil32(return_data.size) + 328 len 96] = 0, msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, 0
            mem[_24055 + ceil32(return_data.size) + 396] = 0
            call wantAddress with:
               funct Mask(32, 224, 0, msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_24055 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_24055 + ceil32(return_data.size) + 360] == bool(mem[_24055 + ceil32(return_data.size) + 360])
                    if not mem[_24055 + ceil32(return_data.size) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, balanceOf[address(msg.sender)], 0);
        mem[_24055 + 164] = return_data.size
        mem[_24055 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_24055 + 196] == bool(mem[_24055 + 196])
            if not mem[_24055 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_24055 + ceil32(return_data.size) + 169] = this.address
        require ext_code.size(address(s))
        call address(s).redeem(address arg1) with:
             gas gas_remaining wei
            args this.address
        mem[_24055 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = msg.sender
        mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
        mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
        mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, 0
        mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, balanceOf[address(msg.sender)], 0);
        mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
        mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_24055 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_24055 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_24055 + (4 * ceil32(return_data.size)) + 366] = 32
            mem[_24055 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
            revert with memory
              from _24055 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            mem[_24055 + (4 * ceil32(return_data.size)) + 330] = msg.sender
            mem[_24055 + (4 * ceil32(return_data.size)) + 362] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
            mem[_24055 + (4 * ceil32(return_data.size)) + 394] = balanceOf[address(msg.sender)]
            mem[_24055 + (4 * ceil32(return_data.size)) + 426] = 0
            emit Withdrawal(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                            mem[_24055 + (4 * ceil32(return_data.size)) + 330 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
        require return_data.size >= 32
        require mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
        if mem[_24055 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
            mem[_24055 + (4 * ceil32(return_data.size)) + 330] = msg.sender
            mem[_24055 + (4 * ceil32(return_data.size)) + 362] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
            mem[_24055 + (4 * ceil32(return_data.size)) + 394] = balanceOf[address(msg.sender)]
            mem[_24055 + (4 * ceil32(return_data.size)) + 426] = 0
            emit Withdrawal(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                            mem[_24055 + (4 * ceil32(return_data.size)) + 330 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
        mem[_24055 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_24055 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_24055 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_24055 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_24055 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
        revert with memory
          from _24055 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (mem[_8096] * withdrawalFee) / (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - mem[_8096] != withdrawalFee:
        revert with 0, 'SafeMath: multiplication overflow'
    _8113 = mem[64]
    mem[64] = mem[64] + 64
    mem[_8113] = 26
    mem[_8113 + 32] = 'SafeMath: division by zero'
    _8130 = mem[64]
    mem[64] = mem[64] + 64
    mem[_8130] = 30
    mem[_8130 + 32] = 'SafeMath: subtraction overflow'
    if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000 > balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    idx = 0
    s = 0
    t = 0
    t = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].borrowRate() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16095 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16119 = mem[_16095]
        if mem[_16095] <= t:
            idx = idx + 1
            s = s
            t = mem[_16095]
            t = t
            continue 
        require idx < sub_0658f495.length
        mem[0] = 24
        idx = idx + 1
        s = sub_0658f495[idx]
        t = _16119
        t = _16119
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _16112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _16131 = mem[_16112]
    if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000) + mem[_16112] < mem[_16112]:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        if sub_0658f495[idx] != address(s):
            require idx < sub_0658f495.length
            mem[0] = 24
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24049 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _24054 = mem[_24049]
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24081 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _24103 = mem[_24081]
            if not _24054:
                _24145 = mem[64]
                mem[64] = mem[64] + 64
                mem[_24145] = 26
                mem[_24145 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].totalBalance() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 < (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000):
                    _24523 = mem[64]
                else:
                    _24568 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
            else:
                if mem[_24081] * _24054 / _24054 != mem[_24081]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _24162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_24162] = 26
                mem[_24162 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].totalBalance() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if _24103 * _24054 / 10^18 < (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000):
                    _24567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _24643 = mem[_24567]
                    if mem[_24567] < _24103 * _24054 / 10^18:
                        if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000) > 0:
                            if _24103 * _24054 / 10^18 > 0:
                                require ext_code.size(sub_0658f495[idx])
                                staticcall sub_0658f495[idx].exchangeRateLast() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24861 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _24915 = mem[_24861]
                                if not _24643:
                                    _25029 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_25029] = 26
                                    mem[_25029 + 32] = 'SafeMath: division by zero'
                                    if not _24915:
                                        _25123 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _25123 + 68] = mem[idx + _25029 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_25123 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _25123 + -mem[64] + 100
                                    _25334 = mem[64]
                                    mem[mem[64] + 36] = sub_0658f495[idx]
                                    mem[mem[64] + 68] = 0 / _24915
                                    _25445 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_25445 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25445 + 36 len 28]
                                    mem[64] = _25334 + 164
                                    mem[_25334 + 100] = 32
                                    mem[_25334 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    _26332 = mem[_25445]
                                    s = 0
                                    while s < _26332:
                                        mem[s + _25334 + 164] = mem[s + _25445 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_26332) > _26332:
                                        mem[_25334 + _26332 + 164] = 0
                                    call sub_0658f495[idx].mem[_25334 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_25334 + 168 len _26332 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_25334 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25334 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25334 + 232] = mem[idx + _25334 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25334 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25334 + 168] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25334 + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25334 + ceil32(return_data.size) + 168] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25334 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25334 + (2 * ceil32(return_data.size)) + 164
                                    else:
                                        mem[_25334 + 164] = return_data.size
                                        mem[_25334 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_25334 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25334 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25334 + ceil32(return_data.size) + 233] = mem[idx + _25334 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25334 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_25334 + 196] == bool(mem[_25334 + 196])
                                            if not mem[_25334 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25334 + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25334 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25334 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25334 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25334 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                else:
                                    if 10^18 * _24643 / _24643 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _25073 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_25073] = 26
                                    mem[_25073 + 32] = 'SafeMath: division by zero'
                                    if not _24915:
                                        _25169 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _25169 + 68] = mem[idx + _25073 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_25169 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _25169 + -mem[64] + 100
                                    _25383 = mem[64]
                                    mem[mem[64] + 36] = sub_0658f495[idx]
                                    mem[mem[64] + 68] = 10^18 * _24643 / _24915
                                    _25505 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_25505 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25505 + 36 len 28]
                                    mem[64] = _25383 + 164
                                    mem[_25383 + 100] = 32
                                    mem[_25383 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    _26537 = mem[_25505]
                                    s = 0
                                    while s < _26537:
                                        mem[s + _25383 + 164] = mem[s + _25505 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_26537) > _26537:
                                        mem[_25383 + _26537 + 164] = 0
                                    call sub_0658f495[idx].mem[_25383 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_25383 + 168 len _26537 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_25383 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25383 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25383 + 232] = mem[idx + _25383 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25383 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25383 + 168] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25383 + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25383 + ceil32(return_data.size) + 168] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25383 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25383 + (2 * ceil32(return_data.size)) + 164
                                    else:
                                        mem[_25383 + 164] = return_data.size
                                        mem[_25383 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_25383 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25383 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25383 + ceil32(return_data.size) + 233] = mem[idx + _25383 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25383 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_25383 + 196] == bool(mem[_25383 + 196])
                                            if not mem[_25383 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25383 + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25383 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25383 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25383 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25383 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                require return_data.size >= 32
                    else:
                        if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000) > 0:
                            if _24103 * _24054 / 10^18 > 0:
                                require ext_code.size(sub_0658f495[idx])
                                staticcall sub_0658f495[idx].exchangeRateLast() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24889 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _24943 = mem[_24889]
                                if not _24103 * _24054 / 10^18:
                                    _25075 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_25075] = 26
                                    mem[_25075 + 32] = 'SafeMath: division by zero'
                                    if not _24943:
                                        _25171 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _25171 + 68] = mem[idx + _25075 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_25171 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _25171 + -mem[64] + 100
                                    _25385 = mem[64]
                                    mem[mem[64] + 36] = sub_0658f495[idx]
                                    mem[mem[64] + 68] = 0 / _24943
                                    _25510 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_25510 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25510 + 36 len 28]
                                    mem[64] = _25385 + 164
                                    mem[_25385 + 100] = 32
                                    mem[_25385 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    _26543 = mem[_25510]
                                    s = 0
                                    while s < _26543:
                                        mem[s + _25385 + 164] = mem[s + _25510 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_26543) > _26543:
                                        mem[_25385 + _26543 + 164] = 0
                                    call sub_0658f495[idx].mem[_25385 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_25385 + 168 len _26543 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_25385 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25385 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25385 + 232] = mem[idx + _25385 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25385 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25385 + 168] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25385 + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25385 + ceil32(return_data.size) + 168] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25385 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25385 + (2 * ceil32(return_data.size)) + 164
                                    else:
                                        mem[_25385 + 164] = return_data.size
                                        mem[_25385 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_25385 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25385 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25385 + ceil32(return_data.size) + 233] = mem[idx + _25385 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25385 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_25385 + 196] == bool(mem[_25385 + 196])
                                            if not mem[_25385 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25385 + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25385 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25385 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25385 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25385 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                else:
                                    if 10^18 * _24103 * _24054 / 10^18 / _24103 * _24054 / 10^18 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _25124 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_25124] = 26
                                    mem[_25124 + 32] = 'SafeMath: division by zero'
                                    if not _24943:
                                        _25208 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _25208 + 68] = mem[idx + _25124 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_25208 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _25208 + -mem[64] + 100
                                    _25448 = mem[64]
                                    mem[mem[64] + 36] = sub_0658f495[idx]
                                    mem[mem[64] + 68] = 10^18 * _24103 * _24054 / 10^18 / _24943
                                    _25595 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_25595 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25595 + 36 len 28]
                                    mem[64] = _25448 + 164
                                    mem[_25448 + 100] = 32
                                    mem[_25448 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    _26743 = mem[_25595]
                                    s = 0
                                    while s < _26743:
                                        mem[s + _25448 + 164] = mem[s + _25595 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_26743) > _26743:
                                        mem[_25448 + _26743 + 164] = 0
                                    call sub_0658f495[idx].mem[_25448 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_25448 + 168 len _26743 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_25448 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25448 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25448 + 232] = mem[idx + _25448 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25448 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25448 + 168] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25448 + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25448 + ceil32(return_data.size) + 168] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25448 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25448 + (2 * ceil32(return_data.size)) + 164
                                    else:
                                        mem[_25448 + 164] = return_data.size
                                        mem[_25448 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_25448 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25448 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25448 + ceil32(return_data.size) + 233] = mem[idx + _25448 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25448 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_25448 + 196] == bool(mem[_25448 + 196])
                                            if not mem[_25448 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25448 + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25448 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25448 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25448 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25448 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                require return_data.size >= 32
                else:
                    _24611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _24677 = mem[_24611]
                    if mem[_24611] < (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000):
                        if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000) > 0:
                            if _24103 * _24054 / 10^18 > 0:
                                require ext_code.size(sub_0658f495[idx])
                                staticcall sub_0658f495[idx].exchangeRateLast() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24890 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _24944 = mem[_24890]
                                if not _24677:
                                    _25076 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_25076] = 26
                                    mem[_25076 + 32] = 'SafeMath: division by zero'
                                    if not _24944:
                                        _25172 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _25172 + 68] = mem[idx + _25076 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_25172 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _25172 + -mem[64] + 100
                                    _25387 = mem[64]
                                    mem[mem[64] + 36] = sub_0658f495[idx]
                                    mem[mem[64] + 68] = 0 / _24944
                                    _25513 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_25513 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25513 + 36 len 28]
                                    mem[64] = _25387 + 164
                                    mem[_25387 + 100] = 32
                                    mem[_25387 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    _26547 = mem[_25513]
                                    s = 0
                                    while s < _26547:
                                        mem[s + _25387 + 164] = mem[s + _25513 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_26547) > _26547:
                                        mem[_25387 + _26547 + 164] = 0
                                    call sub_0658f495[idx].mem[_25387 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_25387 + 168 len _26547 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_25387 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25387 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25387 + 232] = mem[idx + _25387 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25387 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25387 + 168] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25387 + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25387 + ceil32(return_data.size) + 168] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25387 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25387 + (2 * ceil32(return_data.size)) + 164
                                    else:
                                        mem[_25387 + 164] = return_data.size
                                        mem[_25387 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_25387 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25387 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25387 + ceil32(return_data.size) + 233] = mem[idx + _25387 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25387 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_25387 + 196] == bool(mem[_25387 + 196])
                                            if not mem[_25387 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25387 + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25387 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25387 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25387 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25387 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                else:
                                    if 10^18 * _24677 / _24677 != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _25126 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_25126] = 26
                                    mem[_25126 + 32] = 'SafeMath: division by zero'
                                    if not _24944:
                                        _25210 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _25210 + 68] = mem[idx + _25126 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_25210 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _25210 + -mem[64] + 100
                                    _25449 = mem[64]
                                    mem[mem[64] + 36] = sub_0658f495[idx]
                                    mem[mem[64] + 68] = 10^18 * _24677 / _24944
                                    _25600 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_25600 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25600 + 36 len 28]
                                    mem[64] = _25449 + 164
                                    mem[_25449 + 100] = 32
                                    mem[_25449 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    _26746 = mem[_25600]
                                    s = 0
                                    while s < _26746:
                                        mem[s + _25449 + 164] = mem[s + _25600 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_26746) > _26746:
                                        mem[_25449 + _26746 + 164] = 0
                                    call sub_0658f495[idx].mem[_25449 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_25449 + 168 len _26746 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_25449 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25449 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25449 + 232] = mem[idx + _25449 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25449 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25449 + 168] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25449 + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25449 + ceil32(return_data.size) + 168] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25449 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25449 + (2 * ceil32(return_data.size)) + 164
                                    else:
                                        mem[_25449 + 164] = return_data.size
                                        mem[_25449 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_25449 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25449 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25449 + ceil32(return_data.size) + 233] = mem[idx + _25449 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25449 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_25449 + 196] == bool(mem[_25449 + 196])
                                            if not mem[_25449 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25449 + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25449 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25449 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25449 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25449 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                require return_data.size >= 32
                    else:
                        if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000) > 0:
                            if _24103 * _24054 / 10^18 > 0:
                                require ext_code.size(sub_0658f495[idx])
                                staticcall sub_0658f495[idx].exchangeRateLast() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _24916 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _24959 = mem[_24916]
                                if not (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000):
                                    _25128 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_25128] = 26
                                    mem[_25128 + 32] = 'SafeMath: division by zero'
                                    if not _24959:
                                        _25212 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _25212 + 68] = mem[idx + _25128 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_25212 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _25212 + -mem[64] + 100
                                    _25451 = mem[64]
                                    mem[mem[64] + 36] = sub_0658f495[idx]
                                    mem[mem[64] + 68] = 0 / _24959
                                    _25605 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_25605 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25605 + 36 len 28]
                                    mem[64] = _25451 + 164
                                    mem[_25451 + 100] = 32
                                    mem[_25451 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    _26752 = mem[_25605]
                                    s = 0
                                    while s < _26752:
                                        mem[s + _25451 + 164] = mem[s + _25605 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_26752) > _26752:
                                        mem[_25451 + _26752 + 164] = 0
                                    call sub_0658f495[idx].mem[_25451 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_25451 + 168 len _26752 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_25451 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25451 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25451 + 232] = mem[idx + _25451 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25451 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25451 + 168] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25451 + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25451 + ceil32(return_data.size) + 168] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25451 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25451 + (2 * ceil32(return_data.size)) + 164
                                    else:
                                        mem[_25451 + 164] = return_data.size
                                        mem[_25451 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_25451 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25451 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25451 + ceil32(return_data.size) + 233] = mem[idx + _25451 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25451 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_25451 + 196] == bool(mem[_25451 + 196])
                                            if not mem[_25451 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25451 + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25451 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25451 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25451 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25451 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                else:
                                    if (10^18 * balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - (10^18 * (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000) / (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000) != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _25173 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_25173] = 26
                                    mem[_25173 + 32] = 'SafeMath: division by zero'
                                    if not _24959:
                                        _25247 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _25247 + 68] = mem[idx + _25173 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_25247 + 94] = 0
                                        revert with memory
                                          from mem[64]
                                           len _25247 + -mem[64] + 100
                                    _25516 = mem[64]
                                    mem[mem[64] + 36] = sub_0658f495[idx]
                                    mem[mem[64] + 68] = (10^18 * balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - (10^18 * (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000) / _24959
                                    _25731 = mem[64]
                                    mem[mem[64]] = 68
                                    mem[64] = mem[64] + 100
                                    mem[_25731 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_25731 + 36 len 28]
                                    mem[64] = _25516 + 164
                                    mem[_25516 + 100] = 32
                                    mem[_25516 + 132] = 'SafeERC20: low-level call failed'
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(sub_0658f495[idx]):
                                        revert with 0, 'Address: call to non-contract'
                                    _26954 = mem[_25731]
                                    s = 0
                                    while s < _26954:
                                        mem[s + _25516 + 164] = mem[s + _25731 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_26954) > _26954:
                                        mem[_25516 + _26954 + 164] = 0
                                    call sub_0658f495[idx].mem[_25516 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_25516 + 168 len _26954 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_25516 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25516 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25516 + 232] = mem[idx + _25516 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25516 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25516 + 168] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25516 + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25516 + ceil32(return_data.size) + 168] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25516 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25516 + (2 * ceil32(return_data.size)) + 164
                                    else:
                                        mem[_25516 + 164] = return_data.size
                                        mem[_25516 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_25516 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_25516 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _25516 + ceil32(return_data.size) + 233] = mem[idx + _25516 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_25516 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_25516 + 196] == bool(mem[_25516 + 196])
                                            if not mem[_25516 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        mem[_25516 + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(sub_0658f495[idx])
                                        call sub_0658f495[idx].redeem(address arg1) with:
                                             gas gas_remaining wei
                                            args this.address
                                        mem[_25516 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_25516 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                                        require ext_code.size(wantAddress)
                                        staticcall wantAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_25516 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _25516 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165
                                require return_data.size >= 32
        idx = idx + 1
        continue 
    if not (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000):
        _24013 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000)
        _24029 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_24013 + 100] = 32
        mem[_24013 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        _24097 = mem[_24029]
        mem[_24013 + 164 len ceil32(mem[_24029])] = mem[_24029 + 32 len ceil32(mem[_24029])]
        if ceil32(_24097) > _24097:
            mem[_24013 + _24097 + 164] = 0
        call wantAddress with:
             gas gas_remaining wei
            args mem[_24013 + 168 len _24097 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_24013 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_24013 + 196] == bool(mem[_24013 + 196])
                if not mem[_24013 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawal(msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000), balanceOf[address(msg.sender)], (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000);
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(s))
    staticcall address(s).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _24025 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _24042 = mem[_24025]
    _24053 = mem[64]
    mem[mem[64] + 36] = address(s)
    mem[mem[64] + 68] = _24042
    _24069 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_24053 + 100] = 32
    mem[_24053 + 132] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(s)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(s)):
        revert with 0, 'Address: call to non-contract'
    _24130 = mem[_24069]
    mem[_24053 + 164 len ceil32(mem[_24069])] = mem[_24069 + 32 len ceil32(mem[_24069])]
    if ceil32(_24130) > _24130:
        mem[_24053 + _24130 + 164] = 0
    call address(s) with:
         gas gas_remaining wei
        args mem[_24053 + 168 len _24130 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_24053 + 168] = this.address
        require ext_code.size(address(s))
        call address(s).redeem(address arg1) with:
             gas gas_remaining wei
            args this.address
        mem[_24053 + 164] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_24053 + ceil32(return_data.size) + 200] = msg.sender
        mem[_24053 + ceil32(return_data.size) + 232] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000)
        mem[_24053 + ceil32(return_data.size) + 164] = 68
        mem[_24053 + ceil32(return_data.size) + 196 len 4] = unknown_0xa9059cbb(?????)
        mem[_24053 + ceil32(return_data.size) + 264] = 32
        mem[_24053 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[_24053 + ceil32(return_data.size) + 328 len 96] = 0, msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000), 0
        mem[_24053 + ceil32(return_data.size) + 396] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_24053 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_24053 + ceil32(return_data.size) + 360] == bool(mem[_24053 + ceil32(return_data.size) + 360])
                if not mem[_24053 + ceil32(return_data.size) + 360]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawal(msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000), balanceOf[address(msg.sender)], (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000);
    mem[_24053 + 164] = return_data.size
    mem[_24053 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[_24053 + 196] == bool(mem[_24053 + 196])
        if not mem[_24053 + 196]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[_24053 + ceil32(return_data.size) + 169] = this.address
    require ext_code.size(address(s))
    call address(s).redeem(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[_24053 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = msg.sender
    mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000)
    mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
    mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
    mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
    mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000), 0
    mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
    call wantAddress with:
       funct Mask(32, 224, 0, msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000), 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawal(msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000), balanceOf[address(msg.sender)], (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000);
    mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
    mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_24053 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_24053 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_24053 + (4 * ceil32(return_data.size)) + 366] = 32
        mem[_24053 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: low-level call failed'
        revert with memory
          from _24053 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        mem[_24053 + (4 * ceil32(return_data.size)) + 330] = msg.sender
        mem[_24053 + (4 * ceil32(return_data.size)) + 362] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000)
        mem[_24053 + (4 * ceil32(return_data.size)) + 394] = balanceOf[address(msg.sender)]
        mem[_24053 + (4 * ceil32(return_data.size)) + 426] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000
        emit Withdrawal(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                        mem[_24053 + (4 * ceil32(return_data.size)) + 330 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
    require return_data.size >= 32
    require mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
    if mem[_24053 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
        mem[_24053 + (4 * ceil32(return_data.size)) + 330] = msg.sender
        mem[_24053 + (4 * ceil32(return_data.size)) + 362] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000)
        mem[_24053 + (4 * ceil32(return_data.size)) + 394] = balanceOf[address(msg.sender)]
        mem[_24053 + (4 * ceil32(return_data.size)) + 426] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_8098 * withdrawalFee) / 10000
        emit Withdrawal(address arg1, uint256 arg2, uint256 arg3, uint256 arg4):
                        mem[_24053 + (4 * ceil32(return_data.size)) + 330 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128],
    mem[_24053 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_24053 + (4 * ceil32(return_data.size)) + 334] = 32
    mem[_24053 + (4 * ceil32(return_data.size)) + 366] = 42
    mem[_24053 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
    mem[_24053 + (4 * ceil32(return_data.size)) + 430] = 'ot succeed'
    revert with memory
      from _24053 + (4 * ceil32(return_data.size)) + 330
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
