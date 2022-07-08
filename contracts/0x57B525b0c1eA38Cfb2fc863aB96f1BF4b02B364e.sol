contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1)
#  - withdraw(uint256 arg1)
#  - sub_39e3ad19(?)
#  - sub_3d208077(?)
#  - rebalanceCollateral()
#  - withdrawAll()
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
array of struct sub_0658f495;
uint8 paused; offset 160
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
    return sub_0658f495[arg1].field_0
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

function paused() payable {
    return bool(paused)
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
    return routerAddress
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
    if paused:
        revert with 0, 'PAUSED'
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

function sub_c0f0a9b6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        if sub_0658f495[idx].field_0 != address(arg1):
            idx = idx + 1
            continue 
        return idx
    return -1
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

function sub_c3b49f3d(?) payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    require ext_code.size(routerAddress)
    call routerAddress.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
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
        require ext_code.size(sub_0658f495[idx].field_0)
        staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
        s = sub_0658f495[idx].field_0
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

function sub_9840768f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalBalance() with:
            gas gas_remaining wei
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
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
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
        require ext_code.size(sub_0658f495[idx].field_0)
        staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _26 = mem[_25]
        require ext_code.size(sub_0658f495[idx].field_0)
        staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
        require ext_code.size(sub_0658f495[idx].field_0)
        staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _42 = mem[_39]
        require ext_code.size(sub_0658f495[idx].field_0)
        staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
            require ext_code.size(sub_0658f495[idx].field_0)
            staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
            s = sub_0658f495[idx].field_0
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
            require ext_code.size(sub_0658f495[idx].field_0)
            staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
            s = sub_0658f495[idx].field_0
            t = _30
            t = _30
            continue 
    require ext_code.size(routerAddress)
    call routerAddress.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args address(s), arg1, address(this.address), block.timestamp + 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function addLendingPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    if paused:
        revert with 0, 'PAUSED'
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        if sub_0658f495[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx == -1
        require ext_code.size(arg1)
        staticcall arg1.underlying() with:
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
            args routerAddress, -1
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
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
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
        args routerAddress, -1
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

function sub_3876e5a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    if paused:
        revert with 0, 'PAUSED'
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        if sub_0658f495[idx].field_0 != address(arg1):
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'NO SUCH POOL'
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(arg1) << 64
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        s = 0
        while s < 68:
            mem[s + ceil32(return_data.size) + 260] = mem[s + ceil32(return_data.size) + 128]
            s = s + 32
            continue 
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg1).mem[ceil32(return_data.size) + 260 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 264 len 64]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                mem[ceil32(return_data.size) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 264] = 32
                idx = 0
                while idx < 32:
                    mem[idx + ceil32(return_data.size) + 328] = mem[idx + ceil32(return_data.size) + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[ceil32(return_data.size) + 328]
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 260] = return_data.size
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                idx = 0
                while idx < 32:
                    mem[idx + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[idx + ceil32(return_data.size) + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[ceil32(return_data.size) + ceil32(return_data.size) + 329]
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        s = idx
        while s < sub_0658f495.length - 1:
            require s + 1 < sub_0658f495.length
            require s < sub_0658f495.length
            mem[0] = 24
            sub_0658f495[s].field_0 = sub_0658f495[s].field_256
            s = s + 1
            continue 
        require sub_0658f495.length - 1 < sub_0658f495.length
        sub_0658f495[sub_0658f495.length].field_0 = 0
        require sub_0658f495.length
        sub_0658f495[sub_0658f495.length].field_0 = 0
        sub_0658f495.length--
    revert with 0, 'NO SUCH POOL'
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require arg1
    require arg1 <= sub_f7c18daa
    if paused:
        revert with 0, 'PAUSED'
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
        require ext_code.size(sub_0658f495[idx].field_0)
        staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _143 = mem[_141]
        require ext_code.size(sub_0658f495[idx].field_0)
        staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _148 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _143:
            _153 = mem[64]
            mem[64] = mem[64] + 64
            mem[_153] = 26
            mem[_153 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_148] * _143 / _143 != mem[_148]:
                revert with 0, 'SafeMath: multiplication overflow'
            _154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_154] = 26
            mem[_154 + 32] = 'SafeMath: division by zero'
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
    _144 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_144] == bool(mem[_144])
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
    if paused:
        revert with 0, 'PAUSED'
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
        require ext_code.size(sub_0658f495[idx].field_0)
        staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _147 = mem[_145]
        require ext_code.size(sub_0658f495[idx].field_0)
        staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _147:
            _157 = mem[64]
            mem[64] = mem[64] + 64
            mem[_157] = 26
            mem[_157 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_152] * _147 / _147 != mem[_152]:
                revert with 0, 'SafeMath: multiplication overflow'
            _158 = mem[64]
            mem[64] = mem[64] + 64
            mem[_158] = 26
            mem[_158 + 32] = 'SafeMath: division by zero'
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
    _148 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_148] == bool(mem[_148])
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
    require ext_code.size(routerAddress)
    call routerAddress.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
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
            require ext_code.size(sub_0658f495[idx].field_0)
            staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _184 = mem[_173]
            require ext_code.size(sub_0658f495[idx].field_0)
            staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                    require ext_code.size(sub_0658f495[idx].field_0)
                    staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
                    s = sub_0658f495[idx].field_0
                    t = _350
                    t = _350
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
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
                    require ext_code.size(sub_0658f495[idx].field_0)
                    staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
                    s = sub_0658f495[idx].field_0
                    t = _349
                    t = _349
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
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
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _185 = mem[_175]
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
                        s = sub_0658f495[idx].field_0
                        t = _352
                        t = _352
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
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
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
                        s = sub_0658f495[idx].field_0
                        t = _351
                        t = _351
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
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
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _186 = mem[_177]
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
                        s = sub_0658f495[idx].field_0
                        t = _354
                        t = _354
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
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
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
                        s = sub_0658f495[idx].field_0
                        t = _353
                        t = _353
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args address(s), ext_call.return_data[0] - (reserveAllocation * ext_call.return_data[0] / 10000), address(this.address), block.timestamp + 5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
        require ext_code.size(sub_0658f495[idx].field_0)
        staticcall sub_0658f495[idx].field_0.totalBalance() with:
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
            require ext_code.size(sub_0658f495[idx].field_0)
            staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4459 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4466 = mem[_4459]
            require ext_code.size(sub_0658f495[idx].field_0)
            staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4460 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4468 = mem[_4460]
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4461 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4470 = mem[_4461]
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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

function unpause() payable {
    if msg.sender == strategistAddress:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
        if msg.sender == strategistAddress:
            mem[100] = this.address
            mem[132] = routerAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), routerAddress
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[ceil32(return_data.size) + 132] = routerAddress
            mem[ceil32(return_data.size) + 164] = -1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor25.field_0)
            mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = ceil32(return_data.size) + 260
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5125 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5125]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5193 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5261 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5261 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5261 + 36 len 28]
                        mem[64] = _5193 + 164
                        mem[_5193 + 100] = 32
                        mem[_5193 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5477 = mem[_5261]
                        s = 0
                        while s < _5477:
                            mem[s + _5193 + 164] = mem[s + _5261 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5477) > _5477:
                            mem[_5193 + _5477 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5193 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5193 + 168 len _5477 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5193 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5193 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5193 + 232] = mem[idx + _5193 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5193 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5193 + ceil32(return_data.size) + 165
                            mem[_5193 + 164] = return_data.size
                            mem[_5193 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5193 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5193 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5193 + ceil32(return_data.size) + 233] = mem[idx + _5193 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5193 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5193 + 196] == bool(mem[_5193 + 196])
                                if not mem[_5193 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor25.field_0) == bool(0, Mask(224, 0, stor25.field_0))
                    if not 0, Mask(224, 0, stor25.field_0):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5126 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5126]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5195 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5264 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5264 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5264 + 36 len 28]
                        mem[64] = _5195 + 164
                        mem[_5195 + 100] = 32
                        mem[_5195 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5478 = mem[_5264]
                        s = 0
                        while s < _5478:
                            mem[s + _5195 + 164] = mem[s + _5264 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5478) > _5478:
                            mem[_5195 + _5478 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5195 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5195 + 168 len _5478 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5195 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5195 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5195 + 232] = mem[idx + _5195 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5195 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5195 + ceil32(return_data.size) + 165
                            mem[_5195 + 164] = return_data.size
                            mem[_5195 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5195 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5195 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5195 + ceil32(return_data.size) + 233] = mem[idx + _5195 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5195 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5195 + 196] == bool(mem[_5195 + 196])
                                if not mem[_5195 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
            else:
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                mem[ceil32(return_data.size) + 260] = return_data.size
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5127 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5127]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5197 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5267 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5267 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5267 + 36 len 28]
                        mem[64] = _5197 + 164
                        mem[_5197 + 100] = 32
                        mem[_5197 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5479 = mem[_5267]
                        s = 0
                        while s < _5479:
                            mem[s + _5197 + 164] = mem[s + _5267 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5479) > _5479:
                            mem[_5197 + _5479 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5197 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5197 + 168 len _5479 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5197 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5197 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5197 + 232] = mem[idx + _5197 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5197 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5197 + ceil32(return_data.size) + 165
                            mem[_5197 + 164] = return_data.size
                            mem[_5197 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5197 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5197 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5197 + ceil32(return_data.size) + 233] = mem[idx + _5197 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5197 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5197 + 196] == bool(mem[_5197 + 196])
                                if not mem[_5197 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5128 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5128]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5199 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5270 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5270 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5270 + 36 len 28]
                        mem[64] = _5199 + 164
                        mem[_5199 + 100] = 32
                        mem[_5199 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5480 = mem[_5270]
                        s = 0
                        while s < _5480:
                            mem[s + _5199 + 164] = mem[s + _5270 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5480) > _5480:
                            mem[_5199 + _5480 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5199 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5199 + 168 len _5480 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5199 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5199 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5199 + 232] = mem[idx + _5199 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5199 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5199 + ceil32(return_data.size) + 165
                            mem[_5199 + 164] = return_data.size
                            mem[_5199 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5199 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5199 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5199 + ceil32(return_data.size) + 233] = mem[idx + _5199 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5199 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5199 + 196] == bool(mem[_5199 + 196])
                                if not mem[_5199 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
        else:
            require msg.sender == governanceAddress
            mem[100] = this.address
            mem[132] = routerAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), routerAddress
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[ceil32(return_data.size) + 132] = routerAddress
            mem[ceil32(return_data.size) + 164] = -1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor25.field_0)
            mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = ceil32(return_data.size) + 260
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5133 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5133]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5209 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5285 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5285 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5285 + 36 len 28]
                        mem[64] = _5209 + 164
                        mem[_5209 + 100] = 32
                        mem[_5209 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5485 = mem[_5285]
                        s = 0
                        while s < _5485:
                            mem[s + _5209 + 164] = mem[s + _5285 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5485) > _5485:
                            mem[_5209 + _5485 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5209 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5209 + 168 len _5485 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5209 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5209 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5209 + 232] = mem[idx + _5209 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5209 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5209 + ceil32(return_data.size) + 165
                            mem[_5209 + 164] = return_data.size
                            mem[_5209 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5209 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5209 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5209 + ceil32(return_data.size) + 233] = mem[idx + _5209 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5209 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5209 + 196] == bool(mem[_5209 + 196])
                                if not mem[_5209 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor25.field_0) == bool(0, Mask(224, 0, stor25.field_0))
                    if not 0, Mask(224, 0, stor25.field_0):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5134 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5134]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5211 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5288 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5288 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5288 + 36 len 28]
                        mem[64] = _5211 + 164
                        mem[_5211 + 100] = 32
                        mem[_5211 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5486 = mem[_5288]
                        s = 0
                        while s < _5486:
                            mem[s + _5211 + 164] = mem[s + _5288 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5486) > _5486:
                            mem[_5211 + _5486 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5211 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5211 + 168 len _5486 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5211 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5211 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5211 + 232] = mem[idx + _5211 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5211 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5211 + ceil32(return_data.size) + 165
                            mem[_5211 + 164] = return_data.size
                            mem[_5211 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5211 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5211 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5211 + ceil32(return_data.size) + 233] = mem[idx + _5211 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5211 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5211 + 196] == bool(mem[_5211 + 196])
                                if not mem[_5211 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
            else:
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                mem[ceil32(return_data.size) + 260] = return_data.size
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5135 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5135]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5213 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5291 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5291 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5291 + 36 len 28]
                        mem[64] = _5213 + 164
                        mem[_5213 + 100] = 32
                        mem[_5213 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5487 = mem[_5291]
                        s = 0
                        while s < _5487:
                            mem[s + _5213 + 164] = mem[s + _5291 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5487) > _5487:
                            mem[_5213 + _5487 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5213 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5213 + 168 len _5487 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5213 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5213 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5213 + 232] = mem[idx + _5213 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5213 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5213 + ceil32(return_data.size) + 165
                            mem[_5213 + 164] = return_data.size
                            mem[_5213 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5213 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5213 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5213 + ceil32(return_data.size) + 233] = mem[idx + _5213 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5213 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5213 + 196] == bool(mem[_5213 + 196])
                                if not mem[_5213 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5136 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5136]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5215 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5294 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5294 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5294 + 36 len 28]
                        mem[64] = _5215 + 164
                        mem[_5215 + 100] = 32
                        mem[_5215 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5488 = mem[_5294]
                        s = 0
                        while s < _5488:
                            mem[s + _5215 + 164] = mem[s + _5294 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5488) > _5488:
                            mem[_5215 + _5488 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5215 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5215 + 168 len _5488 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5215 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5215 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5215 + 232] = mem[idx + _5215 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5215 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5215 + ceil32(return_data.size) + 165
                            mem[_5215 + 164] = return_data.size
                            mem[_5215 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5215 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5215 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5215 + ceil32(return_data.size) + 233] = mem[idx + _5215 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5215 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5215 + 196] == bool(mem[_5215 + 196])
                                if not mem[_5215 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
    else:
        require msg.sender == governanceAddress
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
        if msg.sender == strategistAddress:
            mem[100] = this.address
            mem[132] = routerAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), routerAddress
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[ceil32(return_data.size) + 132] = routerAddress
            mem[ceil32(return_data.size) + 164] = -1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor25.field_0)
            mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = ceil32(return_data.size) + 260
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5141 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5141]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5225 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5309 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5309 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5309 + 36 len 28]
                        mem[64] = _5225 + 164
                        mem[_5225 + 100] = 32
                        mem[_5225 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5493 = mem[_5309]
                        s = 0
                        while s < _5493:
                            mem[s + _5225 + 164] = mem[s + _5309 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5493) > _5493:
                            mem[_5225 + _5493 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5225 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5225 + 168 len _5493 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5225 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5225 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5225 + 232] = mem[idx + _5225 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5225 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5225 + ceil32(return_data.size) + 165
                            mem[_5225 + 164] = return_data.size
                            mem[_5225 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5225 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5225 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5225 + ceil32(return_data.size) + 233] = mem[idx + _5225 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5225 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5225 + 196] == bool(mem[_5225 + 196])
                                if not mem[_5225 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor25.field_0) == bool(0, Mask(224, 0, stor25.field_0))
                    if not 0, Mask(224, 0, stor25.field_0):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5142 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5142]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5227 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5312 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5312 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5312 + 36 len 28]
                        mem[64] = _5227 + 164
                        mem[_5227 + 100] = 32
                        mem[_5227 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5494 = mem[_5312]
                        s = 0
                        while s < _5494:
                            mem[s + _5227 + 164] = mem[s + _5312 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5494) > _5494:
                            mem[_5227 + _5494 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5227 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5227 + 168 len _5494 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5227 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5227 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5227 + 232] = mem[idx + _5227 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5227 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5227 + ceil32(return_data.size) + 165
                            mem[_5227 + 164] = return_data.size
                            mem[_5227 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5227 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5227 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5227 + ceil32(return_data.size) + 233] = mem[idx + _5227 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5227 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5227 + 196] == bool(mem[_5227 + 196])
                                if not mem[_5227 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
            else:
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                mem[ceil32(return_data.size) + 260] = return_data.size
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5143]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5229 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5315 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5315 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5315 + 36 len 28]
                        mem[64] = _5229 + 164
                        mem[_5229 + 100] = 32
                        mem[_5229 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5495 = mem[_5315]
                        s = 0
                        while s < _5495:
                            mem[s + _5229 + 164] = mem[s + _5315 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5495) > _5495:
                            mem[_5229 + _5495 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5229 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5229 + 168 len _5495 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5229 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5229 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5229 + 232] = mem[idx + _5229 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5229 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5229 + ceil32(return_data.size) + 165
                            mem[_5229 + 164] = return_data.size
                            mem[_5229 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5229 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5229 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5229 + ceil32(return_data.size) + 233] = mem[idx + _5229 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5229 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5229 + 196] == bool(mem[_5229 + 196])
                                if not mem[_5229 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5144 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5144]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5231 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5318 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5318 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5318 + 36 len 28]
                        mem[64] = _5231 + 164
                        mem[_5231 + 100] = 32
                        mem[_5231 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5496 = mem[_5318]
                        s = 0
                        while s < _5496:
                            mem[s + _5231 + 164] = mem[s + _5318 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5496) > _5496:
                            mem[_5231 + _5496 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5231 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5231 + 168 len _5496 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5231 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5231 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5231 + 232] = mem[idx + _5231 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5231 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5231 + ceil32(return_data.size) + 165
                            mem[_5231 + 164] = return_data.size
                            mem[_5231 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5231 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5231 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5231 + ceil32(return_data.size) + 233] = mem[idx + _5231 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5231 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5231 + 196] == bool(mem[_5231 + 196])
                                if not mem[_5231 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
        else:
            require msg.sender == governanceAddress
            mem[100] = this.address
            mem[132] = routerAddress
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), routerAddress
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[ceil32(return_data.size) + 132] = routerAddress
            mem[ceil32(return_data.size) + 164] = -1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor25.field_0)
            mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = ceil32(return_data.size) + 260
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor25.field_0), uint32(stor25.field_0), -1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5149]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5241 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5333 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5333 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5333 + 36 len 28]
                        mem[64] = _5241 + 164
                        mem[_5241 + 100] = 32
                        mem[_5241 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5501 = mem[_5333]
                        s = 0
                        while s < _5501:
                            mem[s + _5241 + 164] = mem[s + _5333 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5501) > _5501:
                            mem[_5241 + _5501 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5241 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5241 + 168 len _5501 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5241 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5241 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5241 + 232] = mem[idx + _5241 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5241 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5241 + ceil32(return_data.size) + 165
                            mem[_5241 + 164] = return_data.size
                            mem[_5241 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5241 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5241 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5241 + ceil32(return_data.size) + 233] = mem[idx + _5241 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5241 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5241 + 196] == bool(mem[_5241 + 196])
                                if not mem[_5241 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
                else:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 0, stor25.field_0) == bool(0, Mask(224, 0, stor25.field_0))
                    if not 0, Mask(224, 0, stor25.field_0):
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5150 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5150]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5243 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5336 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5336 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5336 + 36 len 28]
                        mem[64] = _5243 + 164
                        mem[_5243 + 100] = 32
                        mem[_5243 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5502 = mem[_5336]
                        s = 0
                        while s < _5502:
                            mem[s + _5243 + 164] = mem[s + _5336 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5502) > _5502:
                            mem[_5243 + _5502 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5243 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5243 + 168 len _5502 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5243 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5243 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5243 + 232] = mem[idx + _5243 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5243 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5243 + ceil32(return_data.size) + 165
                            mem[_5243 + 164] = return_data.size
                            mem[_5243 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5243 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5243 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5243 + ceil32(return_data.size) + 233] = mem[idx + _5243 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5243 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5243 + 196] == bool(mem[_5243 + 196])
                                if not mem[_5243 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
            else:
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                mem[ceil32(return_data.size) + 260] = return_data.size
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5151]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5245 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5339 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5339 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5339 + 36 len 28]
                        mem[64] = _5245 + 164
                        mem[_5245 + 100] = 32
                        mem[_5245 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5503 = mem[_5339]
                        s = 0
                        while s < _5503:
                            mem[s + _5245 + 164] = mem[s + _5339 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5503) > _5503:
                            mem[_5245 + _5503 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5245 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5245 + 168 len _5503 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5245 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5245 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5245 + 232] = mem[idx + _5245 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5245 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5245 + ceil32(return_data.size) + 165
                            mem[_5245 + 164] = return_data.size
                            mem[_5245 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5245 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5245 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5245 + ceil32(return_data.size) + 233] = mem[idx + _5245 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5245 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5245 + 196] == bool(mem[_5245 + 196])
                                if not mem[_5245 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    idx = 0
                    while idx < sub_0658f495.length:
                        mem[0] = 24
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = routerAddress
                        require ext_code.size(sub_0658f495[idx].field_0)
                        staticcall sub_0658f495[idx].field_0.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), routerAddress
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5152 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5152]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        _5247 = mem[64]
                        mem[mem[64] + 36] = routerAddress
                        mem[mem[64] + 68] = -1
                        _5342 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5342 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_5342 + 36 len 28]
                        mem[64] = _5247 + 164
                        mem[_5247 + 100] = 32
                        mem[_5247 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5504 = mem[_5342]
                        s = 0
                        while s < _5504:
                            mem[s + _5247 + 164] = mem[s + _5342 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5504) > _5504:
                            mem[_5247 + _5504 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5247 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5247 + 168 len _5504 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5247 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5247 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5247 + 232] = mem[idx + _5247 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5247 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _5247 + ceil32(return_data.size) + 165
                            mem[_5247 + 164] = return_data.size
                            mem[_5247 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5247 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5247 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5247 + ceil32(return_data.size) + 233] = mem[idx + _5247 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5247 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5247 + 196] == bool(mem[_5247 + 196])
                                if not mem[_5247 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = idx + 1
                        continue 
}

function sub_ad46355f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if msg.sender == strategistAddress:
        idx = 0
        s = 0
        t = 0
        t = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            require ext_code.size(sub_0658f495[idx].field_0)
            staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
            s = sub_0658f495[idx].field_0
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
            if sub_0658f495[idx].field_0 != address(s):
                require idx < sub_0658f495.length
                mem[0] = 24
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4933 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4936 = mem[_4933]
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                    require ext_code.size(sub_0658f495[idx].field_0)
                    staticcall sub_0658f495[idx].field_0.totalBalance() with:
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
                    require ext_code.size(sub_0658f495[idx].field_0)
                    staticcall sub_0658f495[idx].field_0.totalBalance() with:
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
                                    require ext_code.size(sub_0658f495[idx].field_0)
                                    staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 0 / _5197
                                        _5293 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5293 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5293 + 36 len 28]
                                        mem[64] = _5274 + 164
                                        mem[_5274 + 100] = 32
                                        mem[_5274 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5392 = mem[_5293]
                                        s = 0
                                        while s < _5392:
                                            mem[s + _5274 + 164] = mem[s + _5293 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5392) > _5392:
                                            mem[_5274 + _5392 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5274 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 10^18 * _5085 / _5197
                                        _5307 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5307 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5307 + 36 len 28]
                                        mem[64] = _5281 + 164
                                        mem[_5281 + 100] = 32
                                        mem[_5281 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5409 = mem[_5307]
                                        s = 0
                                        while s < _5409:
                                            mem[s + _5281 + 164] = mem[s + _5307 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5409) > _5409:
                                            mem[_5281 + _5409 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5281 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                    require ext_code.size(sub_0658f495[idx].field_0)
                                    staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 0 / _5201
                                        _5312 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5312 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5312 + 36 len 28]
                                        mem[64] = _5283 + 164
                                        mem[_5283 + 100] = 32
                                        mem[_5283 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5415 = mem[_5312]
                                        s = 0
                                        while s < _5415:
                                            mem[s + _5283 + 164] = mem[s + _5312 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5415) > _5415:
                                            mem[_5283 + _5415 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5283 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 10^18 * _4951 * _4936 / 10^18 / _5201
                                        _5333 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5333 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5333 + 36 len 28]
                                        mem[64] = _5296 + 164
                                        mem[_5296 + 100] = 32
                                        mem[_5296 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5439 = mem[_5333]
                                        s = 0
                                        while s < _5439:
                                            mem[s + _5296 + 164] = mem[s + _5333 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5439) > _5439:
                                            mem[_5296 + _5439 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5296 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                    require ext_code.size(sub_0658f495[idx].field_0)
                                    staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 0 / _5202
                                        _5315 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5315 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5315 + 36 len 28]
                                        mem[64] = _5285 + 164
                                        mem[_5285 + 100] = 32
                                        mem[_5285 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5419 = mem[_5315]
                                        s = 0
                                        while s < _5419:
                                            mem[s + _5285 + 164] = mem[s + _5315 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5419) > _5419:
                                            mem[_5285 + _5419 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5285 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 10^18 * _5101 / _5202
                                        _5338 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5338 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5338 + 36 len 28]
                                        mem[64] = _5297 + 164
                                        mem[_5297 + 100] = 32
                                        mem[_5297 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5442 = mem[_5338]
                                        s = 0
                                        while s < _5442:
                                            mem[s + _5297 + 164] = mem[s + _5338 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5442) > _5442:
                                            mem[_5297 + _5442 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5297 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                    require ext_code.size(sub_0658f495[idx].field_0)
                                    staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 0 / _5205
                                        _5343 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5343 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5343 + 36 len 28]
                                        mem[64] = _5299 + 164
                                        mem[_5299 + 100] = 32
                                        mem[_5299 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5448 = mem[_5343]
                                        s = 0
                                        while s < _5448:
                                            mem[s + _5299 + 164] = mem[s + _5343 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5448) > _5448:
                                            mem[_5299 + _5448 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5299 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 10^18 * arg1 / _5205
                                        _5365 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5365 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5365 + 36 len 28]
                                        mem[64] = _5318 + 164
                                        mem[_5318 + 100] = 32
                                        mem[_5318 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5466 = mem[_5365]
                                        s = 0
                                        while s < _5466:
                                            mem[s + _5318 + 164] = mem[s + _5365 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5466) > _5466:
                                            mem[_5318 + _5466 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5318 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
            require ext_code.size(sub_0658f495[idx].field_0)
            staticcall sub_0658f495[idx].field_0.borrowRate() with:
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
            s = sub_0658f495[idx].field_0
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
            if sub_0658f495[idx].field_0 != address(s):
                require idx < sub_0658f495.length
                mem[0] = 24
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4934 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4938 = mem[_4934]
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                    require ext_code.size(sub_0658f495[idx].field_0)
                    staticcall sub_0658f495[idx].field_0.totalBalance() with:
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
                    require ext_code.size(sub_0658f495[idx].field_0)
                    staticcall sub_0658f495[idx].field_0.totalBalance() with:
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
                                    require ext_code.size(sub_0658f495[idx].field_0)
                                    staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 0 / _5199
                                        _5300 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5300 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5300 + 36 len 28]
                                        mem[64] = _5278 + 164
                                        mem[_5278 + 100] = 32
                                        mem[_5278 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5402 = mem[_5300]
                                        s = 0
                                        while s < _5402:
                                            mem[s + _5278 + 164] = mem[s + _5300 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5402) > _5402:
                                            mem[_5278 + _5402 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5278 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 10^18 * _5091 / _5199
                                        _5319 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5319 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5319 + 36 len 28]
                                        mem[64] = _5287 + 164
                                        mem[_5287 + 100] = 32
                                        mem[_5287 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5423 = mem[_5319]
                                        s = 0
                                        while s < _5423:
                                            mem[s + _5287 + 164] = mem[s + _5319 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5423) > _5423:
                                            mem[_5287 + _5423 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5287 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                    require ext_code.size(sub_0658f495[idx].field_0)
                                    staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 0 / _5203
                                        _5324 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5324 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5324 + 36 len 28]
                                        mem[64] = _5289 + 164
                                        mem[_5289 + 100] = 32
                                        mem[_5289 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5429 = mem[_5324]
                                        s = 0
                                        while s < _5429:
                                            mem[s + _5289 + 164] = mem[s + _5324 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5429) > _5429:
                                            mem[_5289 + _5429 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5289 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 10^18 * _4952 * _4938 / 10^18 / _5203
                                        _5348 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5348 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5348 + 36 len 28]
                                        mem[64] = _5303 + 164
                                        mem[_5303 + 100] = 32
                                        mem[_5303 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5451 = mem[_5348]
                                        s = 0
                                        while s < _5451:
                                            mem[s + _5303 + 164] = mem[s + _5348 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5451) > _5451:
                                            mem[_5303 + _5451 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5303 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                    require ext_code.size(sub_0658f495[idx].field_0)
                                    staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 0 / _5204
                                        _5327 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5327 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5327 + 36 len 28]
                                        mem[64] = _5291 + 164
                                        mem[_5291 + 100] = 32
                                        mem[_5291 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5433 = mem[_5327]
                                        s = 0
                                        while s < _5433:
                                            mem[s + _5291 + 164] = mem[s + _5327 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5433) > _5433:
                                            mem[_5291 + _5433 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5291 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 10^18 * _5110 / _5204
                                        _5353 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5353 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5353 + 36 len 28]
                                        mem[64] = _5304 + 164
                                        mem[_5304 + 100] = 32
                                        mem[_5304 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5454 = mem[_5353]
                                        s = 0
                                        while s < _5454:
                                            mem[s + _5304 + 164] = mem[s + _5353 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5454) > _5454:
                                            mem[_5304 + _5454 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5304 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                    require ext_code.size(sub_0658f495[idx].field_0)
                                    staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 0 / _5206
                                        _5358 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5358 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5358 + 36 len 28]
                                        mem[64] = _5306 + 164
                                        mem[_5306 + 100] = 32
                                        mem[_5306 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5460 = mem[_5358]
                                        s = 0
                                        while s < _5460:
                                            mem[s + _5306 + 164] = mem[s + _5358 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5460) > _5460:
                                            mem[_5306 + _5460 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5306 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                                        mem[mem[64] + 68] = 10^18 * arg1 / _5206
                                        _5374 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_5374 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5374 + 36 len 28]
                                        mem[64] = _5330 + 164
                                        mem[_5330 + 100] = 32
                                        mem[_5330 + 132] = 'SafeERC20: low-level call failed'
                                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(sub_0658f495[idx].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        _5474 = mem[_5374]
                                        s = 0
                                        while s < _5474:
                                            mem[s + _5330 + 164] = mem[s + _5374 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_5474) > _5474:
                                            mem[_5330 + _5474 + 164] = 0
                                        call sub_0658f495[idx].field_0.mem[_5330 + 164 len 4] with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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
                                            require ext_code.size(sub_0658f495[idx].field_0)
                                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
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

function pause() payable {
    mem[64] = 96
    if msg.sender == strategistAddress:
        idx = 0
        while idx < sub_0658f495.length:
            mem[0] = 24
            require ext_code.size(sub_0658f495[idx].field_0)
            staticcall sub_0658f495[idx].field_0.totalBalance() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4710 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4718 = mem[_4710]
            require ext_code.size(sub_0658f495[idx].field_0)
            staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4729 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4732 = mem[_4729]
            if not _4718:
                _4762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4762] = 26
                mem[_4762 + 32] = 'SafeMath: division by zero'
                if not _4732:
                    _4771 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4771 + 68] = mem[idx + _4762 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4771 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4771 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4847 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4867 = mem[_4847]
                if mem[_4847] < 0 / _4732:
                    if mem[_4847]:
                        _5019 = mem[64]
                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                        mem[mem[64] + 68] = _4867
                        _5075 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5075 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5075 + 36 len 28]
                        mem[64] = _5019 + 164
                        mem[_5019 + 100] = 32
                        mem[_5019 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5319 = mem[_5075]
                        s = 0
                        while s < _5319:
                            mem[s + _5019 + 164] = mem[s + _5075 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5319) > _5319:
                            mem[_5019 + _5319 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5019 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5019 + 168 len _5319 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5019 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5019 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5019 + 232] = mem[idx + _5019 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5019 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_5019 + 168] = this.address
                            require ext_code.size(sub_0658f495[idx].field_0)
                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_5019 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5019 + ceil32(return_data.size) + 164
                        else:
                            mem[_5019 + 164] = return_data.size
                            mem[_5019 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5019 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5019 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5019 + ceil32(return_data.size) + 233] = mem[idx + _5019 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5019 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5019 + 196] == bool(mem[_5019 + 196])
                                if not mem[_5019 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_5019 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(sub_0658f495[idx].field_0)
                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_5019 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5019 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
                else:
                    if 0 / _4732:
                        _5047 = mem[64]
                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                        mem[mem[64] + 68] = 0 / _4732
                        _5102 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5102 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5102 + 36 len 28]
                        mem[64] = _5047 + 164
                        mem[_5047 + 100] = 32
                        mem[_5047 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5381 = mem[_5102]
                        s = 0
                        while s < _5381:
                            mem[s + _5047 + 164] = mem[s + _5102 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5381) > _5381:
                            mem[_5047 + _5381 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5047 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5047 + 168 len _5381 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5047 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5047 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5047 + 232] = mem[idx + _5047 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5047 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_5047 + 168] = this.address
                            require ext_code.size(sub_0658f495[idx].field_0)
                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_5047 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5047 + ceil32(return_data.size) + 164
                        else:
                            mem[_5047 + 164] = return_data.size
                            mem[_5047 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5047 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5047 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5047 + ceil32(return_data.size) + 233] = mem[idx + _5047 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5047 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5047 + 196] == bool(mem[_5047 + 196])
                                if not mem[_5047 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_5047 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(sub_0658f495[idx].field_0)
                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_5047 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5047 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
            else:
                if 10^18 * _4718 / _4718 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4765 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4765] = 26
                mem[_4765 + 32] = 'SafeMath: division by zero'
                if not _4732:
                    _4774 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4774 + 68] = mem[idx + _4765 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4774 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4774 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4856 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4879 = mem[_4856]
                if mem[_4856] < 10^18 * _4718 / _4732:
                    if mem[_4856]:
                        _5046 = mem[64]
                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                        mem[mem[64] + 68] = _4879
                        _5099 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5099 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5099 + 36 len 28]
                        mem[64] = _5046 + 164
                        mem[_5046 + 100] = 32
                        mem[_5046 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5375 = mem[_5099]
                        s = 0
                        while s < _5375:
                            mem[s + _5046 + 164] = mem[s + _5099 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5375) > _5375:
                            mem[_5046 + _5375 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5046 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5046 + 168 len _5375 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5046 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5046 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5046 + 232] = mem[idx + _5046 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5046 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_5046 + 168] = this.address
                            require ext_code.size(sub_0658f495[idx].field_0)
                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_5046 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5046 + ceil32(return_data.size) + 164
                        else:
                            mem[_5046 + 164] = return_data.size
                            mem[_5046 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5046 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5046 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5046 + ceil32(return_data.size) + 233] = mem[idx + _5046 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5046 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5046 + 196] == bool(mem[_5046 + 196])
                                if not mem[_5046 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_5046 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(sub_0658f495[idx].field_0)
                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_5046 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5046 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
                else:
                    if 10^18 * _4718 / _4732:
                        _5074 = mem[64]
                        mem[mem[64] + 36] = sub_0658f495[idx].field_0
                        mem[mem[64] + 68] = 10^18 * _4718 / _4732
                        _5133 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_5133 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5133 + 36 len 28]
                        mem[64] = _5074 + 164
                        mem[_5074 + 100] = 32
                        mem[_5074 + 132] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_0658f495[idx].field_0):
                            revert with 0, 'Address: call to non-contract'
                        _5422 = mem[_5133]
                        s = 0
                        while s < _5422:
                            mem[s + _5074 + 164] = mem[s + _5133 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5422) > _5422:
                            mem[_5074 + _5422 + 164] = 0
                        call sub_0658f495[idx].field_0.mem[_5074 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_5074 + 168 len _5422 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_5074 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5074 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5074 + 232] = mem[idx + _5074 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5074 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_5074 + 168] = this.address
                            require ext_code.size(sub_0658f495[idx].field_0)
                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_5074 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5074 + ceil32(return_data.size) + 164
                        else:
                            mem[_5074 + 164] = return_data.size
                            mem[_5074 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5074 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5074 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _5074 + ceil32(return_data.size) + 233] = mem[idx + _5074 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_5074 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_5074 + 196] == bool(mem[_5074 + 196])
                                if not mem[_5074 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_5074 + ceil32(return_data.size) + 169] = this.address
                            require ext_code.size(sub_0658f495[idx].field_0)
                            call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                 gas gas_remaining wei
                                args this.address
                            mem[_5074 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _5074 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                        require return_data.size >= 32
            idx = idx + 1
            continue 
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
        if msg.sender == strategistAddress:
            _4735 = mem[64]
            mem[mem[64] + 36] = routerAddress
            mem[mem[64] + 68] = 0
            _4741 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_4735 + 100] = 32
            mem[_4735 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _4792 = mem[_4741]
            mem[_4735 + 164 len ceil32(mem[_4741])] = mem[_4741 + 32 len ceil32(mem[_4741])]
            if ceil32(_4792) <= _4792:
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_4735 + 168 len _4792 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        s = 0
                        while s < sub_0658f495.length:
                            mem[0] = 24
                            _14012 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14131 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14131 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14131 + 36 len 28]
                            mem[64] = _14012 + 164
                            mem[_14012 + 100] = 32
                            mem[_14012 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[s].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14419 = mem[_14131]
                            idx = 0
                            while idx < _14419:
                                mem[idx + _14012 + 164] = mem[idx + _14131 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_14419) > _14419:
                                mem[_14012 + _14419 + 164] = 0
                            call sub_0658f495[s].field_0.mem[_14012 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14012 + 168 len _14419 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14012 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14012 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14012 + 232] = mem[idx + _14012 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14012 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14012 + ceil32(return_data.size) + 165
                                mem[_14012 + 164] = return_data.size
                                mem[_14012 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14012 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14012 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14012 + ceil32(return_data.size) + 233] = mem[idx + _14012 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14012 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14012 + 196] == bool(mem[_14012 + 196])
                                    if not mem[_14012 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            s = s + 1
                            continue 
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        s = 0
                        while s < sub_0658f495.length:
                            mem[0] = 24
                            _14013 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14133 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14133 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14133 + 36 len 28]
                            mem[64] = _14013 + 164
                            mem[_14013 + 100] = 32
                            mem[_14013 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[s].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14420 = mem[_14133]
                            t = 0
                            while t < _14420:
                                mem[t + _14013 + 164] = mem[t + _14133 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_14420) <= _14420:
                                call sub_0658f495[s].field_0.mem[_14013 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14013 + 168 len _14420 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14013 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14013 + 168] = 32
                                        s = 0
                                        while s < 32:
                                            mem[s + _14013 + 232] = mem[s + _14013 + 132]
                                            s = s + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14013 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14013 + ceil32(return_data.size) + 165
                                    mem[_14013 + 164] = return_data.size
                                    mem[_14013 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14013 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14013 + ceil32(return_data.size) + 169] = 32
                                        s = 0
                                        while s < 32:
                                            mem[s + _14013 + ceil32(return_data.size) + 233] = mem[s + _14013 + 132]
                                            s = s + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14013 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14013 + 196] == bool(mem[_14013 + 196])
                                        if not mem[_14013 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_14013 + _14420 + 164] = 0
                                call sub_0658f495[s].field_0.mem[_14013 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14013 + 168 len _14420 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14013 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14013 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14013 + 232] = mem[idx + _14013 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14013 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14013 + ceil32(return_data.size) + 165
                                    mem[_14013 + 164] = return_data.size
                                    mem[_14013 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14013 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14013 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14013 + ceil32(return_data.size) + 233] = mem[idx + _14013 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14013 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14013 + 196] == bool(mem[_14013 + 196])
                                        if not mem[_14013 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            s = s + 1
                            continue 
                else:
                    mem[64] = _4735 + ceil32(return_data.size) + 165
                    mem[_4735 + 164] = return_data.size
                    mem[_4735 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        s = 0
                        while s < sub_0658f495.length:
                            mem[0] = 24
                            _14015 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14135 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14135 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14135 + 36 len 28]
                            mem[64] = _14015 + 164
                            mem[_14015 + 100] = 32
                            mem[_14015 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[s].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14421 = mem[_14135]
                            idx = 0
                            while idx < _14421:
                                mem[idx + _14015 + 164] = mem[idx + _14135 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_14421) > _14421:
                                mem[_14015 + _14421 + 164] = 0
                            call sub_0658f495[s].field_0.mem[_14015 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14015 + 168 len _14421 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14015 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14015 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14015 + 232] = mem[idx + _14015 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14015 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14015 + ceil32(return_data.size) + 165
                                mem[_14015 + 164] = return_data.size
                                mem[_14015 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14015 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14015 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14015 + ceil32(return_data.size) + 233] = mem[idx + _14015 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14015 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14015 + 196] == bool(mem[_14015 + 196])
                                    if not mem[_14015 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            s = s + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        require mem[_4735 + 196] == bool(mem[_4735 + 196])
                        if not mem[_4735 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        s = 0
                        while s < sub_0658f495.length:
                            mem[0] = 24
                            _14016 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14137 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14137 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14137 + 36 len 28]
                            mem[64] = _14016 + 164
                            mem[_14016 + 100] = 32
                            mem[_14016 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[s].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14422 = mem[_14137]
                            t = 0
                            while t < _14422:
                                mem[t + _14016 + 164] = mem[t + _14137 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_14422) <= _14422:
                                call sub_0658f495[s].field_0.mem[_14016 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14016 + 168 len _14422 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14016 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14016 + 168] = 32
                                        s = 0
                                        while s < 32:
                                            mem[s + _14016 + 232] = mem[s + _14016 + 132]
                                            s = s + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14016 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14016 + ceil32(return_data.size) + 165
                                    mem[_14016 + 164] = return_data.size
                                    mem[_14016 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14016 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14016 + ceil32(return_data.size) + 169] = 32
                                        s = 0
                                        while s < 32:
                                            mem[s + _14016 + ceil32(return_data.size) + 233] = mem[s + _14016 + 132]
                                            s = s + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14016 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14016 + 196] == bool(mem[_14016 + 196])
                                        if not mem[_14016 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[_14016 + _14422 + 164] = 0
                                call sub_0658f495[s].field_0.mem[_14016 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14016 + 168 len _14422 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14016 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14016 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14016 + 232] = mem[idx + _14016 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14016 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14016 + ceil32(return_data.size) + 165
                                    mem[_14016 + 164] = return_data.size
                                    mem[_14016 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14016 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14016 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14016 + ceil32(return_data.size) + 233] = mem[idx + _14016 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14016 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14016 + 196] == bool(mem[_14016 + 196])
                                        if not mem[_14016 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            s = s + 1
                            continue 
            else:
                mem[_4735 + _4792 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_4735 + 168 len _4792 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14018 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14139 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14139 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14139 + 36 len 28]
                            mem[64] = _14018 + 164
                            mem[_14018 + 100] = 32
                            mem[_14018 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14423 = mem[_14139]
                            s = 0
                            while s < _14423:
                                mem[s + _14018 + 164] = mem[s + _14139 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14423) > _14423:
                                mem[_14018 + _14423 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14018 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14018 + 168 len _14423 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14018 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14018 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14018 + 232] = mem[idx + _14018 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14018 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14018 + ceil32(return_data.size) + 165
                                mem[_14018 + 164] = return_data.size
                                mem[_14018 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14018 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14018 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14018 + ceil32(return_data.size) + 233] = mem[idx + _14018 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14018 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14018 + 196] == bool(mem[_14018 + 196])
                                    if not mem[_14018 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14019 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14141 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14141 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14141 + 36 len 28]
                            mem[64] = _14019 + 164
                            mem[_14019 + 100] = 32
                            mem[_14019 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14424 = mem[_14141]
                            s = 0
                            while s < _14424:
                                mem[s + _14019 + 164] = mem[s + _14141 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14424) > _14424:
                                mem[_14019 + _14424 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14019 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14019 + 168 len _14424 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14019 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14019 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14019 + 232] = mem[idx + _14019 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14019 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14019 + ceil32(return_data.size) + 165
                                mem[_14019 + 164] = return_data.size
                                mem[_14019 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14019 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14019 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14019 + ceil32(return_data.size) + 233] = mem[idx + _14019 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14019 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14019 + 196] == bool(mem[_14019 + 196])
                                    if not mem[_14019 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
                else:
                    mem[64] = _4735 + ceil32(return_data.size) + 165
                    mem[_4735 + 164] = return_data.size
                    mem[_4735 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14021 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14143 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14143 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14143 + 36 len 28]
                            mem[64] = _14021 + 164
                            mem[_14021 + 100] = 32
                            mem[_14021 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14425 = mem[_14143]
                            s = 0
                            while s < _14425:
                                mem[s + _14021 + 164] = mem[s + _14143 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14425) > _14425:
                                mem[_14021 + _14425 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14021 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14021 + 168 len _14425 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14021 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14021 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14021 + 232] = mem[idx + _14021 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14021 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14021 + ceil32(return_data.size) + 165
                                mem[_14021 + 164] = return_data.size
                                mem[_14021 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14021 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14021 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14021 + ceil32(return_data.size) + 233] = mem[idx + _14021 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14021 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14021 + 196] == bool(mem[_14021 + 196])
                                    if not mem[_14021 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        require mem[_4735 + 196] == bool(mem[_4735 + 196])
                        if not mem[_4735 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14022 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14145 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14145 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14145 + 36 len 28]
                            mem[64] = _14022 + 164
                            mem[_14022 + 100] = 32
                            mem[_14022 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14426 = mem[_14145]
                            s = 0
                            while s < _14426:
                                mem[s + _14022 + 164] = mem[s + _14145 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14426) > _14426:
                                mem[_14022 + _14426 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14022 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14022 + 168 len _14426 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14022 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14022 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14022 + 232] = mem[idx + _14022 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14022 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14022 + ceil32(return_data.size) + 165
                                mem[_14022 + 164] = return_data.size
                                mem[_14022 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14022 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14022 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14022 + ceil32(return_data.size) + 233] = mem[idx + _14022 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14022 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14022 + 196] == bool(mem[_14022 + 196])
                                    if not mem[_14022 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
        else:
            require msg.sender == governanceAddress
            _4738 = mem[64]
            mem[mem[64] + 36] = routerAddress
            mem[mem[64] + 68] = 0
            _4748 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
            mem[64] = mem[64] + 164
            mem[_4738 + 100] = 32
            mem[_4738 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _4806 = mem[_4748]
            mem[_4738 + 164 len ceil32(mem[_4748])] = mem[_4748 + 32 len ceil32(mem[_4748])]
            if ceil32(_4806) <= _4806:
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_4738 + 168 len _4806 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14024 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14147 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14147 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14147 + 36 len 28]
                            mem[64] = _14024 + 164
                            mem[_14024 + 100] = 32
                            mem[_14024 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14427 = mem[_14147]
                            s = 0
                            while s < _14427:
                                mem[s + _14024 + 164] = mem[s + _14147 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14427) > _14427:
                                mem[_14024 + _14427 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14024 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14024 + 168 len _14427 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14024 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14024 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14024 + 232] = mem[idx + _14024 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14024 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14024 + ceil32(return_data.size) + 165
                                mem[_14024 + 164] = return_data.size
                                mem[_14024 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14024 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14024 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14024 + ceil32(return_data.size) + 233] = mem[idx + _14024 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14024 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14024 + 196] == bool(mem[_14024 + 196])
                                    if not mem[_14024 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14025 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14149 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14149 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14149 + 36 len 28]
                            mem[64] = _14025 + 164
                            mem[_14025 + 100] = 32
                            mem[_14025 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14428 = mem[_14149]
                            s = 0
                            while s < _14428:
                                mem[s + _14025 + 164] = mem[s + _14149 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14428) > _14428:
                                mem[_14025 + _14428 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14025 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14025 + 168 len _14428 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14025 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14025 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14025 + 232] = mem[idx + _14025 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14025 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14025 + ceil32(return_data.size) + 165
                                mem[_14025 + 164] = return_data.size
                                mem[_14025 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14025 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14025 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14025 + ceil32(return_data.size) + 233] = mem[idx + _14025 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14025 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14025 + 196] == bool(mem[_14025 + 196])
                                    if not mem[_14025 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
                else:
                    mem[64] = _4738 + ceil32(return_data.size) + 165
                    mem[_4738 + 164] = return_data.size
                    mem[_4738 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14027 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14151 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14151 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14151 + 36 len 28]
                            mem[64] = _14027 + 164
                            mem[_14027 + 100] = 32
                            mem[_14027 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14429 = mem[_14151]
                            s = 0
                            while s < _14429:
                                mem[s + _14027 + 164] = mem[s + _14151 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14429) > _14429:
                                mem[_14027 + _14429 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14027 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14027 + 168 len _14429 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14027 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14027 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14027 + 232] = mem[idx + _14027 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14027 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14027 + ceil32(return_data.size) + 165
                                mem[_14027 + 164] = return_data.size
                                mem[_14027 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14027 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14027 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14027 + ceil32(return_data.size) + 233] = mem[idx + _14027 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14027 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14027 + 196] == bool(mem[_14027 + 196])
                                    if not mem[_14027 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        require mem[_4738 + 196] == bool(mem[_4738 + 196])
                        if not mem[_4738 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14028 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14153 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14153 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14153 + 36 len 28]
                            mem[64] = _14028 + 164
                            mem[_14028 + 100] = 32
                            mem[_14028 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14430 = mem[_14153]
                            s = 0
                            while s < _14430:
                                mem[s + _14028 + 164] = mem[s + _14153 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14430) > _14430:
                                mem[_14028 + _14430 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14028 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14028 + 168 len _14430 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14028 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14028 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14028 + 232] = mem[idx + _14028 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14028 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14028 + ceil32(return_data.size) + 165
                                mem[_14028 + 164] = return_data.size
                                mem[_14028 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14028 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14028 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14028 + ceil32(return_data.size) + 233] = mem[idx + _14028 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14028 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14028 + 196] == bool(mem[_14028 + 196])
                                    if not mem[_14028 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
            else:
                mem[_4738 + _4806 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_4738 + 168 len _4806 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14030 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14155 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14155 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14155 + 36 len 28]
                            mem[64] = _14030 + 164
                            mem[_14030 + 100] = 32
                            mem[_14030 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14431 = mem[_14155]
                            s = 0
                            while s < _14431:
                                mem[s + _14030 + 164] = mem[s + _14155 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14431) > _14431:
                                mem[_14030 + _14431 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14030 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14030 + 168 len _14431 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14030 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14030 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14030 + 232] = mem[idx + _14030 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14030 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14030 + ceil32(return_data.size) + 165
                                mem[_14030 + 164] = return_data.size
                                mem[_14030 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14030 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14030 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14030 + ceil32(return_data.size) + 233] = mem[idx + _14030 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14030 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14030 + 196] == bool(mem[_14030 + 196])
                                    if not mem[_14030 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14031 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14157 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14157 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14157 + 36 len 28]
                            mem[64] = _14031 + 164
                            mem[_14031 + 100] = 32
                            mem[_14031 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14432 = mem[_14157]
                            s = 0
                            while s < _14432:
                                mem[s + _14031 + 164] = mem[s + _14157 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14432) > _14432:
                                mem[_14031 + _14432 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14031 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14031 + 168 len _14432 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14031 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14031 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14031 + 232] = mem[idx + _14031 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14031 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14031 + ceil32(return_data.size) + 165
                                mem[_14031 + 164] = return_data.size
                                mem[_14031 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14031 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14031 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14031 + ceil32(return_data.size) + 233] = mem[idx + _14031 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14031 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14031 + 196] == bool(mem[_14031 + 196])
                                    if not mem[_14031 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
                else:
                    mem[64] = _4738 + ceil32(return_data.size) + 165
                    mem[_4738 + 164] = return_data.size
                    mem[_4738 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14033 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14159 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14159 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14159 + 36 len 28]
                            mem[64] = _14033 + 164
                            mem[_14033 + 100] = 32
                            mem[_14033 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14433 = mem[_14159]
                            s = 0
                            while s < _14433:
                                mem[s + _14033 + 164] = mem[s + _14159 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14433) > _14433:
                                mem[_14033 + _14433 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14033 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14033 + 168 len _14433 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14033 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14033 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14033 + 232] = mem[idx + _14033 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14033 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14033 + ceil32(return_data.size) + 165
                                mem[_14033 + 164] = return_data.size
                                mem[_14033 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14033 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14033 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14033 + ceil32(return_data.size) + 233] = mem[idx + _14033 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14033 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14033 + 196] == bool(mem[_14033 + 196])
                                    if not mem[_14033 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
                    else:
                        require return_data.size >= 32
                        require mem[_4738 + 196] == bool(mem[_4738 + 196])
                        if not mem[_4738 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        idx = 0
                        while idx < sub_0658f495.length:
                            mem[0] = 24
                            _14034 = mem[64]
                            mem[mem[64] + 36] = routerAddress
                            mem[mem[64] + 68] = 0
                            _14161 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_14161 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14161 + 36 len 28]
                            mem[64] = _14034 + 164
                            mem[_14034 + 100] = 32
                            mem[_14034 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _14434 = mem[_14161]
                            s = 0
                            while s < _14434:
                                mem[s + _14034 + 164] = mem[s + _14161 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_14434) > _14434:
                                mem[_14034 + _14434 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_14034 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_14034 + 168 len _14434 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_14034 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14034 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14034 + 232] = mem[idx + _14034 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14034 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _14034 + ceil32(return_data.size) + 165
                                mem[_14034 + 164] = return_data.size
                                mem[_14034 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_14034 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_14034 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _14034 + ceil32(return_data.size) + 233] = mem[idx + _14034 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_14034 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_14034 + 196] == bool(mem[_14034 + 196])
                                    if not mem[_14034 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = idx + 1
                            continue 
    else:
        require msg.sender == governanceAddress
        if msg.sender == strategistAddress:
            idx = 0
            while idx < sub_0658f495.length:
                mem[0] = 24
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.totalBalance() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4713 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4720 = mem[_4713]
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4730 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4733 = mem[_4730]
                if not _4720:
                    _4763 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4763] = 26
                    mem[_4763 + 32] = 'SafeMath: division by zero'
                    if not _4733:
                        _4772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4772 + 68] = mem[idx + _4763 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4772 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4772 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx].field_0)
                    staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4871 = mem[_4850]
                    if mem[_4850] < 0 / _4733:
                        if mem[_4850]:
                            _5028 = mem[64]
                            mem[mem[64] + 36] = sub_0658f495[idx].field_0
                            mem[mem[64] + 68] = _4871
                            _5084 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5084 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5084 + 36 len 28]
                            mem[64] = _5028 + 164
                            mem[_5028 + 100] = 32
                            mem[_5028 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _5340 = mem[_5084]
                            s = 0
                            while s < _5340:
                                mem[s + _5028 + 164] = mem[s + _5084 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5340) > _5340:
                                mem[_5028 + _5340 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_5028 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5028 + 168 len _5340 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5028 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5028 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5028 + 232] = mem[idx + _5028 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5028 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5028 + 168] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5028 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5028 + ceil32(return_data.size) + 164
                            else:
                                mem[_5028 + 164] = return_data.size
                                mem[_5028 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5028 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5028 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5028 + ceil32(return_data.size) + 233] = mem[idx + _5028 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5028 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5028 + 196] == bool(mem[_5028 + 196])
                                    if not mem[_5028 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5028 + ceil32(return_data.size) + 169] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5028 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5028 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                    else:
                        if 0 / _4733:
                            _5057 = mem[64]
                            mem[mem[64] + 36] = sub_0658f495[idx].field_0
                            mem[mem[64] + 68] = 0 / _4733
                            _5111 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5111 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5111 + 36 len 28]
                            mem[64] = _5057 + 164
                            mem[_5057 + 100] = 32
                            mem[_5057 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _5398 = mem[_5111]
                            s = 0
                            while s < _5398:
                                mem[s + _5057 + 164] = mem[s + _5111 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5398) > _5398:
                                mem[_5057 + _5398 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_5057 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5057 + 168 len _5398 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5057 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5057 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5057 + 232] = mem[idx + _5057 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5057 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5057 + 168] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5057 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5057 + ceil32(return_data.size) + 164
                            else:
                                mem[_5057 + 164] = return_data.size
                                mem[_5057 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5057 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5057 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5057 + ceil32(return_data.size) + 233] = mem[idx + _5057 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5057 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5057 + 196] == bool(mem[_5057 + 196])
                                    if not mem[_5057 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5057 + ceil32(return_data.size) + 169] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5057 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5057 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                else:
                    if 10^18 * _4720 / _4720 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4767] = 26
                    mem[_4767 + 32] = 'SafeMath: division by zero'
                    if not _4733:
                        _4776 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4776 + 68] = mem[idx + _4767 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4776 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4776 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx].field_0)
                    staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4883 = mem[_4859]
                    if mem[_4859] < 10^18 * _4720 / _4733:
                        if mem[_4859]:
                            _5056 = mem[64]
                            mem[mem[64] + 36] = sub_0658f495[idx].field_0
                            mem[mem[64] + 68] = _4883
                            _5108 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5108 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5108 + 36 len 28]
                            mem[64] = _5056 + 164
                            mem[_5056 + 100] = 32
                            mem[_5056 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _5392 = mem[_5108]
                            s = 0
                            while s < _5392:
                                mem[s + _5056 + 164] = mem[s + _5108 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5392) > _5392:
                                mem[_5056 + _5392 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_5056 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5056 + 168 len _5392 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5056 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5056 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5056 + 232] = mem[idx + _5056 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5056 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5056 + 168] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5056 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5056 + ceil32(return_data.size) + 164
                            else:
                                mem[_5056 + 164] = return_data.size
                                mem[_5056 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5056 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5056 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5056 + ceil32(return_data.size) + 233] = mem[idx + _5056 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5056 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5056 + 196] == bool(mem[_5056 + 196])
                                    if not mem[_5056 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5056 + ceil32(return_data.size) + 169] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5056 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5056 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                    else:
                        if 10^18 * _4720 / _4733:
                            _5083 = mem[64]
                            mem[mem[64] + 36] = sub_0658f495[idx].field_0
                            mem[mem[64] + 68] = 10^18 * _4720 / _4733
                            _5147 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5147 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5147 + 36 len 28]
                            mem[64] = _5083 + 164
                            mem[_5083 + 100] = 32
                            mem[_5083 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _5431 = mem[_5147]
                            s = 0
                            while s < _5431:
                                mem[s + _5083 + 164] = mem[s + _5147 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5431) > _5431:
                                mem[_5083 + _5431 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_5083 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5083 + 168 len _5431 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5083 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5083 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5083 + 232] = mem[idx + _5083 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5083 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5083 + 168] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5083 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5083 + ceil32(return_data.size) + 164
                            else:
                                mem[_5083 + 164] = return_data.size
                                mem[_5083 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5083 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5083 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5083 + ceil32(return_data.size) + 233] = mem[idx + _5083 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5083 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5083 + 196] == bool(mem[_5083 + 196])
                                    if not mem[_5083 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5083 + ceil32(return_data.size) + 169] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5083 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5083 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                idx = idx + 1
                continue 
            if paused:
                revert with 0, 'Pausable: paused'
            paused = 1
            emit Paused(msg.sender);
            if msg.sender == strategistAddress:
                _4736 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4743 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4736 + 100] = 32
                mem[_4736 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4796 = mem[_4743]
                mem[_4736 + 164 len ceil32(mem[_4743])] = mem[_4743 + 32 len ceil32(mem[_4743])]
                if ceil32(_4796) <= _4796:
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_4736 + 168 len _4796 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            s = 0
                            while s < sub_0658f495.length:
                                mem[0] = 24
                                _14052 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14163 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14163 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14163 + 36 len 28]
                                mem[64] = _14052 + 164
                                mem[_14052 + 100] = 32
                                mem[_14052 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14435 = mem[_14163]
                                idx = 0
                                while idx < _14435:
                                    mem[idx + _14052 + 164] = mem[idx + _14163 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_14435) > _14435:
                                    mem[_14052 + _14435 + 164] = 0
                                call sub_0658f495[s].field_0.mem[_14052 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14052 + 168 len _14435 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14052 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14052 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14052 + 232] = mem[idx + _14052 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14052 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14052 + ceil32(return_data.size) + 165
                                    mem[_14052 + 164] = return_data.size
                                    mem[_14052 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14052 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14052 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14052 + ceil32(return_data.size) + 233] = mem[idx + _14052 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14052 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14052 + 196] == bool(mem[_14052 + 196])
                                        if not mem[_14052 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                s = s + 1
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            s = 0
                            while s < sub_0658f495.length:
                                mem[0] = 24
                                _14053 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14165 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14165 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14165 + 36 len 28]
                                mem[64] = _14053 + 164
                                mem[_14053 + 100] = 32
                                mem[_14053 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14436 = mem[_14165]
                                t = 0
                                while t < _14436:
                                    mem[t + _14053 + 164] = mem[t + _14165 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_14436) <= _14436:
                                    call sub_0658f495[s].field_0.mem[_14053 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_14053 + 168 len _14436 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_14053 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14053 + 168] = 32
                                            s = 0
                                            while s < 32:
                                                mem[s + _14053 + 232] = mem[s + _14053 + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14053 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _14053 + ceil32(return_data.size) + 165
                                        mem[_14053 + 164] = return_data.size
                                        mem[_14053 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_14053 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14053 + ceil32(return_data.size) + 169] = 32
                                            s = 0
                                            while s < 32:
                                                mem[s + _14053 + ceil32(return_data.size) + 233] = mem[s + _14053 + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14053 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_14053 + 196] == bool(mem[_14053 + 196])
                                            if not mem[_14053 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_14053 + _14436 + 164] = 0
                                    call sub_0658f495[s].field_0.mem[_14053 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_14053 + 168 len _14436 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_14053 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14053 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _14053 + 232] = mem[idx + _14053 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14053 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _14053 + ceil32(return_data.size) + 165
                                        mem[_14053 + 164] = return_data.size
                                        mem[_14053 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_14053 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14053 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _14053 + ceil32(return_data.size) + 233] = mem[idx + _14053 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14053 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_14053 + 196] == bool(mem[_14053 + 196])
                                            if not mem[_14053 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                s = s + 1
                                continue 
                    else:
                        mem[64] = _4736 + ceil32(return_data.size) + 165
                        mem[_4736 + 164] = return_data.size
                        mem[_4736 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            s = 0
                            while s < sub_0658f495.length:
                                mem[0] = 24
                                _14055 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14167 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14167 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14167 + 36 len 28]
                                mem[64] = _14055 + 164
                                mem[_14055 + 100] = 32
                                mem[_14055 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14437 = mem[_14167]
                                idx = 0
                                while idx < _14437:
                                    mem[idx + _14055 + 164] = mem[idx + _14167 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_14437) > _14437:
                                    mem[_14055 + _14437 + 164] = 0
                                call sub_0658f495[s].field_0.mem[_14055 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14055 + 168 len _14437 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14055 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14055 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14055 + 232] = mem[idx + _14055 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14055 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14055 + ceil32(return_data.size) + 165
                                    mem[_14055 + 164] = return_data.size
                                    mem[_14055 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14055 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14055 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14055 + ceil32(return_data.size) + 233] = mem[idx + _14055 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14055 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14055 + 196] == bool(mem[_14055 + 196])
                                        if not mem[_14055 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                s = s + 1
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_4736 + 196] == bool(mem[_4736 + 196])
                            if not mem[_4736 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            s = 0
                            while s < sub_0658f495.length:
                                mem[0] = 24
                                _14056 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14169 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14169 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14169 + 36 len 28]
                                mem[64] = _14056 + 164
                                mem[_14056 + 100] = 32
                                mem[_14056 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14438 = mem[_14169]
                                t = 0
                                while t < _14438:
                                    mem[t + _14056 + 164] = mem[t + _14169 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_14438) <= _14438:
                                    call sub_0658f495[s].field_0.mem[_14056 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_14056 + 168 len _14438 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_14056 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14056 + 168] = 32
                                            s = 0
                                            while s < 32:
                                                mem[s + _14056 + 232] = mem[s + _14056 + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14056 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _14056 + ceil32(return_data.size) + 165
                                        mem[_14056 + 164] = return_data.size
                                        mem[_14056 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_14056 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14056 + ceil32(return_data.size) + 169] = 32
                                            s = 0
                                            while s < 32:
                                                mem[s + _14056 + ceil32(return_data.size) + 233] = mem[s + _14056 + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14056 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_14056 + 196] == bool(mem[_14056 + 196])
                                            if not mem[_14056 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_14056 + _14438 + 164] = 0
                                    call sub_0658f495[s].field_0.mem[_14056 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_14056 + 168 len _14438 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_14056 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14056 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _14056 + 232] = mem[idx + _14056 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14056 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _14056 + ceil32(return_data.size) + 165
                                        mem[_14056 + 164] = return_data.size
                                        mem[_14056 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_14056 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14056 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _14056 + ceil32(return_data.size) + 233] = mem[idx + _14056 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14056 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_14056 + 196] == bool(mem[_14056 + 196])
                                            if not mem[_14056 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                s = s + 1
                                continue 
                else:
                    mem[_4736 + _4796 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_4736 + 168 len _4796 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14058 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14171 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14171 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14171 + 36 len 28]
                                mem[64] = _14058 + 164
                                mem[_14058 + 100] = 32
                                mem[_14058 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14439 = mem[_14171]
                                s = 0
                                while s < _14439:
                                    mem[s + _14058 + 164] = mem[s + _14171 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14439) > _14439:
                                    mem[_14058 + _14439 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14058 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14058 + 168 len _14439 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14058 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14058 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14058 + 232] = mem[idx + _14058 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14058 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14058 + ceil32(return_data.size) + 165
                                    mem[_14058 + 164] = return_data.size
                                    mem[_14058 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14058 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14058 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14058 + ceil32(return_data.size) + 233] = mem[idx + _14058 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14058 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14058 + 196] == bool(mem[_14058 + 196])
                                        if not mem[_14058 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14059 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14173 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14173 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14173 + 36 len 28]
                                mem[64] = _14059 + 164
                                mem[_14059 + 100] = 32
                                mem[_14059 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14440 = mem[_14173]
                                s = 0
                                while s < _14440:
                                    mem[s + _14059 + 164] = mem[s + _14173 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14440) > _14440:
                                    mem[_14059 + _14440 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14059 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14059 + 168 len _14440 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14059 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14059 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14059 + 232] = mem[idx + _14059 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14059 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14059 + ceil32(return_data.size) + 165
                                    mem[_14059 + 164] = return_data.size
                                    mem[_14059 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14059 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14059 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14059 + ceil32(return_data.size) + 233] = mem[idx + _14059 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14059 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14059 + 196] == bool(mem[_14059 + 196])
                                        if not mem[_14059 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                    else:
                        mem[64] = _4736 + ceil32(return_data.size) + 165
                        mem[_4736 + 164] = return_data.size
                        mem[_4736 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14061 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14175 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14175 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14175 + 36 len 28]
                                mem[64] = _14061 + 164
                                mem[_14061 + 100] = 32
                                mem[_14061 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14441 = mem[_14175]
                                s = 0
                                while s < _14441:
                                    mem[s + _14061 + 164] = mem[s + _14175 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14441) > _14441:
                                    mem[_14061 + _14441 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14061 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14061 + 168 len _14441 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14061 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14061 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14061 + 232] = mem[idx + _14061 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14061 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14061 + ceil32(return_data.size) + 165
                                    mem[_14061 + 164] = return_data.size
                                    mem[_14061 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14061 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14061 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14061 + ceil32(return_data.size) + 233] = mem[idx + _14061 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14061 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14061 + 196] == bool(mem[_14061 + 196])
                                        if not mem[_14061 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_4736 + 196] == bool(mem[_4736 + 196])
                            if not mem[_4736 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14062 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14177 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14177 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14177 + 36 len 28]
                                mem[64] = _14062 + 164
                                mem[_14062 + 100] = 32
                                mem[_14062 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14442 = mem[_14177]
                                s = 0
                                while s < _14442:
                                    mem[s + _14062 + 164] = mem[s + _14177 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14442) > _14442:
                                    mem[_14062 + _14442 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14062 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14062 + 168 len _14442 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14062 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14062 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14062 + 232] = mem[idx + _14062 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14062 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14062 + ceil32(return_data.size) + 165
                                    mem[_14062 + 164] = return_data.size
                                    mem[_14062 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14062 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14062 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14062 + ceil32(return_data.size) + 233] = mem[idx + _14062 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14062 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14062 + 196] == bool(mem[_14062 + 196])
                                        if not mem[_14062 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
            else:
                require msg.sender == governanceAddress
                _4739 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4751 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4739 + 100] = 32
                mem[_4739 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4811 = mem[_4751]
                mem[_4739 + 164 len ceil32(mem[_4751])] = mem[_4751 + 32 len ceil32(mem[_4751])]
                if ceil32(_4811) <= _4811:
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_4739 + 168 len _4811 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14064 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14179 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14179 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14179 + 36 len 28]
                                mem[64] = _14064 + 164
                                mem[_14064 + 100] = 32
                                mem[_14064 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14443 = mem[_14179]
                                s = 0
                                while s < _14443:
                                    mem[s + _14064 + 164] = mem[s + _14179 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14443) > _14443:
                                    mem[_14064 + _14443 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14064 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14064 + 168 len _14443 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14064 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14064 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14064 + 232] = mem[idx + _14064 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14064 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14064 + ceil32(return_data.size) + 165
                                    mem[_14064 + 164] = return_data.size
                                    mem[_14064 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14064 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14064 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14064 + ceil32(return_data.size) + 233] = mem[idx + _14064 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14064 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14064 + 196] == bool(mem[_14064 + 196])
                                        if not mem[_14064 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14065 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14181 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14181 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14181 + 36 len 28]
                                mem[64] = _14065 + 164
                                mem[_14065 + 100] = 32
                                mem[_14065 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14444 = mem[_14181]
                                s = 0
                                while s < _14444:
                                    mem[s + _14065 + 164] = mem[s + _14181 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14444) > _14444:
                                    mem[_14065 + _14444 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14065 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14065 + 168 len _14444 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14065 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14065 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14065 + 232] = mem[idx + _14065 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14065 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14065 + ceil32(return_data.size) + 165
                                    mem[_14065 + 164] = return_data.size
                                    mem[_14065 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14065 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14065 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14065 + ceil32(return_data.size) + 233] = mem[idx + _14065 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14065 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14065 + 196] == bool(mem[_14065 + 196])
                                        if not mem[_14065 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                    else:
                        mem[64] = _4739 + ceil32(return_data.size) + 165
                        mem[_4739 + 164] = return_data.size
                        mem[_4739 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14067 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14183 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14183 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14183 + 36 len 28]
                                mem[64] = _14067 + 164
                                mem[_14067 + 100] = 32
                                mem[_14067 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14445 = mem[_14183]
                                s = 0
                                while s < _14445:
                                    mem[s + _14067 + 164] = mem[s + _14183 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14445) > _14445:
                                    mem[_14067 + _14445 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14067 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14067 + 168 len _14445 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14067 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14067 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14067 + 232] = mem[idx + _14067 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14067 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14067 + ceil32(return_data.size) + 165
                                    mem[_14067 + 164] = return_data.size
                                    mem[_14067 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14067 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14067 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14067 + ceil32(return_data.size) + 233] = mem[idx + _14067 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14067 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14067 + 196] == bool(mem[_14067 + 196])
                                        if not mem[_14067 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_4739 + 196] == bool(mem[_4739 + 196])
                            if not mem[_4739 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14068 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14185 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14185 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14185 + 36 len 28]
                                mem[64] = _14068 + 164
                                mem[_14068 + 100] = 32
                                mem[_14068 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14446 = mem[_14185]
                                s = 0
                                while s < _14446:
                                    mem[s + _14068 + 164] = mem[s + _14185 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14446) > _14446:
                                    mem[_14068 + _14446 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14068 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14068 + 168 len _14446 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14068 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14068 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14068 + 232] = mem[idx + _14068 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14068 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14068 + ceil32(return_data.size) + 165
                                    mem[_14068 + 164] = return_data.size
                                    mem[_14068 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14068 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14068 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14068 + ceil32(return_data.size) + 233] = mem[idx + _14068 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14068 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14068 + 196] == bool(mem[_14068 + 196])
                                        if not mem[_14068 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                else:
                    mem[_4739 + _4811 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_4739 + 168 len _4811 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14070 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14187 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14187 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14187 + 36 len 28]
                                mem[64] = _14070 + 164
                                mem[_14070 + 100] = 32
                                mem[_14070 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14447 = mem[_14187]
                                s = 0
                                while s < _14447:
                                    mem[s + _14070 + 164] = mem[s + _14187 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14447) > _14447:
                                    mem[_14070 + _14447 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14070 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14070 + 168 len _14447 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14070 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14070 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14070 + 232] = mem[idx + _14070 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14070 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14070 + ceil32(return_data.size) + 165
                                    mem[_14070 + 164] = return_data.size
                                    mem[_14070 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14070 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14070 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14070 + ceil32(return_data.size) + 233] = mem[idx + _14070 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14070 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14070 + 196] == bool(mem[_14070 + 196])
                                        if not mem[_14070 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14071 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14189 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14189 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14189 + 36 len 28]
                                mem[64] = _14071 + 164
                                mem[_14071 + 100] = 32
                                mem[_14071 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14448 = mem[_14189]
                                s = 0
                                while s < _14448:
                                    mem[s + _14071 + 164] = mem[s + _14189 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14448) > _14448:
                                    mem[_14071 + _14448 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14071 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14071 + 168 len _14448 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14071 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14071 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14071 + 232] = mem[idx + _14071 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14071 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14071 + ceil32(return_data.size) + 165
                                    mem[_14071 + 164] = return_data.size
                                    mem[_14071 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14071 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14071 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14071 + ceil32(return_data.size) + 233] = mem[idx + _14071 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14071 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14071 + 196] == bool(mem[_14071 + 196])
                                        if not mem[_14071 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                    else:
                        mem[64] = _4739 + ceil32(return_data.size) + 165
                        mem[_4739 + 164] = return_data.size
                        mem[_4739 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14073 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14191 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14191 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14191 + 36 len 28]
                                mem[64] = _14073 + 164
                                mem[_14073 + 100] = 32
                                mem[_14073 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14449 = mem[_14191]
                                s = 0
                                while s < _14449:
                                    mem[s + _14073 + 164] = mem[s + _14191 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14449) > _14449:
                                    mem[_14073 + _14449 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14073 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14073 + 168 len _14449 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14073 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14073 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14073 + 232] = mem[idx + _14073 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14073 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14073 + ceil32(return_data.size) + 165
                                    mem[_14073 + 164] = return_data.size
                                    mem[_14073 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14073 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14073 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14073 + ceil32(return_data.size) + 233] = mem[idx + _14073 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14073 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14073 + 196] == bool(mem[_14073 + 196])
                                        if not mem[_14073 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_4739 + 196] == bool(mem[_4739 + 196])
                            if not mem[_4739 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14074 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14193 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14193 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14193 + 36 len 28]
                                mem[64] = _14074 + 164
                                mem[_14074 + 100] = 32
                                mem[_14074 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14450 = mem[_14193]
                                s = 0
                                while s < _14450:
                                    mem[s + _14074 + 164] = mem[s + _14193 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14450) > _14450:
                                    mem[_14074 + _14450 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14074 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14074 + 168 len _14450 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14074 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14074 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14074 + 232] = mem[idx + _14074 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14074 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14074 + ceil32(return_data.size) + 165
                                    mem[_14074 + 164] = return_data.size
                                    mem[_14074 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14074 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14074 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14074 + ceil32(return_data.size) + 233] = mem[idx + _14074 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14074 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14074 + 196] == bool(mem[_14074 + 196])
                                        if not mem[_14074 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
        else:
            require msg.sender == governanceAddress
            idx = 0
            while idx < sub_0658f495.length:
                mem[0] = 24
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.totalBalance() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4716 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4722 = mem[_4716]
                require ext_code.size(sub_0658f495[idx].field_0)
                staticcall sub_0658f495[idx].field_0.exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4734 = mem[_4731]
                if not _4722:
                    _4764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4764] = 26
                    mem[_4764 + 32] = 'SafeMath: division by zero'
                    if not _4734:
                        _4773 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4773 + 68] = mem[idx + _4764 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4773 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4773 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx].field_0)
                    staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4853 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4875 = mem[_4853]
                    if mem[_4853] < 0 / _4734:
                        if mem[_4853]:
                            _5037 = mem[64]
                            mem[mem[64] + 36] = sub_0658f495[idx].field_0
                            mem[mem[64] + 68] = _4875
                            _5093 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5093 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5093 + 36 len 28]
                            mem[64] = _5037 + 164
                            mem[_5037 + 100] = 32
                            mem[_5037 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _5361 = mem[_5093]
                            s = 0
                            while s < _5361:
                                mem[s + _5037 + 164] = mem[s + _5093 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5361) > _5361:
                                mem[_5037 + _5361 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_5037 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5037 + 168 len _5361 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5037 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5037 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5037 + 232] = mem[idx + _5037 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5037 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5037 + 168] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5037 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5037 + ceil32(return_data.size) + 164
                            else:
                                mem[_5037 + 164] = return_data.size
                                mem[_5037 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5037 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5037 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5037 + ceil32(return_data.size) + 233] = mem[idx + _5037 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5037 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5037 + 196] == bool(mem[_5037 + 196])
                                    if not mem[_5037 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5037 + ceil32(return_data.size) + 169] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5037 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5037 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                    else:
                        if 0 / _4734:
                            _5067 = mem[64]
                            mem[mem[64] + 36] = sub_0658f495[idx].field_0
                            mem[mem[64] + 68] = 0 / _4734
                            _5120 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5120 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5120 + 36 len 28]
                            mem[64] = _5067 + 164
                            mem[_5067 + 100] = 32
                            mem[_5067 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _5415 = mem[_5120]
                            s = 0
                            while s < _5415:
                                mem[s + _5067 + 164] = mem[s + _5120 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5415) > _5415:
                                mem[_5067 + _5415 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_5067 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5067 + 168 len _5415 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5067 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5067 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5067 + 232] = mem[idx + _5067 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5067 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5067 + 168] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5067 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5067 + ceil32(return_data.size) + 164
                            else:
                                mem[_5067 + 164] = return_data.size
                                mem[_5067 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5067 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5067 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5067 + ceil32(return_data.size) + 233] = mem[idx + _5067 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5067 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5067 + 196] == bool(mem[_5067 + 196])
                                    if not mem[_5067 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5067 + ceil32(return_data.size) + 169] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5067 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5067 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                else:
                    if 10^18 * _4722 / _4722 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4769] = 26
                    mem[_4769 + 32] = 'SafeMath: division by zero'
                    if not _4734:
                        _4778 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4778 + 68] = mem[idx + _4769 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4778 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4778 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx].field_0)
                    staticcall sub_0658f495[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4887 = mem[_4862]
                    if mem[_4862] < 10^18 * _4722 / _4734:
                        if mem[_4862]:
                            _5066 = mem[64]
                            mem[mem[64] + 36] = sub_0658f495[idx].field_0
                            mem[mem[64] + 68] = _4887
                            _5117 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5117 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5117 + 36 len 28]
                            mem[64] = _5066 + 164
                            mem[_5066 + 100] = 32
                            mem[_5066 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _5409 = mem[_5117]
                            s = 0
                            while s < _5409:
                                mem[s + _5066 + 164] = mem[s + _5117 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5409) > _5409:
                                mem[_5066 + _5409 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_5066 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5066 + 168 len _5409 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5066 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5066 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5066 + 232] = mem[idx + _5066 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5066 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5066 + 168] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5066 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5066 + ceil32(return_data.size) + 164
                            else:
                                mem[_5066 + 164] = return_data.size
                                mem[_5066 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5066 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5066 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5066 + ceil32(return_data.size) + 233] = mem[idx + _5066 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5066 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5066 + 196] == bool(mem[_5066 + 196])
                                    if not mem[_5066 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5066 + ceil32(return_data.size) + 169] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5066 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5066 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                    else:
                        if 10^18 * _4722 / _4734:
                            _5092 = mem[64]
                            mem[mem[64] + 36] = sub_0658f495[idx].field_0
                            mem[mem[64] + 68] = 10^18 * _4722 / _4734
                            _5161 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5161 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5161 + 36 len 28]
                            mem[64] = _5092 + 164
                            mem[_5092 + 100] = 32
                            mem[_5092 + 132] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_0658f495[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _5440 = mem[_5161]
                            s = 0
                            while s < _5440:
                                mem[s + _5092 + 164] = mem[s + _5161 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5440) > _5440:
                                mem[_5092 + _5440 + 164] = 0
                            call sub_0658f495[idx].field_0.mem[_5092 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_5092 + 168 len _5440 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_5092 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5092 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5092 + 232] = mem[idx + _5092 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5092 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5092 + 168] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5092 + 164] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5092 + ceil32(return_data.size) + 164
                            else:
                                mem[_5092 + 164] = return_data.size
                                mem[_5092 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5092 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5092 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _5092 + ceil32(return_data.size) + 233] = mem[idx + _5092 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_5092 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_5092 + 196] == bool(mem[_5092 + 196])
                                    if not mem[_5092 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                mem[_5092 + ceil32(return_data.size) + 169] = this.address
                                require ext_code.size(sub_0658f495[idx].field_0)
                                call sub_0658f495[idx].field_0.redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                mem[_5092 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _5092 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                            require return_data.size >= 32
                idx = idx + 1
                continue 
            if paused:
                revert with 0, 'Pausable: paused'
            paused = 1
            emit Paused(msg.sender);
            if msg.sender == strategistAddress:
                _4737 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4745 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4737 + 100] = 32
                mem[_4737 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4800 = mem[_4745]
                mem[_4737 + 164 len ceil32(mem[_4745])] = mem[_4745 + 32 len ceil32(mem[_4745])]
                if ceil32(_4800) <= _4800:
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_4737 + 168 len _4800 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            s = 0
                            while s < sub_0658f495.length:
                                mem[0] = 24
                                _14092 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14195 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14195 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14195 + 36 len 28]
                                mem[64] = _14092 + 164
                                mem[_14092 + 100] = 32
                                mem[_14092 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14451 = mem[_14195]
                                idx = 0
                                while idx < _14451:
                                    mem[idx + _14092 + 164] = mem[idx + _14195 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_14451) > _14451:
                                    mem[_14092 + _14451 + 164] = 0
                                call sub_0658f495[s].field_0.mem[_14092 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14092 + 168 len _14451 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14092 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14092 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14092 + 232] = mem[idx + _14092 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14092 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14092 + ceil32(return_data.size) + 165
                                    mem[_14092 + 164] = return_data.size
                                    mem[_14092 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14092 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14092 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14092 + ceil32(return_data.size) + 233] = mem[idx + _14092 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14092 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14092 + 196] == bool(mem[_14092 + 196])
                                        if not mem[_14092 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                s = s + 1
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            s = 0
                            while s < sub_0658f495.length:
                                mem[0] = 24
                                _14093 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14197 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14197 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14197 + 36 len 28]
                                mem[64] = _14093 + 164
                                mem[_14093 + 100] = 32
                                mem[_14093 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14452 = mem[_14197]
                                t = 0
                                while t < _14452:
                                    mem[t + _14093 + 164] = mem[t + _14197 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_14452) <= _14452:
                                    call sub_0658f495[s].field_0.mem[_14093 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_14093 + 168 len _14452 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_14093 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14093 + 168] = 32
                                            s = 0
                                            while s < 32:
                                                mem[s + _14093 + 232] = mem[s + _14093 + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14093 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _14093 + ceil32(return_data.size) + 165
                                        mem[_14093 + 164] = return_data.size
                                        mem[_14093 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_14093 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14093 + ceil32(return_data.size) + 169] = 32
                                            s = 0
                                            while s < 32:
                                                mem[s + _14093 + ceil32(return_data.size) + 233] = mem[s + _14093 + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14093 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_14093 + 196] == bool(mem[_14093 + 196])
                                            if not mem[_14093 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_14093 + _14452 + 164] = 0
                                    call sub_0658f495[s].field_0.mem[_14093 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_14093 + 168 len _14452 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_14093 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14093 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _14093 + 232] = mem[idx + _14093 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14093 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _14093 + ceil32(return_data.size) + 165
                                        mem[_14093 + 164] = return_data.size
                                        mem[_14093 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_14093 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14093 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _14093 + ceil32(return_data.size) + 233] = mem[idx + _14093 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14093 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_14093 + 196] == bool(mem[_14093 + 196])
                                            if not mem[_14093 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                s = s + 1
                                continue 
                    else:
                        mem[64] = _4737 + ceil32(return_data.size) + 165
                        mem[_4737 + 164] = return_data.size
                        mem[_4737 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            s = 0
                            while s < sub_0658f495.length:
                                mem[0] = 24
                                _14095 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14199 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14199 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14199 + 36 len 28]
                                mem[64] = _14095 + 164
                                mem[_14095 + 100] = 32
                                mem[_14095 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14453 = mem[_14199]
                                idx = 0
                                while idx < _14453:
                                    mem[idx + _14095 + 164] = mem[idx + _14199 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(_14453) > _14453:
                                    mem[_14095 + _14453 + 164] = 0
                                call sub_0658f495[s].field_0.mem[_14095 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14095 + 168 len _14453 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14095 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14095 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14095 + 232] = mem[idx + _14095 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14095 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14095 + ceil32(return_data.size) + 165
                                    mem[_14095 + 164] = return_data.size
                                    mem[_14095 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14095 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14095 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14095 + ceil32(return_data.size) + 233] = mem[idx + _14095 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14095 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14095 + 196] == bool(mem[_14095 + 196])
                                        if not mem[_14095 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                s = s + 1
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_4737 + 196] == bool(mem[_4737 + 196])
                            if not mem[_4737 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            s = 0
                            while s < sub_0658f495.length:
                                mem[0] = 24
                                _14096 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14201 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14201 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14201 + 36 len 28]
                                mem[64] = _14096 + 164
                                mem[_14096 + 100] = 32
                                mem[_14096 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[s].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14454 = mem[_14201]
                                t = 0
                                while t < _14454:
                                    mem[t + _14096 + 164] = mem[t + _14201 + 32]
                                    t = t + 32
                                    continue 
                                if ceil32(_14454) <= _14454:
                                    call sub_0658f495[s].field_0.mem[_14096 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_14096 + 168 len _14454 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_14096 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14096 + 168] = 32
                                            s = 0
                                            while s < 32:
                                                mem[s + _14096 + 232] = mem[s + _14096 + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14096 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _14096 + ceil32(return_data.size) + 165
                                        mem[_14096 + 164] = return_data.size
                                        mem[_14096 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_14096 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14096 + ceil32(return_data.size) + 169] = 32
                                            s = 0
                                            while s < 32:
                                                mem[s + _14096 + ceil32(return_data.size) + 233] = mem[s + _14096 + 132]
                                                s = s + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14096 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_14096 + 196] == bool(mem[_14096 + 196])
                                            if not mem[_14096 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[_14096 + _14454 + 164] = 0
                                    call sub_0658f495[s].field_0.mem[_14096 + 164 len 4] with:
                                         gas gas_remaining wei
                                        args mem[_14096 + 168 len _14454 - 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            mem[_14096 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14096 + 168] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _14096 + 232] = mem[idx + _14096 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14096 + 232]
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[64] = _14096 + ceil32(return_data.size) + 165
                                        mem[_14096 + 164] = return_data.size
                                        mem[_14096 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[_14096 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[_14096 + ceil32(return_data.size) + 169] = 32
                                            idx = 0
                                            while idx < 32:
                                                mem[idx + _14096 + ceil32(return_data.size) + 233] = mem[idx + _14096 + 132]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 32, 32, mem[_14096 + ceil32(return_data.size) + 233]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_14096 + 196] == bool(mem[_14096 + 196])
                                            if not mem[_14096 + 196]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                s = s + 1
                                continue 
                else:
                    mem[_4737 + _4800 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_4737 + 168 len _4800 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14098 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14203 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14203 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14203 + 36 len 28]
                                mem[64] = _14098 + 164
                                mem[_14098 + 100] = 32
                                mem[_14098 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14455 = mem[_14203]
                                s = 0
                                while s < _14455:
                                    mem[s + _14098 + 164] = mem[s + _14203 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14455) > _14455:
                                    mem[_14098 + _14455 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14098 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14098 + 168 len _14455 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14098 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14098 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14098 + 232] = mem[idx + _14098 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14098 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14098 + ceil32(return_data.size) + 165
                                    mem[_14098 + 164] = return_data.size
                                    mem[_14098 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14098 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14098 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14098 + ceil32(return_data.size) + 233] = mem[idx + _14098 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14098 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14098 + 196] == bool(mem[_14098 + 196])
                                        if not mem[_14098 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14099 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14205 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14205 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14205 + 36 len 28]
                                mem[64] = _14099 + 164
                                mem[_14099 + 100] = 32
                                mem[_14099 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14456 = mem[_14205]
                                s = 0
                                while s < _14456:
                                    mem[s + _14099 + 164] = mem[s + _14205 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14456) > _14456:
                                    mem[_14099 + _14456 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14099 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14099 + 168 len _14456 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14099 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14099 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14099 + 232] = mem[idx + _14099 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14099 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14099 + ceil32(return_data.size) + 165
                                    mem[_14099 + 164] = return_data.size
                                    mem[_14099 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14099 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14099 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14099 + ceil32(return_data.size) + 233] = mem[idx + _14099 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14099 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14099 + 196] == bool(mem[_14099 + 196])
                                        if not mem[_14099 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                    else:
                        mem[64] = _4737 + ceil32(return_data.size) + 165
                        mem[_4737 + 164] = return_data.size
                        mem[_4737 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14101 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14207 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14207 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14207 + 36 len 28]
                                mem[64] = _14101 + 164
                                mem[_14101 + 100] = 32
                                mem[_14101 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14457 = mem[_14207]
                                s = 0
                                while s < _14457:
                                    mem[s + _14101 + 164] = mem[s + _14207 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14457) > _14457:
                                    mem[_14101 + _14457 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14101 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14101 + 168 len _14457 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14101 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14101 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14101 + 232] = mem[idx + _14101 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14101 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14101 + ceil32(return_data.size) + 165
                                    mem[_14101 + 164] = return_data.size
                                    mem[_14101 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14101 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14101 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14101 + ceil32(return_data.size) + 233] = mem[idx + _14101 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14101 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14101 + 196] == bool(mem[_14101 + 196])
                                        if not mem[_14101 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_4737 + 196] == bool(mem[_4737 + 196])
                            if not mem[_4737 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14102 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14209 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14209 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14209 + 36 len 28]
                                mem[64] = _14102 + 164
                                mem[_14102 + 100] = 32
                                mem[_14102 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14458 = mem[_14209]
                                s = 0
                                while s < _14458:
                                    mem[s + _14102 + 164] = mem[s + _14209 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14458) > _14458:
                                    mem[_14102 + _14458 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14102 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14102 + 168 len _14458 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14102 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14102 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14102 + 232] = mem[idx + _14102 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14102 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14102 + ceil32(return_data.size) + 165
                                    mem[_14102 + 164] = return_data.size
                                    mem[_14102 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14102 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14102 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14102 + ceil32(return_data.size) + 233] = mem[idx + _14102 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14102 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14102 + 196] == bool(mem[_14102 + 196])
                                        if not mem[_14102 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
            else:
                require msg.sender == governanceAddress
                _4740 = mem[64]
                mem[mem[64] + 36] = routerAddress
                mem[mem[64] + 68] = 0
                _4754 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                mem[64] = mem[64] + 164
                mem[_4740 + 100] = 32
                mem[_4740 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4816 = mem[_4754]
                mem[_4740 + 164 len ceil32(mem[_4754])] = mem[_4754 + 32 len ceil32(mem[_4754])]
                if ceil32(_4816) <= _4816:
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_4740 + 168 len _4816 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14104 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14211 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14211 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14211 + 36 len 28]
                                mem[64] = _14104 + 164
                                mem[_14104 + 100] = 32
                                mem[_14104 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14459 = mem[_14211]
                                s = 0
                                while s < _14459:
                                    mem[s + _14104 + 164] = mem[s + _14211 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14459) > _14459:
                                    mem[_14104 + _14459 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14104 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14104 + 168 len _14459 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14104 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14104 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14104 + 232] = mem[idx + _14104 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14104 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14104 + ceil32(return_data.size) + 165
                                    mem[_14104 + 164] = return_data.size
                                    mem[_14104 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14104 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14104 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14104 + ceil32(return_data.size) + 233] = mem[idx + _14104 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14104 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14104 + 196] == bool(mem[_14104 + 196])
                                        if not mem[_14104 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14105 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14213 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14213 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14213 + 36 len 28]
                                mem[64] = _14105 + 164
                                mem[_14105 + 100] = 32
                                mem[_14105 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14460 = mem[_14213]
                                s = 0
                                while s < _14460:
                                    mem[s + _14105 + 164] = mem[s + _14213 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14460) > _14460:
                                    mem[_14105 + _14460 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14105 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14105 + 168 len _14460 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14105 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14105 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14105 + 232] = mem[idx + _14105 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14105 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14105 + ceil32(return_data.size) + 165
                                    mem[_14105 + 164] = return_data.size
                                    mem[_14105 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14105 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14105 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14105 + ceil32(return_data.size) + 233] = mem[idx + _14105 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14105 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14105 + 196] == bool(mem[_14105 + 196])
                                        if not mem[_14105 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                    else:
                        mem[64] = _4740 + ceil32(return_data.size) + 165
                        mem[_4740 + 164] = return_data.size
                        mem[_4740 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14107 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14215 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14215 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14215 + 36 len 28]
                                mem[64] = _14107 + 164
                                mem[_14107 + 100] = 32
                                mem[_14107 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14461 = mem[_14215]
                                s = 0
                                while s < _14461:
                                    mem[s + _14107 + 164] = mem[s + _14215 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14461) > _14461:
                                    mem[_14107 + _14461 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14107 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14107 + 168 len _14461 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14107 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14107 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14107 + 232] = mem[idx + _14107 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14107 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14107 + ceil32(return_data.size) + 165
                                    mem[_14107 + 164] = return_data.size
                                    mem[_14107 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14107 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14107 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14107 + ceil32(return_data.size) + 233] = mem[idx + _14107 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14107 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14107 + 196] == bool(mem[_14107 + 196])
                                        if not mem[_14107 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_4740 + 196] == bool(mem[_4740 + 196])
                            if not mem[_4740 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14108 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14217 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14217 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14217 + 36 len 28]
                                mem[64] = _14108 + 164
                                mem[_14108 + 100] = 32
                                mem[_14108 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14462 = mem[_14217]
                                s = 0
                                while s < _14462:
                                    mem[s + _14108 + 164] = mem[s + _14217 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14462) > _14462:
                                    mem[_14108 + _14462 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14108 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14108 + 168 len _14462 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14108 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14108 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14108 + 232] = mem[idx + _14108 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14108 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14108 + ceil32(return_data.size) + 165
                                    mem[_14108 + 164] = return_data.size
                                    mem[_14108 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14108 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14108 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14108 + ceil32(return_data.size) + 233] = mem[idx + _14108 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14108 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14108 + 196] == bool(mem[_14108 + 196])
                                        if not mem[_14108 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                else:
                    mem[_4740 + _4816 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_4740 + 168 len _4816 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14110 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14219 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14219 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14219 + 36 len 28]
                                mem[64] = _14110 + 164
                                mem[_14110 + 100] = 32
                                mem[_14110 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14463 = mem[_14219]
                                s = 0
                                while s < _14463:
                                    mem[s + _14110 + 164] = mem[s + _14219 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14463) > _14463:
                                    mem[_14110 + _14463 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14110 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14110 + 168 len _14463 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14110 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14110 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14110 + 232] = mem[idx + _14110 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14110 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14110 + ceil32(return_data.size) + 165
                                    mem[_14110 + 164] = return_data.size
                                    mem[_14110 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14110 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14110 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14110 + ceil32(return_data.size) + 233] = mem[idx + _14110 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14110 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14110 + 196] == bool(mem[_14110 + 196])
                                        if not mem[_14110 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14111 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14221 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14221 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14221 + 36 len 28]
                                mem[64] = _14111 + 164
                                mem[_14111 + 100] = 32
                                mem[_14111 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14464 = mem[_14221]
                                s = 0
                                while s < _14464:
                                    mem[s + _14111 + 164] = mem[s + _14221 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14464) > _14464:
                                    mem[_14111 + _14464 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14111 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14111 + 168 len _14464 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14111 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14111 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14111 + 232] = mem[idx + _14111 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14111 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14111 + ceil32(return_data.size) + 165
                                    mem[_14111 + 164] = return_data.size
                                    mem[_14111 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14111 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14111 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14111 + ceil32(return_data.size) + 233] = mem[idx + _14111 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14111 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14111 + 196] == bool(mem[_14111 + 196])
                                        if not mem[_14111 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                    else:
                        mem[64] = _4740 + ceil32(return_data.size) + 165
                        mem[_4740 + 164] = return_data.size
                        mem[_4740 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14113 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14223 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14223 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14223 + 36 len 28]
                                mem[64] = _14113 + 164
                                mem[_14113 + 100] = 32
                                mem[_14113 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14465 = mem[_14223]
                                s = 0
                                while s < _14465:
                                    mem[s + _14113 + 164] = mem[s + _14223 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14465) > _14465:
                                    mem[_14113 + _14465 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14113 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14113 + 168 len _14465 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14113 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14113 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14113 + 232] = mem[idx + _14113 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14113 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14113 + ceil32(return_data.size) + 165
                                    mem[_14113 + 164] = return_data.size
                                    mem[_14113 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14113 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14113 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14113 + ceil32(return_data.size) + 233] = mem[idx + _14113 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14113 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14113 + 196] == bool(mem[_14113 + 196])
                                        if not mem[_14113 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
                        else:
                            require return_data.size >= 32
                            require mem[_4740 + 196] == bool(mem[_4740 + 196])
                            if not mem[_4740 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            idx = 0
                            while idx < sub_0658f495.length:
                                mem[0] = 24
                                _14114 = mem[64]
                                mem[mem[64] + 36] = routerAddress
                                mem[mem[64] + 68] = 0
                                _14225 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_14225 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_14225 + 36 len 28]
                                mem[64] = _14114 + 164
                                mem[_14114 + 100] = 32
                                mem[_14114 + 132] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_0658f495[idx].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                _14466 = mem[_14225]
                                s = 0
                                while s < _14466:
                                    mem[s + _14114 + 164] = mem[s + _14225 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_14466) > _14466:
                                    mem[_14114 + _14466 + 164] = 0
                                call sub_0658f495[idx].field_0.mem[_14114 + 164 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_14114 + 168 len _14466 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_14114 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14114 + 168] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14114 + 232] = mem[idx + _14114 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14114 + 232]
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[64] = _14114 + ceil32(return_data.size) + 165
                                    mem[_14114 + 164] = return_data.size
                                    mem[_14114 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_14114 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_14114 + ceil32(return_data.size) + 169] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + _14114 + ceil32(return_data.size) + 233] = mem[idx + _14114 + 132]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[_14114 + ceil32(return_data.size) + 233]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[_14114 + 196] == bool(mem[_14114 + 196])
                                        if not mem[_14114 + 196]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                idx = idx + 1
                                continue 
}



}
