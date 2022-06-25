contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1)
#  - resetApprovals()
#
const sub_3e4db047(?) = 0

const sub_5d265d3f(?) = 0


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
uint8 activation; offset 160
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

function activation() payable {
    return bool(activation)
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

function activate() payable {
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    activation = 1
}

function deactivate() payable {
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    activation = 0
}

function tend() payable {
    if keeperAddress != msg.sender:
        if strategistAddress != msg.sender:
            require msg.sender == governanceAddress
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
    require arg1 <= 5000
    require arg2 <= 500
    require arg3 <= 2000
    sub_c089f572 = arg2
    sub_f90766a6 = arg3
    withdrawalFee = arg1
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

function sub_3876e5a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
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

function harvestTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if activation:
        return 0
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

function sub_39e3ad19(?) payable {
    mem[64] = 96
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    idx = 0
    while idx < sub_0658f495.length:
        mem[0] = 24
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_0658f495[idx])
        call sub_0658f495[idx].redeem(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        idx = idx + 1
        continue 
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

function isActive() payable {
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
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _30 = mem[_29]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _30:
            _36 = mem[64]
            mem[64] = mem[64] + 64
            mem[_36] = 26
            mem[_36 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_33] * _30 / _30 != mem[_33]:
                revert with 0, 'SafeMath: multiplication overflow'
            _37 = mem[64]
            mem[64] = mem[64] + 64
            mem[_37] = 26
            mem[_37 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    if ext_call.return_data[0] <= 0:
        return (ext_call.return_data[0] > 0)
    return bool(activation)
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
    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (10000 * ext_call.return_data[0] / totalSupply)
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

function addLendingPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require msg.sender == governanceAddress
    sub_0658f495.length++
    storB13D[stor24.length] = arg1
    mem[100] = this.address
    mem[132] = address(routerAddress)
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
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
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor25), uint32(stor25), -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
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
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _67 = mem[_63]
            if mem[_63] <= t:
                idx = idx + 1
                s = s
                t = mem[_63]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _67
            t = _67
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _69 = mem[_65]
        if arg1 + mem[_65] < mem[_65]:
            revert with 0, 'SafeMath: addition overflow'
        idx = 0
        t = arg1
        while idx < sub_0658f495.length:
            mem[0] = 24
            if sub_0658f495[idx] == address(s):
                idx = idx + 1
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            if not t:
                idx = idx + 1
                t = t
                continue 
            require ext_code.size(sub_0658f495[idx])
            call sub_0658f495[idx].redeem(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_129] < arg1 + _69:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = 0
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
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _68 = mem[_64]
            if mem[_64] <= t:
                idx = idx + 1
                s = s
                t = mem[_64]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _68
            t = _68
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _70 = mem[_66]
        if arg1 + mem[_66] < mem[_66]:
            revert with 0, 'SafeMath: addition overflow'
        idx = 0
        t = arg1
        while idx < sub_0658f495.length:
            mem[0] = 24
            if sub_0658f495[idx] == address(s):
                idx = idx + 1
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            if not t:
                idx = idx + 1
                t = t
                continue 
            require ext_code.size(sub_0658f495[idx])
            call sub_0658f495[idx].redeem(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_130] < arg1 + _70:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = 0
            continue 
    if t:
        require ext_code.size(address(s))
        call address(s).redeem(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    mem[0] = msg.sender
    mem[32] = 0
    require arg1 <= balanceOf[address(msg.sender)]
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
        _1166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1169 = mem[_1166]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _1169:
            _1196 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1196] = 26
            mem[_1196 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_1177] * _1169 / _1169 != mem[_1177]:
                revert with 0, 'SafeMath: multiplication overflow'
            _1200 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1200] = 26
            mem[_1200 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    if not ext_call.return_data[0]:
        _1168 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1168] = 26
        mem[_1168 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _1184 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1184] = 34
        mem[_1184 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_1184 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= arg1
        _1204 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1204] = 30
        mem[_1204 + 32] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1230 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1232 = mem[_1230]
        if 0 / totalSupply <= mem[_1230]:
            _1234 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0 / totalSupply
            _1236 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_1234 + 100] = 32
            mem[_1234 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _1256 = mem[_1236]
            mem[_1234 + 164 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
            if ceil32(_1256) > _1256:
                mem[_1234 + _1256 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_1234 + 168 len _1256 - 4]
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
                mem[_1234 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1234 + 196] == bool(mem[_1234 + 196])
                    if not mem[_1234 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, 0 / totalSupply, arg1, 0);
        else:
            if not (0 / totalSupply) - mem[_1230]:
                _1244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1244] = 26
                mem[_1244 + 32] = 'SafeMath: division by zero'
                _1257 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1257] = 30
                mem[_1257 + 32] = 'SafeMath: subtraction overflow'
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
                    _2377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2395 = mem[_2377]
                    if mem[_2377] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2377]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2395
                    t = _2395
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2411 = mem[_2387]
                if (0 / totalSupply) + mem[_2387] < mem[_2387]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = 0 / totalSupply
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    if not t:
                        idx = idx + 1
                        t = t
                        continue 
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3519 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3519] < (0 / totalSupply) + _2411:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3426 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0 / totalSupply
                    _3441 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3426 + 100] = 32
                    mem[_3426 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3487 = mem[_3441]
                    mem[_3426 + 164 len ceil32(mem[_3441])] = mem[_3441 + 32 len ceil32(mem[_3441])]
                    if ceil32(_3487) > _3487:
                        mem[_3426 + _3487 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3426 + 168 len _3487 - 4]
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
                        mem[_3426 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3426 + 196] == bool(mem[_3426 + 196])
                            if not mem[_3426 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3482 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0 / totalSupply
                    _3505 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3482 + 100] = 32
                    mem[_3482 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3563 = mem[_3505]
                    mem[_3482 + 164 len ceil32(mem[_3505])] = mem[_3505 + 32 len ceil32(mem[_3505])]
                    if ceil32(_3563) > _3563:
                        mem[_3482 + _3563 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3482 + 168 len _3563 - 4]
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
                        mem[_3482 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3482 + 196] == bool(mem[_3482 + 196])
                            if not mem[_3482 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, 0 / totalSupply, arg1, 0);
            else:
                if (0 / totalSupply * withdrawalFee) - (mem[_1230] * withdrawalFee) / (0 / totalSupply) - mem[_1230] != withdrawalFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1246 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1246] = 26
                mem[_1246 + 32] = 'SafeMath: division by zero'
                _1262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1262] = 30
                mem[_1262 + 32] = 'SafeMath: subtraction overflow'
                if (0 / totalSupply * withdrawalFee) - (_1232 * withdrawalFee) / 10000 > 0 / totalSupply:
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
                    _2375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2394 = mem[_2375]
                    if mem[_2375] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2375]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2394
                    t = _2394
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2386 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2410 = mem[_2386]
                if (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1232 * withdrawalFee) / 10000) + mem[_2386] < mem[_2386]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1232 * withdrawalFee) / 10000)
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    if not t:
                        idx = idx + 1
                        t = t
                        continue 
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3517] < (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1232 * withdrawalFee) / 10000) + _2410:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3424 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1232 * withdrawalFee) / 10000)
                    _3438 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3424 + 100] = 32
                    mem[_3424 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3486 = mem[_3438]
                    mem[_3424 + 164 len ceil32(mem[_3438])] = mem[_3438 + 32 len ceil32(mem[_3438])]
                    if ceil32(_3486) > _3486:
                        mem[_3424 + _3486 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3424 + 168 len _3486 - 4]
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
                        mem[_3424 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3424 + 196] == bool(mem[_3424 + 196])
                            if not mem[_3424 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3477 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1232 * withdrawalFee) / 10000)
                    _3500 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3477 + 100] = 32
                    mem[_3477 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3560 = mem[_3500]
                    mem[_3477 + 164 len ceil32(mem[_3500])] = mem[_3500 + 32 len ceil32(mem[_3500])]
                    if ceil32(_3560) > _3560:
                        mem[_3477 + _3560 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3477 + 168 len _3560 - 4]
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
                        mem[_3477 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3477 + 196] == bool(mem[_3477 + 196])
                            if not mem[_3477 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1232 * withdrawalFee) / 10000), arg1, (0 / totalSupply * withdrawalFee) - (_1232 * withdrawalFee) / 10000);
    else:
        if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        _1170 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1170] = 26
        mem[_1170 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _1188 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1188] = 34
        mem[_1188 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_1188 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= arg1
        _1205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1205] = 30
        mem[_1205 + 32] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1233 = mem[_1231]
        if arg1 * ext_call.return_data[0] / totalSupply <= mem[_1231]:
            _1235 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1 * ext_call.return_data[0] / totalSupply
            _1238 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_1235 + 100] = 32
            mem[_1235 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _1258 = mem[_1238]
            mem[_1235 + 164 len ceil32(mem[_1238])] = mem[_1238 + 32 len ceil32(mem[_1238])]
            if ceil32(_1258) > _1258:
                mem[_1235 + _1258 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_1235 + 168 len _1258 - 4]
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
                mem[_1235 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1235 + 196] == bool(mem[_1235 + 196])
                    if not mem[_1235 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, arg1 * ext_call.return_data[0] / totalSupply, arg1, 0);
        else:
            if not (arg1 * ext_call.return_data[0] / totalSupply) - mem[_1231]:
                _1245 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1245] = 26
                mem[_1245 + 32] = 'SafeMath: division by zero'
                _1259 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1259] = 30
                mem[_1259 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * ext_call.return_data[0] / totalSupply:
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
                    _2368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2391 = mem[_2368]
                    if mem[_2368] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2368]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2391
                    t = _2391
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2384 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2403 = mem[_2384]
                if (arg1 * ext_call.return_data[0] / totalSupply) + mem[_2384] < mem[_2384]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = arg1 * ext_call.return_data[0] / totalSupply
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    if not t:
                        idx = idx + 1
                        t = t
                        continue 
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3515] < (arg1 * ext_call.return_data[0] / totalSupply) + _2403:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3418 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1 * ext_call.return_data[0] / totalSupply
                    _3435 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3418 + 100] = 32
                    mem[_3418 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3485 = mem[_3435]
                    mem[_3418 + 164 len ceil32(mem[_3435])] = mem[_3435 + 32 len ceil32(mem[_3435])]
                    if ceil32(_3485) > _3485:
                        mem[_3418 + _3485 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3418 + 168 len _3485 - 4]
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
                        mem[_3418 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3418 + 196] == bool(mem[_3418 + 196])
                            if not mem[_3418 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3472 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1 * ext_call.return_data[0] / totalSupply
                    _3495 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3472 + 100] = 32
                    mem[_3472 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3557 = mem[_3495]
                    mem[_3472 + 164 len ceil32(mem[_3495])] = mem[_3495 + 32 len ceil32(mem[_3495])]
                    if ceil32(_3557) > _3557:
                        mem[_3472 + _3557 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3472 + 168 len _3557 - 4]
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
                        mem[_3472 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3472 + 196] == bool(mem[_3472 + 196])
                            if not mem[_3472 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, arg1 * ext_call.return_data[0] / totalSupply, arg1, 0);
            else:
                if (arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (mem[_1231] * withdrawalFee) / (arg1 * ext_call.return_data[0] / totalSupply) - mem[_1231] != withdrawalFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1248 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1248] = 26
                mem[_1248 + 32] = 'SafeMath: division by zero'
                _1265 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1265] = 30
                mem[_1265 + 32] = 'SafeMath: subtraction overflow'
                if (arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1233 * withdrawalFee) / 10000 > arg1 * ext_call.return_data[0] / totalSupply:
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
                    _2366 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2390 = mem[_2366]
                    if mem[_2366] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2366]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2390
                    t = _2390
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2402 = mem[_2383]
                if (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1233 * withdrawalFee) / 10000) + mem[_2383] < mem[_2383]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1233 * withdrawalFee) / 10000)
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    if not t:
                        idx = idx + 1
                        t = t
                        continue 
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3513] < (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1233 * withdrawalFee) / 10000) + _2402:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3416 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1233 * withdrawalFee) / 10000)
                    _3432 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3416 + 100] = 32
                    mem[_3416 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3484 = mem[_3432]
                    mem[_3416 + 164 len ceil32(mem[_3432])] = mem[_3432 + 32 len ceil32(mem[_3432])]
                    if ceil32(_3484) > _3484:
                        mem[_3416 + _3484 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3416 + 168 len _3484 - 4]
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
                        mem[_3416 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3416 + 196] == bool(mem[_3416 + 196])
                            if not mem[_3416 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3467 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1233 * withdrawalFee) / 10000)
                    _3490 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3467 + 100] = 32
                    mem[_3467 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3554 = mem[_3490]
                    mem[_3467 + 164 len ceil32(mem[_3490])] = mem[_3490 + 32 len ceil32(mem[_3490])]
                    if ceil32(_3554) > _3554:
                        mem[_3467 + _3554 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3467 + 168 len _3554 - 4]
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
                        mem[_3467 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3467 + 196] == bool(mem[_3467 + 196])
                            if not mem[_3467 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1233 * withdrawalFee) / 10000), arg1, (arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1233 * withdrawalFee) / 10000);
    return 0
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
        _1007 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1010 = mem[_1007]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1018 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _1010:
            _1037 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1037] = 26
            mem[_1037 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_1018] * _1010 / _1010 != mem[_1018]:
                revert with 0, 'SafeMath: multiplication overflow'
            _1041 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1041] = 26
            mem[_1041 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    if not ext_call.return_data[0]:
        _1009 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1009] = 26
        mem[_1009 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _1025 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1025] = 34
        mem[_1025 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_1025 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] = 0
        _1045 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1045] = 30
        mem[_1045 + 32] = 'SafeMath: subtraction overflow'
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
        _1071 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1073 = mem[_1071]
        if 0 / totalSupply <= mem[_1071]:
            _1075 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0 / totalSupply
            _1077 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_1075 + 100] = 32
            mem[_1075 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _1097 = mem[_1077]
            mem[_1075 + 164 len ceil32(mem[_1077])] = mem[_1077 + 32 len ceil32(mem[_1077])]
            if ceil32(_1097) > _1097:
                mem[_1075 + _1097 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_1075 + 168 len _1097 - 4]
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
                mem[_1075 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1075 + 196] == bool(mem[_1075 + 196])
                    if not mem[_1075 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, 0 / totalSupply, balanceOf[address(msg.sender)], 0);
        else:
            if not (0 / totalSupply) - mem[_1071]:
                _1085 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1085] = 26
                mem[_1085 + 32] = 'SafeMath: division by zero'
                _1098 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1098] = 30
                mem[_1098 + 32] = 'SafeMath: subtraction overflow'
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
                    _2058 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2076 = mem[_2058]
                    if mem[_2058] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2058]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2076
                    t = _2076
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2068 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2092 = mem[_2068]
                if (0 / totalSupply) + mem[_2068] < mem[_2068]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = 0 / totalSupply
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    if not t:
                        idx = idx + 1
                        t = t
                        continue 
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3040] < (0 / totalSupply) + _2092:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _2947 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0 / totalSupply
                    _2962 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2947 + 100] = 32
                    mem[_2947 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3008 = mem[_2962]
                    mem[_2947 + 164 len ceil32(mem[_2962])] = mem[_2962 + 32 len ceil32(mem[_2962])]
                    if ceil32(_3008) > _3008:
                        mem[_2947 + _3008 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2947 + 168 len _3008 - 4]
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
                        mem[_2947 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2947 + 196] == bool(mem[_2947 + 196])
                            if not mem[_2947 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3003 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0 / totalSupply
                    _3026 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3003 + 100] = 32
                    mem[_3003 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3084 = mem[_3026]
                    mem[_3003 + 164 len ceil32(mem[_3026])] = mem[_3026 + 32 len ceil32(mem[_3026])]
                    if ceil32(_3084) > _3084:
                        mem[_3003 + _3084 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3003 + 168 len _3084 - 4]
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
                        mem[_3003 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3003 + 196] == bool(mem[_3003 + 196])
                            if not mem[_3003 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, 0 / totalSupply, balanceOf[address(msg.sender)], 0);
            else:
                if (0 / totalSupply * withdrawalFee) - (mem[_1071] * withdrawalFee) / (0 / totalSupply) - mem[_1071] != withdrawalFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1087 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1087] = 26
                mem[_1087 + 32] = 'SafeMath: division by zero'
                _1103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1103] = 30
                mem[_1103 + 32] = 'SafeMath: subtraction overflow'
                if (0 / totalSupply * withdrawalFee) - (_1073 * withdrawalFee) / 10000 > 0 / totalSupply:
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
                    _2056 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2075 = mem[_2056]
                    if mem[_2056] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2056]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2075
                    t = _2075
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2067 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2091 = mem[_2067]
                if (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1073 * withdrawalFee) / 10000) + mem[_2067] < mem[_2067]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1073 * withdrawalFee) / 10000)
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    if not t:
                        idx = idx + 1
                        t = t
                        continue 
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3038 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3038] < (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1073 * withdrawalFee) / 10000) + _2091:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _2945 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1073 * withdrawalFee) / 10000)
                    _2959 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2945 + 100] = 32
                    mem[_2945 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3007 = mem[_2959]
                    mem[_2945 + 164 len ceil32(mem[_2959])] = mem[_2959 + 32 len ceil32(mem[_2959])]
                    if ceil32(_3007) > _3007:
                        mem[_2945 + _3007 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2945 + 168 len _3007 - 4]
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
                        mem[_2945 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2945 + 196] == bool(mem[_2945 + 196])
                            if not mem[_2945 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2998 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1073 * withdrawalFee) / 10000)
                    _3021 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2998 + 100] = 32
                    mem[_2998 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3081 = mem[_3021]
                    mem[_2998 + 164 len ceil32(mem[_3021])] = mem[_3021 + 32 len ceil32(mem[_3021])]
                    if ceil32(_3081) > _3081:
                        mem[_2998 + _3081 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2998 + 168 len _3081 - 4]
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
                        mem[_2998 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2998 + 196] == bool(mem[_2998 + 196])
                            if not mem[_2998 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1073 * withdrawalFee) / 10000), balanceOf[address(msg.sender)], (0 / totalSupply * withdrawalFee) - (_1073 * withdrawalFee) / 10000);
    else:
        if balanceOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: multiplication overflow'
        _1011 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1011] = 26
        mem[_1011 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _1029 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1029] = 34
        mem[_1029 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_1029 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] = 0
        _1046 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1046] = 30
        mem[_1046 + 32] = 'SafeMath: subtraction overflow'
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
        _1072 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1074 = mem[_1072]
        if balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply <= mem[_1072]:
            _1076 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
            _1079 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_1076 + 100] = 32
            mem[_1076 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _1099 = mem[_1079]
            mem[_1076 + 164 len ceil32(mem[_1079])] = mem[_1079 + 32 len ceil32(mem[_1079])]
            if ceil32(_1099) > _1099:
                mem[_1076 + _1099 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_1076 + 168 len _1099 - 4]
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
                mem[_1076 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1076 + 196] == bool(mem[_1076 + 196])
                    if not mem[_1076 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, balanceOf[address(msg.sender)], 0);
        else:
            if not (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - mem[_1072]:
                _1086 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1086] = 26
                mem[_1086 + 32] = 'SafeMath: division by zero'
                _1100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1100] = 30
                mem[_1100 + 32] = 'SafeMath: subtraction overflow'
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
                    _2049 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2072 = mem[_2049]
                    if mem[_2049] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2049]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2072
                    t = _2072
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2065 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2084 = mem[_2065]
                if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) + mem[_2065] < mem[_2065]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    if not t:
                        idx = idx + 1
                        t = t
                        continue 
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3036 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3036] < (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) + _2084:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _2939 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
                    _2956 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2939 + 100] = 32
                    mem[_2939 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3006 = mem[_2956]
                    mem[_2939 + 164 len ceil32(mem[_2956])] = mem[_2956 + 32 len ceil32(mem[_2956])]
                    if ceil32(_3006) > _3006:
                        mem[_2939 + _3006 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2939 + 168 len _3006 - 4]
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
                        mem[_2939 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2939 + 196] == bool(mem[_2939 + 196])
                            if not mem[_2939 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2993 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
                    _3016 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2993 + 100] = 32
                    mem[_2993 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3078 = mem[_3016]
                    mem[_2993 + 164 len ceil32(mem[_3016])] = mem[_3016 + 32 len ceil32(mem[_3016])]
                    if ceil32(_3078) > _3078:
                        mem[_2993 + _3078 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2993 + 168 len _3078 - 4]
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
                        mem[_2993 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2993 + 196] == bool(mem[_2993 + 196])
                            if not mem[_2993 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, balanceOf[address(msg.sender)], 0);
            else:
                if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (mem[_1072] * withdrawalFee) / (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - mem[_1072] != withdrawalFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1089 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1089] = 26
                mem[_1089 + 32] = 'SafeMath: division by zero'
                _1106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1106] = 30
                mem[_1106 + 32] = 'SafeMath: subtraction overflow'
                if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1074 * withdrawalFee) / 10000 > balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply:
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
                    _2047 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2071 = mem[_2047]
                    if mem[_2047] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2047]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2071
                    t = _2071
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2064 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2083 = mem[_2064]
                if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1074 * withdrawalFee) / 10000) + mem[_2064] < mem[_2064]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1074 * withdrawalFee) / 10000)
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    if not t:
                        idx = idx + 1
                        t = t
                        continue 
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3034 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3034] < (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1074 * withdrawalFee) / 10000) + _2083:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _2937 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1074 * withdrawalFee) / 10000)
                    _2953 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2937 + 100] = 32
                    mem[_2937 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3005 = mem[_2953]
                    mem[_2937 + 164 len ceil32(mem[_2953])] = mem[_2953 + 32 len ceil32(mem[_2953])]
                    if ceil32(_3005) > _3005:
                        mem[_2937 + _3005 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2937 + 168 len _3005 - 4]
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
                        mem[_2937 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2937 + 196] == bool(mem[_2937 + 196])
                            if not mem[_2937 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2988 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1074 * withdrawalFee) / 10000)
                    _3011 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2988 + 100] = 32
                    mem[_2988 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3075 = mem[_3011]
                    mem[_2988 + 164 len ceil32(mem[_3011])] = mem[_3011 + 32 len ceil32(mem[_3011])]
                    if ceil32(_3075) > _3075:
                        mem[_2988 + _3075 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2988 + 168 len _3075 - 4]
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
                        mem[_2988 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2988 + 196] == bool(mem[_2988 + 196])
                            if not mem[_2988 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1074 * withdrawalFee) / 10000), balanceOf[address(msg.sender)], (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1074 * withdrawalFee) / 10000);
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
            _4351 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4358 = mem[_4351]
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4380 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not _4358:
                _4434 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4434] = 26
                mem[_4434 + 32] = 'SafeMath: division by zero'
            else:
                if mem[_4380] * _4358 / _4358 != mem[_4380]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4449 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4449] = 26
                mem[_4449 + 32] = 'SafeMath: division by zero'
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
                _4352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4360 = mem[_4352]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _4360:
                    _4440 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4440] = 26
                    mem[_4440 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_4383] * _4360 / _4360 != mem[_4383]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4453] = 26
                    mem[_4453 + 32] = 'SafeMath: division by zero'
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
                _4353 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4362 = mem[_4353]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4386 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _4362:
                    _4446 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4446] = 26
                    mem[_4446 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_4386] * _4362 / _4362 != mem[_4386]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4457] = 26
                    mem[_4457 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
    if not ext_call.return_data[0]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / totalSupply <= sub_04b2b886:
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                    else:
                        if sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 0 / sub_04b2b886 * totalSupply != sub_f90766a6:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000:
                            if 0 > sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] += sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000
                            emit Transfer((sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                        else:
                            if 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 != 5000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000 > sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] = (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor10]
                            emit Transfer(((sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000)), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000
                            if (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor7] += 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000
                            emit Transfer((5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000), 0, governanceAddress);
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
                            lastHarvest = block.timestamp
                            emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000, 0);
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000, 0);
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
            else:
                if (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / (0 / totalSupply) - sub_04b2b886 != 10000:
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
                            lastHarvest = block.timestamp
                            emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                else:
                    if (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / totalSupply != (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply:
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                    else:
                        if sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply != sub_f90766a6:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000:
                            if 0 > sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000
                            if (sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] += sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000
                            emit Transfer((sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                        else:
                            if 5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 != 5000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000 > sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = (sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply
                            if (sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] = (sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor10]
                            emit Transfer(((sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000)), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000
                            if (5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor7] += 5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000
                            emit Transfer((5000 * sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000), 0, governanceAddress);
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
                            lastHarvest = block.timestamp
                            emit Harvested(0, sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000, 0);
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000, 0);
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * (10000 * 0 / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
    else:
        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if 10000 * ext_call.return_data[0] / totalSupply <= sub_04b2b886:
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
                    lastHarvest = block.timestamp
                    emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
        else:
            if sub_04b2b886 > 10000 * ext_call.return_data[0] / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (10000 * ext_call.return_data[0] / totalSupply) - sub_04b2b886:
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                    else:
                        if sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 0 / sub_04b2b886 * totalSupply != sub_f90766a6:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000:
                            if 0 > sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] += sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000
                            emit Transfer((sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                        else:
                            if 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 != 5000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000 > sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply
                            if (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] = (sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor10]
                            emit Transfer(((sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000)), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000
                            if (5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor7] += 5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000
                            emit Transfer((5000 * sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000), 0, governanceAddress);
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
                            lastHarvest = block.timestamp
                            emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000, 0);
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000, 0);
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * 0 / sub_04b2b886 * totalSupply / 10000 / 10000, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
            else:
                if (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / (10000 * ext_call.return_data[0] / totalSupply) - sub_04b2b886 != 10000:
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
                            lastHarvest = block.timestamp
                            emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                else:
                    if (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / totalSupply != (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply:
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, 0, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
                    else:
                        if sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply != sub_f90766a6:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000:
                            if 0 > sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000
                            if (sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] += sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000
                            emit Transfer((sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, 0, governanceAddress);
                        else:
                            if 5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 != 5000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000 > sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not rewardsAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = (sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply
                            if (sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor10] < balanceOf[stor10]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor10] = (sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor10]
                            emit Transfer(((sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000) - (5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000)), 0, rewardsAddress);
                            if not governanceAddress:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000
                            if (5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000) + balanceOf[stor7] < balanceOf[stor7]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor7] += 5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000
                            emit Transfer((5000 * sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000 / 10000), 0, governanceAddress);
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
                            lastHarvest = block.timestamp
                            emit Harvested(0, sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000, 0);
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000, 0);
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
                                lastHarvest = block.timestamp
                                emit Harvested(0, sub_f90766a6 * (10000 * 10000 * ext_call.return_data[0] / totalSupply) - (10000 * sub_04b2b886) / sub_04b2b886 * totalSupply / 10000 / 10000, (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10000 / 8760 * 24 * 3600);
}

function rebalanceCollateral() payable {
    mem[64] = 96
    if msg.sender == keeperAddress:
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
            _865 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _871 = mem[_865]
            if mem[_865] <= t:
                idx = idx + 1
                s = s
                t = mem[_865]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _871
            t = _871
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _868 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _874 = mem[_868]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _886 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _889 = mem[_886]
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
            _1712 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1723 = mem[_1712]
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1732 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not _1723:
                _1779 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1779] = 26
                mem[_1779 + 32] = 'SafeMath: division by zero'
            else:
                if mem[_1732] * _1723 / _1723 != mem[_1732]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1788 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1788] = 26
                mem[_1788 + 32] = 'SafeMath: division by zero'
            idx = idx + 1
            continue 
        if not _889:
            _1711 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1711] = 26
            mem[_1711 + 32] = 'SafeMath: division by zero'
            idx = 0
            t = 0
            while idx < sub_0658f495.length:
                mem[0] = 24
                if sub_0658f495[idx] == address(s):
                    idx = idx + 1
                    t = t
                    continue 
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
                _2557 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2569 = mem[_2557]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2599 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2617 = mem[_2599]
                if not _2569:
                    _2645 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2645] = 26
                    mem[_2645 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2701 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2722 = mem[_2701]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    t = _2722
                    continue 
                if mem[_2599] * _2569 / _2569 != mem[_2599]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2652 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2652] = 26
                mem[_2652 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= _2617 * _2569 / 10^18:
                    _2712 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2733 = mem[_2712]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    t = _2733
                    continue 
                _2721 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2743 = mem[_2721]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2781 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2802 = mem[_2781]
                if not _2743:
                    _2845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2845] = 26
                    mem[_2845 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2907 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_2907]:
                        _2959 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2959] = 26
                        mem[_2959 + 32] = 'SafeMath: division by zero'
                        _3009 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3009 + 68] = mem[idx + _2959 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3009 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3009 + -mem[64] + 100
                    if 0 / mem[_2907]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2981 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2981] = 26
                    mem[_2981 + 32] = 'SafeMath: division by zero'
                    _3035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3035 + 68] = mem[idx + _2981 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3035 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3035 + -mem[64] + 100
                if mem[_2781] * _2743 / _2743 != mem[_2781]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2856 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2856] = 26
                mem[_2856 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2916 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_2916]:
                    _2980 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2980] = 26
                    mem[_2980 + 32] = 'SafeMath: division by zero'
                    if not _2802 * _2743 / 10^18:
                        _3034 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3034 + 68] = mem[idx + _2980 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3034 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3034 + -mem[64] + 100
                else:
                    if 0 / mem[_2916]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3007 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3007] = 26
                    mem[_3007 + 32] = 'SafeMath: division by zero'
                    if not _2802 * _2743 / 10^18:
                        _3059 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3059 + 68] = mem[idx + _3007 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3059 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3059 + -mem[64] + 100
                ('div', ('mul', ('var', '_2802'), ('var', '_2743')), 1000000000000000000)
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                call sub_0658f495[idx].redeem(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                t = 0 / _2802 * _2743 / 10^18
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2532 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _874 > mem[_2532]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(address(routerAddress))
            call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args address(s), mem[_2532] - _874, address(this.address), block.timestamp + 5
        else:
            if sub_3ef5a13a * _889 / _889 != sub_3ef5a13a:
                revert with 0, 'SafeMath: multiplication overflow'
            _1717 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1717] = 26
            mem[_1717 + 32] = 'SafeMath: division by zero'
            idx = 0
            t = 0
            while idx < sub_0658f495.length:
                mem[0] = 24
                if sub_0658f495[idx] == address(s):
                    idx = idx + 1
                    t = t
                    continue 
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
                _2555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2567 = mem[_2555]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2597 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2615 = mem[_2597]
                if not _2567:
                    _2644 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2644] = 26
                    mem[_2644 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_3ef5a13a * _889 / 10000 >= 0:
                        _2699 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2720 = mem[_2699]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = _2720
                        continue 
                    _2711 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2732 = mem[_2711]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2792 = mem[_2771]
                    if not _2732:
                        _2834 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2834] = 26
                        mem[_2834 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2897 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_2897]:
                            _2943 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2943] = 26
                            mem[_2943 + 32] = 'SafeMath: division by zero'
                            _2979 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2979 + 68] = mem[idx + _2943 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2979 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2979 + -mem[64] + 100
                        if sub_3ef5a13a * _889 / 10000 * mem[_2897] / mem[_2897] != sub_3ef5a13a * _889 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2956 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2956] = 26
                        mem[_2956 + 32] = 'SafeMath: division by zero'
                        _3005 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3005 + 68] = mem[idx + _2956 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3005 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3005 + -mem[64] + 100
                    if mem[_2771] * _2732 / _2732 != mem[_2771]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2843 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2843] = 26
                    mem[_2843 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2906 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2924 = mem[_2906]
                    if not mem[_2906]:
                        _2955 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2955] = 26
                        mem[_2955 + 32] = 'SafeMath: division by zero'
                        if not _2792 * _2732 / 10^18:
                            _3004 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3004 + 68] = mem[idx + _2955 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3004 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3004 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = 0 / _2792 * _2732 / 10^18
                        continue 
                    if sub_3ef5a13a * _889 / 10000 * mem[_2906] / mem[_2906] != sub_3ef5a13a * _889 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2977] = 26
                    mem[_2977 + 32] = 'SafeMath: division by zero'
                    if not _2792 * _2732 / 10^18:
                        _3031 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3031 + 68] = mem[idx + _2977 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3031 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3031 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    t = sub_3ef5a13a * _889 / 10000 * _2924 / _2792 * _2732 / 10^18
                    continue 
                if mem[_2597] * _2567 / _2567 != mem[_2597]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2650 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2650] = 26
                mem[_2650 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_3ef5a13a * _889 / 10000 >= _2615 * _2567 / 10^18:
                    _2710 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2731 = mem[_2710]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    t = _2731
                    continue 
                _2719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2740 = mem[_2719]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2779 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2800 = mem[_2779]
                if not _2740:
                    _2842 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2842] = 26
                    mem[_2842 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2905 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_2905]:
                        _2954 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2954] = 26
                        mem[_2954 + 32] = 'SafeMath: division by zero'
                        _3003 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3003 + 68] = mem[idx + _2954 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3003 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3003 + -mem[64] + 100
                    if sub_3ef5a13a * _889 / 10000 * mem[_2905] / mem[_2905] != sub_3ef5a13a * _889 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2975 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2975] = 26
                    mem[_2975 + 32] = 'SafeMath: division by zero'
                    _3029 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3029 + 68] = mem[idx + _2975 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3029 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3029 + -mem[64] + 100
                if mem[_2779] * _2740 / _2740 != mem[_2779]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2854 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2854] = 26
                mem[_2854 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2914 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2932 = mem[_2914]
                if not mem[_2914]:
                    _2974 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2974] = 26
                    mem[_2974 + 32] = 'SafeMath: division by zero'
                    if not _2800 * _2740 / 10^18:
                        _3028 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3028 + 68] = mem[idx + _2974 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3028 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3028 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    t = 0 / _2800 * _2740 / 10^18
                    continue 
                if sub_3ef5a13a * _889 / 10000 * mem[_2914] / mem[_2914] != sub_3ef5a13a * _889 / 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3001 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3001] = 26
                mem[_3001 + 32] = 'SafeMath: division by zero'
                if not _2800 * _2740 / 10^18:
                    _3055 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _3055 + 68] = mem[idx + _3001 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3055 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3055 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                call sub_0658f495[idx].redeem(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                idx = idx + 1
                t = sub_3ef5a13a * _889 / 10000 * _2932 / _2800 * _2740 / 10^18
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2530 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _874 > mem[_2530]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(address(routerAddress))
            call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args address(s), mem[_2530] - _874, address(this.address), block.timestamp + 5
    else:
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
                _866 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _872 = mem[_866]
                if mem[_866] <= t:
                    idx = idx + 1
                    s = s
                    t = mem[_866]
                    t = t
                    continue 
                require idx < sub_0658f495.length
                mem[0] = 24
                idx = idx + 1
                s = sub_0658f495[idx]
                t = _872
                t = _872
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _869 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _875 = mem[_869]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _887 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _890 = mem[_887]
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
                _1714 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1724 = mem[_1714]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _1724:
                    _1782 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1782] = 26
                    mem[_1782 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_1733] * _1724 / _1724 != mem[_1733]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1792] = 26
                    mem[_1792 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
            if not _890:
                _1713 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1713] = 26
                mem[_1713 + 32] = 'SafeMath: division by zero'
                idx = 0
                t = 0
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
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
                    _2561 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2573 = mem[_2561]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2603 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2621 = mem[_2603]
                    if not _2573:
                        _2647 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2647] = 26
                        mem[_2647 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2705 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2726 = mem[_2705]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = _2726
                        continue 
                    if mem[_2603] * _2573 / _2573 != mem[_2603]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2656 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2656] = 26
                    mem[_2656 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= _2621 * _2573 / 10^18:
                        _2715 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2736 = mem[_2715]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = _2736
                        continue 
                    _2725 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2747 = mem[_2725]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2785 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2806 = mem[_2785]
                    if not _2747:
                        _2849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2849] = 26
                        mem[_2849 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_2910]:
                            _2966 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2966] = 26
                            mem[_2966 + 32] = 'SafeMath: division by zero'
                            _3018 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3018 + 68] = mem[idx + _2966 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3018 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3018 + -mem[64] + 100
                        if 0 / mem[_2910]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2990 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2990] = 26
                        mem[_2990 + 32] = 'SafeMath: division by zero'
                        _3044 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3044 + 68] = mem[idx + _2990 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3044 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3044 + -mem[64] + 100
                    if mem[_2785] * _2747 / _2747 != mem[_2785]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2860] = 26
                    mem[_2860 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_2919]:
                        _2989 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2989] = 26
                        mem[_2989 + 32] = 'SafeMath: division by zero'
                        if not _2806 * _2747 / 10^18:
                            _3043 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3043 + 68] = mem[idx + _2989 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3043 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3043 + -mem[64] + 100
                    else:
                        if 0 / mem[_2919]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3016 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3016] = 26
                        mem[_3016 + 32] = 'SafeMath: division by zero'
                        if not _2806 * _2747 / 10^18:
                            _3066 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3066 + 68] = mem[idx + _3016 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3066 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3066 + -mem[64] + 100
                    ('div', ('mul', ('var', '_2806'), ('var', '_2747')), 1000000000000000000)
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    t = 0 / _2806 * _2747 / 10^18
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2536 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _875 > mem[_2536]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_2536] - _875, address(this.address), block.timestamp + 5
            else:
                if sub_3ef5a13a * _890 / _890 != sub_3ef5a13a:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1719 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1719] = 26
                mem[_1719 + 32] = 'SafeMath: division by zero'
                idx = 0
                t = 0
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
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
                    _2559 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2571 = mem[_2559]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2601 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2619 = mem[_2601]
                    if not _2571:
                        _2646 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2646] = 26
                        mem[_2646 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_3ef5a13a * _890 / 10000 >= 0:
                            _2703 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2724 = mem[_2703]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            t = _2724
                            continue 
                        _2714 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2735 = mem[_2714]
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].exchangeRateLast() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2774 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2795 = mem[_2774]
                        if not _2735:
                            _2837 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2837] = 26
                            mem[_2837 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            staticcall sub_0658f495[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2900 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_2900]:
                                _2947 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2947] = 26
                                mem[_2947 + 32] = 'SafeMath: division by zero'
                                _2988 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2988 + 68] = mem[idx + _2947 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2988 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2988 + -mem[64] + 100
                            if sub_3ef5a13a * _890 / 10000 * mem[_2900] / mem[_2900] != sub_3ef5a13a * _890 / 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2963 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2963] = 26
                            mem[_2963 + 32] = 'SafeMath: division by zero'
                            _3014 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3014 + 68] = mem[idx + _2963 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3014 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3014 + -mem[64] + 100
                        if mem[_2774] * _2735 / _2735 != mem[_2774]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2847 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2847] = 26
                        mem[_2847 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2909 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2927 = mem[_2909]
                        if not mem[_2909]:
                            _2962 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2962] = 26
                            mem[_2962 + 32] = 'SafeMath: division by zero'
                            if not _2795 * _2735 / 10^18:
                                _3013 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _3013 + 68] = mem[idx + _2962 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3013 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _3013 + -mem[64] + 100
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            t = 0 / _2795 * _2735 / 10^18
                            continue 
                        if sub_3ef5a13a * _890 / 10000 * mem[_2909] / mem[_2909] != sub_3ef5a13a * _890 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2986 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2986] = 26
                        mem[_2986 + 32] = 'SafeMath: division by zero'
                        if not _2795 * _2735 / 10^18:
                            _3040 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3040 + 68] = mem[idx + _2986 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3040 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3040 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = sub_3ef5a13a * _890 / 10000 * _2927 / _2795 * _2735 / 10^18
                        continue 
                    if mem[_2601] * _2571 / _2571 != mem[_2601]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2654 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2654] = 26
                    mem[_2654 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_3ef5a13a * _890 / 10000 >= _2619 * _2571 / 10^18:
                        _2713 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2734 = mem[_2713]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = _2734
                        continue 
                    _2723 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2744 = mem[_2723]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2783 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2804 = mem[_2783]
                    if not _2744:
                        _2846 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2846] = 26
                        mem[_2846 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2908 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_2908]:
                            _2961 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2961] = 26
                            mem[_2961 + 32] = 'SafeMath: division by zero'
                            _3012 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3012 + 68] = mem[idx + _2961 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3012 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3012 + -mem[64] + 100
                        if sub_3ef5a13a * _890 / 10000 * mem[_2908] / mem[_2908] != sub_3ef5a13a * _890 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2984 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2984] = 26
                        mem[_2984 + 32] = 'SafeMath: division by zero'
                        _3038 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3038 + 68] = mem[idx + _2984 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3038 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3038 + -mem[64] + 100
                    if mem[_2783] * _2744 / _2744 != mem[_2783]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2858 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2858] = 26
                    mem[_2858 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2917 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2934 = mem[_2917]
                    if not mem[_2917]:
                        _2983 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2983] = 26
                        mem[_2983 + 32] = 'SafeMath: division by zero'
                        if not _2804 * _2744 / 10^18:
                            _3037 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3037 + 68] = mem[idx + _2983 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3037 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3037 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = 0 / _2804 * _2744 / 10^18
                        continue 
                    if sub_3ef5a13a * _890 / 10000 * mem[_2917] / mem[_2917] != sub_3ef5a13a * _890 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3010] = 26
                    mem[_3010 + 32] = 'SafeMath: division by zero'
                    if not _2804 * _2744 / 10^18:
                        _3062 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3062 + 68] = mem[idx + _3010 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3062 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3062 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    t = sub_3ef5a13a * _890 / 10000 * _2934 / _2804 * _2744 / 10^18
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2534 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _875 > mem[_2534]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_2534] - _875, address(this.address), block.timestamp + 5
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
                _867 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _873 = mem[_867]
                if mem[_867] <= t:
                    idx = idx + 1
                    s = s
                    t = mem[_867]
                    t = t
                    continue 
                require idx < sub_0658f495.length
                mem[0] = 24
                idx = idx + 1
                s = sub_0658f495[idx]
                t = _873
                t = _873
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _870 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _876 = mem[_870]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _888 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _891 = mem[_888]
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
                _1716 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1725 = mem[_1716]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1734 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _1725:
                    _1785 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1785] = 26
                    mem[_1785 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_1734] * _1725 / _1725 != mem[_1734]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1796 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1796] = 26
                    mem[_1796 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
            if not _891:
                _1715 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1715] = 26
                mem[_1715 + 32] = 'SafeMath: division by zero'
                idx = 0
                t = 0
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
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
                    _2565 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2577 = mem[_2565]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2607 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2625 = mem[_2607]
                    if not _2577:
                        _2649 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2649] = 26
                        mem[_2649 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2709 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2730 = mem[_2709]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = _2730
                        continue 
                    if mem[_2607] * _2577 / _2577 != mem[_2607]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2660 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2660] = 26
                    mem[_2660 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= _2625 * _2577 / 10^18:
                        _2718 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2739 = mem[_2718]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = _2739
                        continue 
                    _2729 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2751 = mem[_2729]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2789 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2810 = mem[_2789]
                    if not _2751:
                        _2853 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2853] = 26
                        mem[_2853 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2913 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_2913]:
                            _2973 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2973] = 26
                            mem[_2973 + 32] = 'SafeMath: division by zero'
                            _3027 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3027 + 68] = mem[idx + _2973 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3027 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3027 + -mem[64] + 100
                        if 0 / mem[_2913]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2999 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2999] = 26
                        mem[_2999 + 32] = 'SafeMath: division by zero'
                        _3053 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3053 + 68] = mem[idx + _2999 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3053 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3053 + -mem[64] + 100
                    if mem[_2789] * _2751 / _2751 != mem[_2789]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2864 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2864] = 26
                    mem[_2864 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2922 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_2922]:
                        _2998 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2998] = 26
                        mem[_2998 + 32] = 'SafeMath: division by zero'
                        if not _2810 * _2751 / 10^18:
                            _3052 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3052 + 68] = mem[idx + _2998 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3052 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3052 + -mem[64] + 100
                    else:
                        if 0 / mem[_2922]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3025 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3025] = 26
                        mem[_3025 + 32] = 'SafeMath: division by zero'
                        if not _2810 * _2751 / 10^18:
                            _3073 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3073 + 68] = mem[idx + _3025 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3073 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3073 + -mem[64] + 100
                    ('div', ('mul', ('var', '_2810'), ('var', '_2751')), 1000000000000000000)
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    t = 0 / _2810 * _2751 / 10^18
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2540 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _876 > mem[_2540]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_2540] - _876, address(this.address), block.timestamp + 5
            else:
                if sub_3ef5a13a * _891 / _891 != sub_3ef5a13a:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1721 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1721] = 26
                mem[_1721 + 32] = 'SafeMath: division by zero'
                idx = 0
                t = 0
                while idx < sub_0658f495.length:
                    mem[0] = 24
                    if sub_0658f495[idx] == address(s):
                        idx = idx + 1
                        t = t
                        continue 
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
                    _2563 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2575 = mem[_2563]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2605 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2623 = mem[_2605]
                    if not _2575:
                        _2648 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2648] = 26
                        mem[_2648 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_3ef5a13a * _891 / 10000 >= 0:
                            _2707 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2728 = mem[_2707]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            t = _2728
                            continue 
                        _2717 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2738 = mem[_2717]
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].exchangeRateLast() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2777 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2798 = mem[_2777]
                        if not _2738:
                            _2840 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2840] = 26
                            mem[_2840 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            staticcall sub_0658f495[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2903 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_2903]:
                                _2951 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2951] = 26
                                mem[_2951 + 32] = 'SafeMath: division by zero'
                                _2997 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2997 + 68] = mem[idx + _2951 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2997 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2997 + -mem[64] + 100
                            if sub_3ef5a13a * _891 / 10000 * mem[_2903] / mem[_2903] != sub_3ef5a13a * _891 / 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2970 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2970] = 26
                            mem[_2970 + 32] = 'SafeMath: division by zero'
                            _3023 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3023 + 68] = mem[idx + _2970 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3023 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3023 + -mem[64] + 100
                        if mem[_2777] * _2738 / _2738 != mem[_2777]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2851 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2851] = 26
                        mem[_2851 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2912 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2930 = mem[_2912]
                        if not mem[_2912]:
                            _2969 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2969] = 26
                            mem[_2969 + 32] = 'SafeMath: division by zero'
                            if not _2798 * _2738 / 10^18:
                                _3022 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _3022 + 68] = mem[idx + _2969 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3022 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _3022 + -mem[64] + 100
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            idx = idx + 1
                            t = 0 / _2798 * _2738 / 10^18
                            continue 
                        if sub_3ef5a13a * _891 / 10000 * mem[_2912] / mem[_2912] != sub_3ef5a13a * _891 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2995 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2995] = 26
                        mem[_2995 + 32] = 'SafeMath: division by zero'
                        if not _2798 * _2738 / 10^18:
                            _3049 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3049 + 68] = mem[idx + _2995 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3049 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3049 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = sub_3ef5a13a * _891 / 10000 * _2930 / _2798 * _2738 / 10^18
                        continue 
                    if mem[_2605] * _2575 / _2575 != mem[_2605]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2658 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2658] = 26
                    mem[_2658 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_3ef5a13a * _891 / 10000 >= _2623 * _2575 / 10^18:
                        _2716 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2737 = mem[_2716]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = _2737
                        continue 
                    _2727 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2748 = mem[_2727]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2787 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2808 = mem[_2787]
                    if not _2748:
                        _2850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2850] = 26
                        mem[_2850 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2911 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_2911]:
                            _2968 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2968] = 26
                            mem[_2968 + 32] = 'SafeMath: division by zero'
                            _3021 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3021 + 68] = mem[idx + _2968 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3021 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3021 + -mem[64] + 100
                        if sub_3ef5a13a * _891 / 10000 * mem[_2911] / mem[_2911] != sub_3ef5a13a * _891 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2993 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2993] = 26
                        mem[_2993 + 32] = 'SafeMath: division by zero'
                        _3047 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3047 + 68] = mem[idx + _2993 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3047 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3047 + -mem[64] + 100
                    if mem[_2787] * _2748 / _2748 != mem[_2787]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2862] = 26
                    mem[_2862 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2920 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2936 = mem[_2920]
                    if not mem[_2920]:
                        _2992 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2992] = 26
                        mem[_2992 + 32] = 'SafeMath: division by zero'
                        if not _2808 * _2748 / 10^18:
                            _3046 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3046 + 68] = mem[idx + _2992 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3046 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3046 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        idx = idx + 1
                        t = 0 / _2808 * _2748 / 10^18
                        continue 
                    if sub_3ef5a13a * _891 / 10000 * mem[_2920] / mem[_2920] != sub_3ef5a13a * _891 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3019 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3019] = 26
                    mem[_3019 + 32] = 'SafeMath: division by zero'
                    if not _2808 * _2748 / 10^18:
                        _3069 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _3069 + 68] = mem[idx + _3019 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3069 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3069 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    idx = idx + 1
                    t = sub_3ef5a13a * _891 / 10000 * _2936 / _2808 * _2748 / 10^18
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _876 > mem[_2538]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_2538] - _876, address(this.address), block.timestamp + 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
