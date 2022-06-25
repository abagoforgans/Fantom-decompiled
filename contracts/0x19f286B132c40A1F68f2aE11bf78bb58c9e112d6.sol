contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1)
#  - resetApprovals()
#  - harvest()
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
        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_0658f495[idx])
        call sub_0658f495[idx].redeem(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _59 = mem[_55]
            if mem[_55] <= t:
                idx = idx + 1
                s = s
                t = mem[_55]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _59
            t = _59
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _61 = mem[_57]
        if arg1 + mem[_57] < mem[_57]:
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
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_105] < arg1 + _61:
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
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _60 = mem[_56]
            if mem[_56] <= t:
                idx = idx + 1
                s = s
                t = mem[_56]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _60
            t = _60
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _62 = mem[_58]
        if arg1 + mem[_58] < mem[_58]:
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
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_106] < arg1 + _62:
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
        _1150 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1153 = mem[_1150]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _1153:
            _1180 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1180] = 26
            mem[_1180 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_1161] * _1153 / _1153 != mem[_1161]:
                revert with 0, 'SafeMath: multiplication overflow'
            _1184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1184] = 26
            mem[_1184 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    if not ext_call.return_data[0]:
        _1152 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1152] = 26
        mem[_1152 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _1168 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1168] = 34
        mem[_1168 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_1168 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= arg1
        _1188 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1188] = 30
        mem[_1188 + 32] = 'SafeMath: subtraction overflow'
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
        _1214 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1216 = mem[_1214]
        if 0 / totalSupply <= mem[_1214]:
            _1218 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0 / totalSupply
            _1220 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_1218 + 100] = 32
            mem[_1218 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _1240 = mem[_1220]
            mem[_1218 + 164 len ceil32(mem[_1220])] = mem[_1220 + 32 len ceil32(mem[_1220])]
            if ceil32(_1240) > _1240:
                mem[_1218 + _1240 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_1218 + 168 len _1240 - 4]
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
                mem[_1218 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1218 + 196] == bool(mem[_1218 + 196])
                    if not mem[_1218 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, 0 / totalSupply, arg1, 0);
        else:
            if not (0 / totalSupply) - mem[_1214]:
                _1228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1228] = 26
                mem[_1228 + 32] = 'SafeMath: division by zero'
                _1241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1241] = 30
                mem[_1241 + 32] = 'SafeMath: subtraction overflow'
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
                    _2345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2363 = mem[_2345]
                    if mem[_2345] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2345]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2363
                    t = _2363
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2379 = mem[_2355]
                if (0 / totalSupply) + mem[_2355] < mem[_2355]:
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3443 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3443] < (0 / totalSupply) + _2379:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3378 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0 / totalSupply
                    _3390 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3378 + 100] = 32
                    mem[_3378 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3442 = mem[_3390]
                    mem[_3378 + 164 len ceil32(mem[_3390])] = mem[_3390 + 32 len ceil32(mem[_3390])]
                    if ceil32(_3442) > _3442:
                        mem[_3378 + _3442 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3378 + 168 len _3442 - 4]
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
                        mem[_3378 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3378 + 196] == bool(mem[_3378 + 196])
                            if not mem[_3378 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3406 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0 / totalSupply
                    _3417 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3406 + 100] = 32
                    mem[_3406 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3479 = mem[_3417]
                    mem[_3406 + 164 len ceil32(mem[_3417])] = mem[_3417 + 32 len ceil32(mem[_3417])]
                    if ceil32(_3479) > _3479:
                        mem[_3406 + _3479 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3406 + 168 len _3479 - 4]
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
                        mem[_3406 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3406 + 196] == bool(mem[_3406 + 196])
                            if not mem[_3406 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, 0 / totalSupply, arg1, 0);
            else:
                if (0 / totalSupply * withdrawalFee) - (mem[_1214] * withdrawalFee) / (0 / totalSupply) - mem[_1214] != withdrawalFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1230] = 26
                mem[_1230 + 32] = 'SafeMath: division by zero'
                _1246 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1246] = 30
                mem[_1246 + 32] = 'SafeMath: subtraction overflow'
                if (0 / totalSupply * withdrawalFee) - (_1216 * withdrawalFee) / 10000 > 0 / totalSupply:
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
                    _2343 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2362 = mem[_2343]
                    if mem[_2343] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2343]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2362
                    t = _2362
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2378 = mem[_2354]
                if (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1216 * withdrawalFee) / 10000) + mem[_2354] < mem[_2354]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1216 * withdrawalFee) / 10000)
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3441 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3441] < (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1216 * withdrawalFee) / 10000) + _2378:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3376 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1216 * withdrawalFee) / 10000)
                    _3388 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3376 + 100] = 32
                    mem[_3376 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3440 = mem[_3388]
                    mem[_3376 + 164 len ceil32(mem[_3388])] = mem[_3388 + 32 len ceil32(mem[_3388])]
                    if ceil32(_3440) > _3440:
                        mem[_3376 + _3440 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3376 + 168 len _3440 - 4]
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
                        mem[_3376 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3376 + 196] == bool(mem[_3376 + 196])
                            if not mem[_3376 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3404 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1216 * withdrawalFee) / 10000)
                    _3414 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3404 + 100] = 32
                    mem[_3404 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3477 = mem[_3414]
                    mem[_3404 + 164 len ceil32(mem[_3414])] = mem[_3414 + 32 len ceil32(mem[_3414])]
                    if ceil32(_3477) > _3477:
                        mem[_3404 + _3477 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3404 + 168 len _3477 - 4]
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
                        mem[_3404 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3404 + 196] == bool(mem[_3404 + 196])
                            if not mem[_3404 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1216 * withdrawalFee) / 10000), arg1, (0 / totalSupply * withdrawalFee) - (_1216 * withdrawalFee) / 10000);
    else:
        if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        _1154 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1154] = 26
        mem[_1154 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _1172 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1172] = 34
        mem[_1172 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_1172 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= arg1
        _1189 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1189] = 30
        mem[_1189 + 32] = 'SafeMath: subtraction overflow'
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
        _1215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1217 = mem[_1215]
        if arg1 * ext_call.return_data[0] / totalSupply <= mem[_1215]:
            _1219 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1 * ext_call.return_data[0] / totalSupply
            _1222 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_1219 + 100] = 32
            mem[_1219 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _1242 = mem[_1222]
            mem[_1219 + 164 len ceil32(mem[_1222])] = mem[_1222 + 32 len ceil32(mem[_1222])]
            if ceil32(_1242) > _1242:
                mem[_1219 + _1242 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_1219 + 168 len _1242 - 4]
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
                mem[_1219 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1219 + 196] == bool(mem[_1219 + 196])
                    if not mem[_1219 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, arg1 * ext_call.return_data[0] / totalSupply, arg1, 0);
        else:
            if not (arg1 * ext_call.return_data[0] / totalSupply) - mem[_1215]:
                _1229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1229] = 26
                mem[_1229 + 32] = 'SafeMath: division by zero'
                _1243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1243] = 30
                mem[_1243 + 32] = 'SafeMath: subtraction overflow'
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
                    _2336 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2359 = mem[_2336]
                    if mem[_2336] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2336]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2359
                    t = _2359
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2371 = mem[_2352]
                if (arg1 * ext_call.return_data[0] / totalSupply) + mem[_2352] < mem[_2352]:
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3439 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3439] < (arg1 * ext_call.return_data[0] / totalSupply) + _2371:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3370 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1 * ext_call.return_data[0] / totalSupply
                    _3386 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3370 + 100] = 32
                    mem[_3370 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3438 = mem[_3386]
                    mem[_3370 + 164 len ceil32(mem[_3386])] = mem[_3386 + 32 len ceil32(mem[_3386])]
                    if ceil32(_3438) > _3438:
                        mem[_3370 + _3438 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3370 + 168 len _3438 - 4]
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
                        mem[_3370 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3370 + 196] == bool(mem[_3370 + 196])
                            if not mem[_3370 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3402 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1 * ext_call.return_data[0] / totalSupply
                    _3411 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3402 + 100] = 32
                    mem[_3402 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3475 = mem[_3411]
                    mem[_3402 + 164 len ceil32(mem[_3411])] = mem[_3411 + 32 len ceil32(mem[_3411])]
                    if ceil32(_3475) > _3475:
                        mem[_3402 + _3475 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3402 + 168 len _3475 - 4]
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
                        mem[_3402 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3402 + 196] == bool(mem[_3402 + 196])
                            if not mem[_3402 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, arg1 * ext_call.return_data[0] / totalSupply, arg1, 0);
            else:
                if (arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (mem[_1215] * withdrawalFee) / (arg1 * ext_call.return_data[0] / totalSupply) - mem[_1215] != withdrawalFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1232 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1232] = 26
                mem[_1232 + 32] = 'SafeMath: division by zero'
                _1249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1249] = 30
                mem[_1249 + 32] = 'SafeMath: subtraction overflow'
                if (arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1217 * withdrawalFee) / 10000 > arg1 * ext_call.return_data[0] / totalSupply:
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
                    _2334 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2358 = mem[_2334]
                    if mem[_2334] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2334]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2358
                    t = _2358
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2370 = mem[_2351]
                if (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1217 * withdrawalFee) / 10000) + mem[_2351] < mem[_2351]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1217 * withdrawalFee) / 10000)
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3437 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3437] < (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1217 * withdrawalFee) / 10000) + _2370:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3368 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1217 * withdrawalFee) / 10000)
                    _3384 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3368 + 100] = 32
                    mem[_3368 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3436 = mem[_3384]
                    mem[_3368 + 164 len ceil32(mem[_3384])] = mem[_3384 + 32 len ceil32(mem[_3384])]
                    if ceil32(_3436) > _3436:
                        mem[_3368 + _3436 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3368 + 168 len _3436 - 4]
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
                        mem[_3368 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3368 + 196] == bool(mem[_3368 + 196])
                            if not mem[_3368 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3400 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1217 * withdrawalFee) / 10000)
                    _3408 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3400 + 100] = 32
                    mem[_3400 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3473 = mem[_3408]
                    mem[_3400 + 164 len ceil32(mem[_3408])] = mem[_3408 + 32 len ceil32(mem[_3408])]
                    if ceil32(_3473) > _3473:
                        mem[_3400 + _3473 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3400 + 168 len _3473 - 4]
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
                        mem[_3400 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3400 + 196] == bool(mem[_3400 + 196])
                            if not mem[_3400 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1217 * withdrawalFee) / 10000), arg1, (arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1217 * withdrawalFee) / 10000);
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
        _991 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _994 = mem[_991]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1002 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _994:
            _1021 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1021] = 26
            mem[_1021 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_1002] * _994 / _994 != mem[_1002]:
                revert with 0, 'SafeMath: multiplication overflow'
            _1025 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1025] = 26
            mem[_1025 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    if not ext_call.return_data[0]:
        _993 = mem[64]
        mem[64] = mem[64] + 64
        mem[_993] = 26
        mem[_993 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _1009 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1009] = 34
        mem[_1009 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_1009 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] = 0
        _1029 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1029] = 30
        mem[_1029 + 32] = 'SafeMath: subtraction overflow'
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
        _1055 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1057 = mem[_1055]
        if 0 / totalSupply <= mem[_1055]:
            _1059 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0 / totalSupply
            _1061 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_1059 + 100] = 32
            mem[_1059 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _1081 = mem[_1061]
            mem[_1059 + 164 len ceil32(mem[_1061])] = mem[_1061 + 32 len ceil32(mem[_1061])]
            if ceil32(_1081) > _1081:
                mem[_1059 + _1081 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_1059 + 168 len _1081 - 4]
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
                mem[_1059 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1059 + 196] == bool(mem[_1059 + 196])
                    if not mem[_1059 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, 0 / totalSupply, balanceOf[address(msg.sender)], 0);
        else:
            if not (0 / totalSupply) - mem[_1055]:
                _1069 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1069] = 26
                mem[_1069 + 32] = 'SafeMath: division by zero'
                _1082 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1082] = 30
                mem[_1082 + 32] = 'SafeMath: subtraction overflow'
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
                    _2026 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2044 = mem[_2026]
                    if mem[_2026] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2026]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2044
                    t = _2044
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2036 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2060 = mem[_2036]
                if (0 / totalSupply) + mem[_2036] < mem[_2036]:
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2964 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2964] < (0 / totalSupply) + _2060:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _2899 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0 / totalSupply
                    _2911 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2899 + 100] = 32
                    mem[_2899 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2963 = mem[_2911]
                    mem[_2899 + 164 len ceil32(mem[_2911])] = mem[_2911 + 32 len ceil32(mem[_2911])]
                    if ceil32(_2963) > _2963:
                        mem[_2899 + _2963 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2899 + 168 len _2963 - 4]
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
                        mem[_2899 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2899 + 196] == bool(mem[_2899 + 196])
                            if not mem[_2899 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2927 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0 / totalSupply
                    _2938 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2927 + 100] = 32
                    mem[_2927 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3000 = mem[_2938]
                    mem[_2927 + 164 len ceil32(mem[_2938])] = mem[_2938 + 32 len ceil32(mem[_2938])]
                    if ceil32(_3000) > _3000:
                        mem[_2927 + _3000 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2927 + 168 len _3000 - 4]
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
                        mem[_2927 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2927 + 196] == bool(mem[_2927 + 196])
                            if not mem[_2927 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, 0 / totalSupply, balanceOf[address(msg.sender)], 0);
            else:
                if (0 / totalSupply * withdrawalFee) - (mem[_1055] * withdrawalFee) / (0 / totalSupply) - mem[_1055] != withdrawalFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1071 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1071] = 26
                mem[_1071 + 32] = 'SafeMath: division by zero'
                _1087 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1087] = 30
                mem[_1087 + 32] = 'SafeMath: subtraction overflow'
                if (0 / totalSupply * withdrawalFee) - (_1057 * withdrawalFee) / 10000 > 0 / totalSupply:
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
                    _2024 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2043 = mem[_2024]
                    if mem[_2024] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2024]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2043
                    t = _2043
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2035 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2059 = mem[_2035]
                if (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1057 * withdrawalFee) / 10000) + mem[_2035] < mem[_2035]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1057 * withdrawalFee) / 10000)
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2962 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2962] < (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1057 * withdrawalFee) / 10000) + _2059:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _2897 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1057 * withdrawalFee) / 10000)
                    _2909 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2897 + 100] = 32
                    mem[_2897 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2961 = mem[_2909]
                    mem[_2897 + 164 len ceil32(mem[_2909])] = mem[_2909 + 32 len ceil32(mem[_2909])]
                    if ceil32(_2961) > _2961:
                        mem[_2897 + _2961 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2897 + 168 len _2961 - 4]
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
                        mem[_2897 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2897 + 196] == bool(mem[_2897 + 196])
                            if not mem[_2897 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2925 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1057 * withdrawalFee) / 10000)
                    _2935 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2925 + 100] = 32
                    mem[_2925 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2998 = mem[_2935]
                    mem[_2925 + 164 len ceil32(mem[_2935])] = mem[_2935 + 32 len ceil32(mem[_2935])]
                    if ceil32(_2998) > _2998:
                        mem[_2925 + _2998 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2925 + 168 len _2998 - 4]
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
                        mem[_2925 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2925 + 196] == bool(mem[_2925 + 196])
                            if not mem[_2925 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1057 * withdrawalFee) / 10000), balanceOf[address(msg.sender)], (0 / totalSupply * withdrawalFee) - (_1057 * withdrawalFee) / 10000);
    else:
        if balanceOf[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: multiplication overflow'
        _995 = mem[64]
        mem[64] = mem[64] + 64
        mem[_995] = 26
        mem[_995 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _1013 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1013] = 34
        mem[_1013 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_1013 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] = 0
        _1030 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1030] = 30
        mem[_1030 + 32] = 'SafeMath: subtraction overflow'
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
        _1056 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1058 = mem[_1056]
        if balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply <= mem[_1056]:
            _1060 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
            _1063 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_1060 + 100] = 32
            mem[_1060 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _1083 = mem[_1063]
            mem[_1060 + 164 len ceil32(mem[_1063])] = mem[_1063 + 32 len ceil32(mem[_1063])]
            if ceil32(_1083) > _1083:
                mem[_1060 + _1083 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_1060 + 168 len _1083 - 4]
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
                mem[_1060 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1060 + 196] == bool(mem[_1060 + 196])
                    if not mem[_1060 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, balanceOf[address(msg.sender)], 0);
        else:
            if not (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - mem[_1056]:
                _1070 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1070] = 26
                mem[_1070 + 32] = 'SafeMath: division by zero'
                _1084 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1084] = 30
                mem[_1084 + 32] = 'SafeMath: subtraction overflow'
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
                    _2017 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2040 = mem[_2017]
                    if mem[_2017] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2017]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2040
                    t = _2040
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2033 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2052 = mem[_2033]
                if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) + mem[_2033] < mem[_2033]:
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2960 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2960] < (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) + _2052:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _2891 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
                    _2907 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2891 + 100] = 32
                    mem[_2891 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2959 = mem[_2907]
                    mem[_2891 + 164 len ceil32(mem[_2907])] = mem[_2907 + 32 len ceil32(mem[_2907])]
                    if ceil32(_2959) > _2959:
                        mem[_2891 + _2959 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2891 + 168 len _2959 - 4]
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
                        mem[_2891 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2891 + 196] == bool(mem[_2891 + 196])
                            if not mem[_2891 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2923 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply
                    _2932 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2923 + 100] = 32
                    mem[_2923 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2996 = mem[_2932]
                    mem[_2923 + 164 len ceil32(mem[_2932])] = mem[_2932 + 32 len ceil32(mem[_2932])]
                    if ceil32(_2996) > _2996:
                        mem[_2923 + _2996 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2923 + 168 len _2996 - 4]
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
                        mem[_2923 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2923 + 196] == bool(mem[_2923 + 196])
                            if not mem[_2923 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply, balanceOf[address(msg.sender)], 0);
            else:
                if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (mem[_1056] * withdrawalFee) / (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - mem[_1056] != withdrawalFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1073 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1073] = 26
                mem[_1073 + 32] = 'SafeMath: division by zero'
                _1090 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1090] = 30
                mem[_1090 + 32] = 'SafeMath: subtraction overflow'
                if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1058 * withdrawalFee) / 10000 > balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply:
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
                    _2015 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2039 = mem[_2015]
                    if mem[_2015] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2015]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2039
                    t = _2039
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2032 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2051 = mem[_2032]
                if (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1058 * withdrawalFee) / 10000) + mem[_2032] < mem[_2032]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1058 * withdrawalFee) / 10000)
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2958 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2958] < (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1058 * withdrawalFee) / 10000) + _2051:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _2889 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1058 * withdrawalFee) / 10000)
                    _2905 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2889 + 100] = 32
                    mem[_2889 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2957 = mem[_2905]
                    mem[_2889 + 164 len ceil32(mem[_2905])] = mem[_2905 + 32 len ceil32(mem[_2905])]
                    if ceil32(_2957) > _2957:
                        mem[_2889 + _2957 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2889 + 168 len _2957 - 4]
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
                        mem[_2889 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2889 + 196] == bool(mem[_2889 + 196])
                            if not mem[_2889 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2921 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1058 * withdrawalFee) / 10000)
                    _2929 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_2921 + 100] = 32
                    mem[_2921 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _2994 = mem[_2929]
                    mem[_2921 + 164 len ceil32(mem[_2929])] = mem[_2929 + 32 len ceil32(mem[_2929])]
                    if ceil32(_2994) > _2994:
                        mem[_2921 + _2994 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_2921 + 168 len _2994 - 4]
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
                        mem[_2921 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2921 + 196] == bool(mem[_2921 + 196])
                            if not mem[_2921 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply) - ((balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1058 * withdrawalFee) / 10000), balanceOf[address(msg.sender)], (balanceOf[address(msg.sender)] * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1058 * withdrawalFee) / 10000);
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
            _805 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _811 = mem[_805]
            if mem[_805] <= t:
                idx = idx + 1
                s = s
                t = mem[_805]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _811
            t = _811
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _808 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _814 = mem[_808]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _826 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _829 = mem[_826]
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
            _1592 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1603 = mem[_1592]
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1612 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not _1603:
                _1659 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1659] = 26
                mem[_1659 + 32] = 'SafeMath: division by zero'
            else:
                if mem[_1612] * _1603 / _1603 != mem[_1612]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1668] = 26
                mem[_1668 + 32] = 'SafeMath: division by zero'
            idx = idx + 1
            continue 
        if not _829:
            _1591 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1591] = 26
            mem[_1591 + 32] = 'SafeMath: division by zero'
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
                _2377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2389 = mem[_2377]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2437 = mem[_2419]
                if not _2389:
                    _2465 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2465] = 26
                    mem[_2465 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2542 = mem[_2521]
                    mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    t = _2542
                    continue 
                if mem[_2419] * _2389 / _2389 != mem[_2419]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2472 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2472] = 26
                mem[_2472 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= _2437 * _2389 / 10^18:
                    _2532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2553 = mem[_2532]
                    mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    t = _2553
                    continue 
                _2541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2563 = mem[_2541]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2601 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2621 = mem[_2601]
                if not _2563:
                    _2641 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2641] = 26
                    mem[_2641 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_2703]:
                        _2755 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2755] = 26
                        mem[_2755 + 32] = 'SafeMath: division by zero'
                        _2805 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2805 + 68] = mem[idx + _2755 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2805 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2805 + -mem[64] + 100
                    if 0 / mem[_2703]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2777 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2777] = 26
                    mem[_2777 + 32] = 'SafeMath: division by zero'
                    _2831 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2831 + 68] = mem[idx + _2777 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2831 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2831 + -mem[64] + 100
                if mem[_2601] * _2563 / _2563 != mem[_2601]:
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
                _2712 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_2712]:
                    _2776 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2776] = 26
                    mem[_2776 + 32] = 'SafeMath: division by zero'
                    if _2621 * _2563 / 10^18:
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = 0 / _2621 * _2563 / 10^18
                        continue 
                    _2830 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2830 + 68] = mem[idx + _2776 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2830 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2830 + -mem[64] + 100
                if 0 / mem[_2712]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2803] = 26
                mem[_2803 + 32] = 'SafeMath: division by zero'
                if _2621 * _2563 / 10^18:
                    mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    t = 0 / _2621 * _2563 / 10^18
                    continue 
                _2855 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2855 + 68] = mem[idx + _2803 + 32]
                    idx = idx + 32
                    continue 
                mem[_2855 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2855 + -mem[64] + 100
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2352 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _814 > mem[_2352]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(address(routerAddress))
            call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args address(s), mem[_2352] - _814, address(this.address), block.timestamp + 5
        else:
            if sub_3ef5a13a * _829 / _829 != sub_3ef5a13a:
                revert with 0, 'SafeMath: multiplication overflow'
            _1597 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1597] = 26
            mem[_1597 + 32] = 'SafeMath: division by zero'
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
                _2375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2387 = mem[_2375]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2435 = mem[_2417]
                if not _2387:
                    _2464 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2464] = 26
                    mem[_2464 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_3ef5a13a * _829 / 10000 >= 0:
                        _2519 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2540 = mem[_2519]
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = _2540
                        continue 
                    _2531 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2552 = mem[_2531]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2612 = mem[_2591]
                    if not _2552:
                        _2630 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2630] = 26
                        mem[_2630 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2693 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_2693]:
                            _2739 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2739] = 26
                            mem[_2739 + 32] = 'SafeMath: division by zero'
                            _2775 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2775 + 68] = mem[idx + _2739 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2775 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2775 + -mem[64] + 100
                        if sub_3ef5a13a * _829 / 10000 * mem[_2693] / mem[_2693] != sub_3ef5a13a * _829 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2752 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2752] = 26
                        mem[_2752 + 32] = 'SafeMath: division by zero'
                        _2801 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2801 + 68] = mem[idx + _2752 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2801 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2801 + -mem[64] + 100
                    if mem[_2591] * _2552 / _2552 != mem[_2591]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2639 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2639] = 26
                    mem[_2639 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2702 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2720 = mem[_2702]
                    if not mem[_2702]:
                        _2751 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2751] = 26
                        mem[_2751 + 32] = 'SafeMath: division by zero'
                        if _2612 * _2552 / 10^18:
                            mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = 0 / _2612 * _2552 / 10^18
                            continue 
                        _2800 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2800 + 68] = mem[idx + _2751 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2800 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2800 + -mem[64] + 100
                    if sub_3ef5a13a * _829 / 10000 * mem[_2702] / mem[_2702] != sub_3ef5a13a * _829 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2773 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2773] = 26
                    mem[_2773 + 32] = 'SafeMath: division by zero'
                    if _2612 * _2552 / 10^18:
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = sub_3ef5a13a * _829 / 10000 * _2720 / _2612 * _2552 / 10^18
                        continue 
                    _2827 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2827 + 68] = mem[idx + _2773 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2827 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2827 + -mem[64] + 100
                if mem[_2417] * _2387 / _2387 != mem[_2417]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2470 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2470] = 26
                mem[_2470 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_3ef5a13a * _829 / 10000 >= _2435 * _2387 / 10^18:
                    _2530 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2551 = mem[_2530]
                    mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    t = _2551
                    continue 
                _2539 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2560 = mem[_2539]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2599 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2620 = mem[_2599]
                if not _2560:
                    _2638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2638] = 26
                    mem[_2638 + 32] = 'SafeMath: division by zero'
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
                    if not mem[_2701]:
                        _2750 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2750] = 26
                        mem[_2750 + 32] = 'SafeMath: division by zero'
                        _2799 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2799 + 68] = mem[idx + _2750 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2799 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2799 + -mem[64] + 100
                    if sub_3ef5a13a * _829 / 10000 * mem[_2701] / mem[_2701] != sub_3ef5a13a * _829 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2771 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2771] = 26
                    mem[_2771 + 32] = 'SafeMath: division by zero'
                    _2825 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2825 + 68] = mem[idx + _2771 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2825 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2825 + -mem[64] + 100
                if mem[_2599] * _2560 / _2560 != mem[_2599]:
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
                _2710 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2728 = mem[_2710]
                if not mem[_2710]:
                    _2770 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2770] = 26
                    mem[_2770 + 32] = 'SafeMath: division by zero'
                    if _2620 * _2560 / 10^18:
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = 0 / _2620 * _2560 / 10^18
                        continue 
                    _2824 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2824 + 68] = mem[idx + _2770 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2824 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2824 + -mem[64] + 100
                if sub_3ef5a13a * _829 / 10000 * mem[_2710] / mem[_2710] != sub_3ef5a13a * _829 / 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2797 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2797] = 26
                mem[_2797 + 32] = 'SafeMath: division by zero'
                if _2620 * _2560 / 10^18:
                    mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    t = sub_3ef5a13a * _829 / 10000 * _2728 / _2620 * _2560 / 10^18
                    continue 
                _2851 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2851 + 68] = mem[idx + _2797 + 32]
                    idx = idx + 32
                    continue 
                mem[_2851 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2851 + -mem[64] + 100
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2350 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _814 > mem[_2350]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(address(routerAddress))
            call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args address(s), mem[_2350] - _814, address(this.address), block.timestamp + 5
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
                _806 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _812 = mem[_806]
                if mem[_806] <= t:
                    idx = idx + 1
                    s = s
                    t = mem[_806]
                    t = t
                    continue 
                require idx < sub_0658f495.length
                mem[0] = 24
                idx = idx + 1
                s = sub_0658f495[idx]
                t = _812
                t = _812
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _809 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _815 = mem[_809]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _827 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _830 = mem[_827]
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
                _1594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1604 = mem[_1594]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1613 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _1604:
                    _1662 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1662] = 26
                    mem[_1662 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_1613] * _1604 / _1604 != mem[_1613]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1672] = 26
                    mem[_1672 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
            if not _830:
                _1593 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1593] = 26
                mem[_1593 + 32] = 'SafeMath: division by zero'
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
                    _2381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2393 = mem[_2381]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2441 = mem[_2423]
                    if not _2393:
                        _2467 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2467] = 26
                        mem[_2467 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2525 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2546 = mem[_2525]
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = _2546
                        continue 
                    if mem[_2423] * _2393 / _2393 != mem[_2423]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2476] = 26
                    mem[_2476 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= _2441 * _2393 / 10^18:
                        _2535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2556 = mem[_2535]
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = _2556
                        continue 
                    _2545 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2567 = mem[_2545]
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
                    if not _2567:
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
                        _2706 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_2706]:
                            _2762 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2762] = 26
                            mem[_2762 + 32] = 'SafeMath: division by zero'
                            _2814 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2814 + 68] = mem[idx + _2762 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2814 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2814 + -mem[64] + 100
                        if 0 / mem[_2706]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2786 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2786] = 26
                        mem[_2786 + 32] = 'SafeMath: division by zero'
                        _2840 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2840 + 68] = mem[idx + _2786 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2840 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2840 + -mem[64] + 100
                    if mem[_2605] * _2567 / _2567 != mem[_2605]:
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
                    _2715 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_2715]:
                        _2785 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2785] = 26
                        mem[_2785 + 32] = 'SafeMath: division by zero'
                        if _2623 * _2567 / 10^18:
                            mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = 0 / _2623 * _2567 / 10^18
                            continue 
                        _2839 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2839 + 68] = mem[idx + _2785 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2839 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2839 + -mem[64] + 100
                    if 0 / mem[_2715]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2812] = 26
                    mem[_2812 + 32] = 'SafeMath: division by zero'
                    if _2623 * _2567 / 10^18:
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = 0 / _2623 * _2567 / 10^18
                        continue 
                    _2862 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2862 + 68] = mem[idx + _2812 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2862 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2862 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2356 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _815 > mem[_2356]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_2356] - _815, address(this.address), block.timestamp + 5
            else:
                if sub_3ef5a13a * _830 / _830 != sub_3ef5a13a:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1599 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1599] = 26
                mem[_1599 + 32] = 'SafeMath: division by zero'
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
                    _2379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2391 = mem[_2379]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2421 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2439 = mem[_2421]
                    if not _2391:
                        _2466 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2466] = 26
                        mem[_2466 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_3ef5a13a * _830 / 10000 >= 0:
                            _2523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2544 = mem[_2523]
                            mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = _2544
                            continue 
                        _2534 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2555 = mem[_2534]
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].exchangeRateLast() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2594 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2615 = mem[_2594]
                        if not _2555:
                            _2633 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2633] = 26
                            mem[_2633 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            staticcall sub_0658f495[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2696 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_2696]:
                                _2743 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2743] = 26
                                mem[_2743 + 32] = 'SafeMath: division by zero'
                                _2784 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2784 + 68] = mem[idx + _2743 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2784 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2784 + -mem[64] + 100
                            if sub_3ef5a13a * _830 / 10000 * mem[_2696] / mem[_2696] != sub_3ef5a13a * _830 / 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2759 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2759] = 26
                            mem[_2759 + 32] = 'SafeMath: division by zero'
                            _2810 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2810 + 68] = mem[idx + _2759 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2810 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2810 + -mem[64] + 100
                        if mem[_2594] * _2555 / _2555 != mem[_2594]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2643 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2643] = 26
                        mem[_2643 + 32] = 'SafeMath: division by zero'
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
                        _2723 = mem[_2705]
                        if not mem[_2705]:
                            _2758 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2758] = 26
                            mem[_2758 + 32] = 'SafeMath: division by zero'
                            if _2615 * _2555 / 10^18:
                                mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_0658f495[idx])
                                call sub_0658f495[idx].redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                t = 0 / _2615 * _2555 / 10^18
                                continue 
                            _2809 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2809 + 68] = mem[idx + _2758 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2809 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2809 + -mem[64] + 100
                        if sub_3ef5a13a * _830 / 10000 * mem[_2705] / mem[_2705] != sub_3ef5a13a * _830 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2782 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2782] = 26
                        mem[_2782 + 32] = 'SafeMath: division by zero'
                        if _2615 * _2555 / 10^18:
                            mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = sub_3ef5a13a * _830 / 10000 * _2723 / _2615 * _2555 / 10^18
                            continue 
                        _2836 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2836 + 68] = mem[idx + _2782 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2836 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2836 + -mem[64] + 100
                    if mem[_2421] * _2391 / _2391 != mem[_2421]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2474 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2474] = 26
                    mem[_2474 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_3ef5a13a * _830 / 10000 >= _2439 * _2391 / 10^18:
                        _2533 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2554 = mem[_2533]
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = _2554
                        continue 
                    _2543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2564 = mem[_2543]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2603 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2622 = mem[_2603]
                    if not _2564:
                        _2642 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2642] = 26
                        mem[_2642 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2704 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_2704]:
                            _2757 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2757] = 26
                            mem[_2757 + 32] = 'SafeMath: division by zero'
                            _2808 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2808 + 68] = mem[idx + _2757 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2808 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2808 + -mem[64] + 100
                        if sub_3ef5a13a * _830 / 10000 * mem[_2704] / mem[_2704] != sub_3ef5a13a * _830 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2780 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2780] = 26
                        mem[_2780 + 32] = 'SafeMath: division by zero'
                        _2834 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2834 + 68] = mem[idx + _2780 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2834 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2834 + -mem[64] + 100
                    if mem[_2603] * _2564 / _2564 != mem[_2603]:
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
                    _2713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2730 = mem[_2713]
                    if not mem[_2713]:
                        _2779 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2779] = 26
                        mem[_2779 + 32] = 'SafeMath: division by zero'
                        if _2622 * _2564 / 10^18:
                            mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = 0 / _2622 * _2564 / 10^18
                            continue 
                        _2833 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2833 + 68] = mem[idx + _2779 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2833 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2833 + -mem[64] + 100
                    if sub_3ef5a13a * _830 / 10000 * mem[_2713] / mem[_2713] != sub_3ef5a13a * _830 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2806 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2806] = 26
                    mem[_2806 + 32] = 'SafeMath: division by zero'
                    if _2622 * _2564 / 10^18:
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = sub_3ef5a13a * _830 / 10000 * _2730 / _2622 * _2564 / 10^18
                        continue 
                    _2858 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2858 + 68] = mem[idx + _2806 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2858 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2858 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _815 > mem[_2354]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_2354] - _815, address(this.address), block.timestamp + 5
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
                _807 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _813 = mem[_807]
                if mem[_807] <= t:
                    idx = idx + 1
                    s = s
                    t = mem[_807]
                    t = t
                    continue 
                require idx < sub_0658f495.length
                mem[0] = 24
                idx = idx + 1
                s = sub_0658f495[idx]
                t = _813
                t = _813
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _810 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _816 = mem[_810]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _828 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _831 = mem[_828]
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
                _1596 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1605 = mem[_1596]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _1605:
                    _1665 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1665] = 26
                    mem[_1665 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_1614] * _1605 / _1605 != mem[_1614]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1676 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1676] = 26
                    mem[_1676 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
            if not _831:
                _1595 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1595] = 26
                mem[_1595 + 32] = 'SafeMath: division by zero'
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
                    _2385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2397 = mem[_2385]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2445 = mem[_2427]
                    if not _2397:
                        _2469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2469] = 26
                        mem[_2469 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2550 = mem[_2529]
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = _2550
                        continue 
                    if mem[_2427] * _2397 / _2397 != mem[_2427]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2480] = 26
                    mem[_2480 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= _2445 * _2397 / 10^18:
                        _2538 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2559 = mem[_2538]
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = _2559
                        continue 
                    _2549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2571 = mem[_2549]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2609 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2625 = mem[_2609]
                    if not _2571:
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
                        if not mem[_2709]:
                            _2769 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2769] = 26
                            mem[_2769 + 32] = 'SafeMath: division by zero'
                            _2823 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2823 + 68] = mem[idx + _2769 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2823 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2823 + -mem[64] + 100
                        if 0 / mem[_2709]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2795 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2795] = 26
                        mem[_2795 + 32] = 'SafeMath: division by zero'
                        _2849 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2849 + 68] = mem[idx + _2795 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2849 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2849 + -mem[64] + 100
                    if mem[_2609] * _2571 / _2571 != mem[_2609]:
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
                    _2718 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_2718]:
                        _2794 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2794] = 26
                        mem[_2794 + 32] = 'SafeMath: division by zero'
                        if _2625 * _2571 / 10^18:
                            mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = 0 / _2625 * _2571 / 10^18
                            continue 
                        _2848 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2848 + 68] = mem[idx + _2794 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2848 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2848 + -mem[64] + 100
                    if 0 / mem[_2718]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2821 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2821] = 26
                    mem[_2821 + 32] = 'SafeMath: division by zero'
                    if _2625 * _2571 / 10^18:
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = 0 / _2625 * _2571 / 10^18
                        continue 
                    _2869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2869 + 68] = mem[idx + _2821 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2869 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2869 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2360 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _816 > mem[_2360]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_2360] - _816, address(this.address), block.timestamp + 5
            else:
                if sub_3ef5a13a * _831 / _831 != sub_3ef5a13a:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1601] = 26
                mem[_1601 + 32] = 'SafeMath: division by zero'
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
                    _2383 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2395 = mem[_2383]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2443 = mem[_2425]
                    if not _2395:
                        _2468 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2468] = 26
                        mem[_2468 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_3ef5a13a * _831 / 10000 >= 0:
                            _2527 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2548 = mem[_2527]
                            mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = _2548
                            continue 
                        _2537 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2558 = mem[_2537]
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].exchangeRateLast() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2597 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2618 = mem[_2597]
                        if not _2558:
                            _2636 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2636] = 26
                            mem[_2636 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            staticcall sub_0658f495[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2699 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_2699]:
                                _2747 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2747] = 26
                                mem[_2747 + 32] = 'SafeMath: division by zero'
                                _2793 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2793 + 68] = mem[idx + _2747 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2793 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2793 + -mem[64] + 100
                            if sub_3ef5a13a * _831 / 10000 * mem[_2699] / mem[_2699] != sub_3ef5a13a * _831 / 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2766 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2766] = 26
                            mem[_2766 + 32] = 'SafeMath: division by zero'
                            _2819 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2819 + 68] = mem[idx + _2766 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2819 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2819 + -mem[64] + 100
                        if mem[_2597] * _2558 / _2558 != mem[_2597]:
                            revert with 0, 'SafeMath: multiplication overflow'
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
                        _2708 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2726 = mem[_2708]
                        if not mem[_2708]:
                            _2765 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2765] = 26
                            mem[_2765 + 32] = 'SafeMath: division by zero'
                            if _2618 * _2558 / 10^18:
                                mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_0658f495[idx])
                                call sub_0658f495[idx].redeem(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                t = 0 / _2618 * _2558 / 10^18
                                continue 
                            _2818 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2818 + 68] = mem[idx + _2765 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2818 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2818 + -mem[64] + 100
                        if sub_3ef5a13a * _831 / 10000 * mem[_2708] / mem[_2708] != sub_3ef5a13a * _831 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2791 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2791] = 26
                        mem[_2791 + 32] = 'SafeMath: division by zero'
                        if _2618 * _2558 / 10^18:
                            mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = sub_3ef5a13a * _831 / 10000 * _2726 / _2618 * _2558 / 10^18
                            continue 
                        _2845 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2845 + 68] = mem[idx + _2791 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2845 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2845 + -mem[64] + 100
                    if mem[_2425] * _2395 / _2395 != mem[_2425]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2478 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2478] = 26
                    mem[_2478 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_3ef5a13a * _831 / 10000 >= _2443 * _2395 / 10^18:
                        _2536 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2557 = mem[_2536]
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = _2557
                        continue 
                    _2547 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2568 = mem[_2547]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2607 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2624 = mem[_2607]
                    if not _2568:
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
                        _2707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_2707]:
                            _2764 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2764] = 26
                            mem[_2764 + 32] = 'SafeMath: division by zero'
                            _2817 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2817 + 68] = mem[idx + _2764 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2817 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2817 + -mem[64] + 100
                        if sub_3ef5a13a * _831 / 10000 * mem[_2707] / mem[_2707] != sub_3ef5a13a * _831 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2789 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2789] = 26
                        mem[_2789 + 32] = 'SafeMath: division by zero'
                        _2843 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2843 + 68] = mem[idx + _2789 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2843 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2843 + -mem[64] + 100
                    if mem[_2607] * _2568 / _2568 != mem[_2607]:
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
                    _2716 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2732 = mem[_2716]
                    if not mem[_2716]:
                        _2788 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2788] = 26
                        mem[_2788 + 32] = 'SafeMath: division by zero'
                        if _2624 * _2568 / 10^18:
                            mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            t = 0 / _2624 * _2568 / 10^18
                            continue 
                        _2842 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2842 + 68] = mem[idx + _2788 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2842 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2842 + -mem[64] + 100
                    if sub_3ef5a13a * _831 / 10000 * mem[_2716] / mem[_2716] != sub_3ef5a13a * _831 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2815 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2815] = 26
                    mem[_2815 + 32] = 'SafeMath: division by zero'
                    if _2624 * _2568 / 10^18:
                        mem[mem[64]] = 0x95a2251f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        t = sub_3ef5a13a * _831 / 10000 * _2732 / _2624 * _2568 / 10^18
                        continue 
                    _2865 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2865 + 68] = mem[idx + _2815 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2865 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2865 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _816 > mem[_2358]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_2358] - _816, address(this.address), block.timestamp + 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
