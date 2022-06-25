contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1)
#  - resetApprovals()
#  - withdrawAll()
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

function sub_39e3ad19(?) payable {
    mem[64] = 96
    if msg.sender == strategistAddress:
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
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _39 = mem[_37]
            mem[mem[64] + 4] = sub_0658f495[idx]
            mem[mem[64] + 36] = _39
            require ext_code.size(sub_0658f495[idx])
            call sub_0658f495[idx].0xa9059cbb with:
                 gas gas_remaining wei
                args sub_0658f495[idx], _39
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_45] == bool(mem[_45])
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_0658f495[idx])
            call sub_0658f495[idx].redeem(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_53] <= 0:
                revert with 0, 'Not enough returned'
            idx = idx + 1
            continue 
    else:
        require msg.sender == governanceAddress
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
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _40 = mem[_38]
            mem[mem[64] + 4] = sub_0658f495[idx]
            mem[mem[64] + 36] = _40
            require ext_code.size(sub_0658f495[idx])
            call sub_0658f495[idx].0xa9059cbb with:
                 gas gas_remaining wei
                args sub_0658f495[idx], _40
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _46 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_46] == bool(mem[_46])
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_0658f495[idx])
            call sub_0658f495[idx].redeem(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_54] <= 0:
                revert with 0, 'Not enough returned'
            idx = idx + 1
            continue 
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
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _107 = mem[_103]
            if mem[_103] <= t:
                idx = idx + 1
                s = s
                t = mem[_103]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _107
            t = _107
            continue 
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
        _109 = mem[_105]
        if arg1 + mem[_105] < mem[_105]:
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
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _206 = mem[_202]
            mem[mem[64] + 4] = sub_0658f495[idx]
            mem[mem[64] + 36] = _206
            require ext_code.size(sub_0658f495[idx])
            call sub_0658f495[idx].0xa9059cbb with:
                 gas gas_remaining wei
                args sub_0658f495[idx], _206
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_217] == bool(mem[_217])
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_0658f495[idx])
            call sub_0658f495[idx].redeem(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_233] <= 0:
                revert with 0, 'Not enough returned'
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _249 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_249] < arg1 + _109:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = 0
            continue 
        if t:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(s))
            staticcall address(s).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _195 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _199 = mem[_195]
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = _199
            require ext_code.size(address(s))
            call address(s).0xa9059cbb with:
                 gas gas_remaining wei
                args address(s), _199
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _211 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_211] == bool(mem[_211])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(s))
            call address(s).redeem(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _227 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_227] <= 0:
                revert with 0, 'Not enough returned'
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
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _108 = mem[_104]
            if mem[_104] <= t:
                idx = idx + 1
                s = s
                t = mem[_104]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _108
            t = _108
            continue 
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
        _110 = mem[_106]
        if arg1 + mem[_106] < mem[_106]:
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
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _208 = mem[_204]
            mem[mem[64] + 4] = sub_0658f495[idx]
            mem[mem[64] + 36] = _208
            require ext_code.size(sub_0658f495[idx])
            call sub_0658f495[idx].0xa9059cbb with:
                 gas gas_remaining wei
                args sub_0658f495[idx], _208
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_218] == bool(mem[_218])
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_0658f495[idx])
            call sub_0658f495[idx].redeem(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _234 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_234] <= 0:
                revert with 0, 'Not enough returned'
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _250 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_250] < arg1 + _110:
                idx = idx + 1
                t = t
                continue 
            idx = idx + 1
            t = 0
            continue 
        if t:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(s))
            staticcall address(s).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _200 = mem[_196]
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = _200
            require ext_code.size(address(s))
            call address(s).0xa9059cbb with:
                 gas gas_remaining wei
                args address(s), _200
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _212 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_212] == bool(mem[_212])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(s))
            call address(s).redeem(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _228 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_228] <= 0:
                revert with 0, 'Not enough returned'
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
        _1246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1249 = mem[_1246]
        require ext_code.size(sub_0658f495[idx])
        staticcall sub_0658f495[idx].exchangeRateLast() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not _1249:
            _1276 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1276] = 26
            mem[_1276 + 32] = 'SafeMath: division by zero'
        else:
            if mem[_1257] * _1249 / _1249 != mem[_1257]:
                revert with 0, 'SafeMath: multiplication overflow'
            _1280 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1280] = 26
            mem[_1280 + 32] = 'SafeMath: division by zero'
        idx = idx + 1
        continue 
    if not ext_call.return_data[0]:
        _1248 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1248] = 26
        mem[_1248 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _1264 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1264] = 34
        mem[_1264 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_1264 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= arg1
        _1284 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1284] = 30
        mem[_1284 + 32] = 'SafeMath: subtraction overflow'
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
        _1310 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1312 = mem[_1310]
        if 0 / totalSupply <= mem[_1310]:
            _1314 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0 / totalSupply
            _1316 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_1314 + 100] = 32
            mem[_1314 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _1336 = mem[_1316]
            mem[_1314 + 164 len ceil32(mem[_1316])] = mem[_1316 + 32 len ceil32(mem[_1316])]
            if ceil32(_1336) > _1336:
                mem[_1314 + _1336 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_1314 + 168 len _1336 - 4]
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
                mem[_1314 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1314 + 196] == bool(mem[_1314 + 196])
                    if not mem[_1314 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, 0 / totalSupply, arg1, 0);
        else:
            if not (0 / totalSupply) - mem[_1310]:
                _1324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1324] = 26
                mem[_1324 + 32] = 'SafeMath: division by zero'
                _1337 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1337] = 30
                mem[_1337 + 32] = 'SafeMath: subtraction overflow'
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
                    _2537 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2555 = mem[_2537]
                    if mem[_2537] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2537]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2555
                    t = _2555
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2547 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2571 = mem[_2547]
                if (0 / totalSupply) + mem[_2547] < mem[_2547]:
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3711 = mem[_3703]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _3711
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _3711
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3755 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3755] == bool(mem[_3755])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3839 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3839] <= 0:
                        revert with 0, 'Not enough returned'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4079 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4079] < (0 / totalSupply) + _2571:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3666 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0 / totalSupply
                    _3681 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3666 + 100] = 32
                    mem[_3666 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3738 = mem[_3681]
                    mem[_3666 + 164 len ceil32(mem[_3681])] = mem[_3681 + 32 len ceil32(mem[_3681])]
                    if ceil32(_3738) > _3738:
                        mem[_3666 + _3738 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3666 + 168 len _3738 - 4]
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
                        mem[_3666 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3666 + 196] == bool(mem[_3666 + 196])
                            if not mem[_3666 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(s))
                    staticcall address(s).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3683 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3695 = mem[_3683]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = _3695
                    require ext_code.size(address(s))
                    call address(s).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(s), _3695
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3731 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3731] == bool(mem[_3731])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3791 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3791] <= 0:
                        revert with 0, 'Not enough returned'
                    _3958 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0 / totalSupply
                    _4005 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3958 + 100] = 32
                    mem[_3958 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _4187 = mem[_4005]
                    mem[_3958 + 164 len ceil32(mem[_4005])] = mem[_4005 + 32 len ceil32(mem[_4005])]
                    if ceil32(_4187) > _4187:
                        mem[_3958 + _4187 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3958 + 168 len _4187 - 4]
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
                        mem[_3958 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3958 + 196] == bool(mem[_3958 + 196])
                            if not mem[_3958 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, 0 / totalSupply, arg1, 0);
            else:
                if (0 / totalSupply * withdrawalFee) - (mem[_1310] * withdrawalFee) / (0 / totalSupply) - mem[_1310] != withdrawalFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1326] = 26
                mem[_1326 + 32] = 'SafeMath: division by zero'
                _1342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1342] = 30
                mem[_1342 + 32] = 'SafeMath: subtraction overflow'
                if (0 / totalSupply * withdrawalFee) - (_1312 * withdrawalFee) / 10000 > 0 / totalSupply:
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
                    _2535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2554 = mem[_2535]
                    if mem[_2535] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2535]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2554
                    t = _2554
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2546 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2570 = mem[_2546]
                if (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1312 * withdrawalFee) / 10000) + mem[_2546] < mem[_2546]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1312 * withdrawalFee) / 10000)
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3701 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3709 = mem[_3701]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _3709
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _3709
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3754] == bool(mem[_3754])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3832 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3832] <= 0:
                        revert with 0, 'Not enough returned'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4072 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4072] < (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1312 * withdrawalFee) / 10000) + _2570:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3664 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1312 * withdrawalFee) / 10000)
                    _3678 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3664 + 100] = 32
                    mem[_3664 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3736 = mem[_3678]
                    mem[_3664 + 164 len ceil32(mem[_3678])] = mem[_3678 + 32 len ceil32(mem[_3678])]
                    if ceil32(_3736) > _3736:
                        mem[_3664 + _3736 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3664 + 168 len _3736 - 4]
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
                        mem[_3664 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3664 + 196] == bool(mem[_3664 + 196])
                            if not mem[_3664 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(s))
                    staticcall address(s).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3680 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3694 = mem[_3680]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = _3694
                    require ext_code.size(address(s))
                    call address(s).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(s), _3694
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3727 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3727] == bool(mem[_3727])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3788 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3788] <= 0:
                        revert with 0, 'Not enough returned'
                    _3950 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1312 * withdrawalFee) / 10000)
                    _3998 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3950 + 100] = 32
                    mem[_3950 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _4184 = mem[_3998]
                    mem[_3950 + 164 len ceil32(mem[_3998])] = mem[_3998 + 32 len ceil32(mem[_3998])]
                    if ceil32(_4184) > _4184:
                        mem[_3950 + _4184 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3950 + 168 len _4184 - 4]
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
                        mem[_3950 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3950 + 196] == bool(mem[_3950 + 196])
                            if not mem[_3950 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, (0 / totalSupply) - ((0 / totalSupply * withdrawalFee) - (_1312 * withdrawalFee) / 10000), arg1, (0 / totalSupply * withdrawalFee) - (_1312 * withdrawalFee) / 10000);
    else:
        if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        _1250 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1250] = 26
        mem[_1250 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        _1268 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1268] = 34
        mem[_1268 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(msg.sender)]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_1268 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= arg1
        _1285 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1285] = 30
        mem[_1285 + 32] = 'SafeMath: subtraction overflow'
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
        _1311 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1313 = mem[_1311]
        if arg1 * ext_call.return_data[0] / totalSupply <= mem[_1311]:
            _1315 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg1 * ext_call.return_data[0] / totalSupply
            _1318 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_1315 + 100] = 32
            mem[_1315 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            _1338 = mem[_1318]
            mem[_1315 + 164 len ceil32(mem[_1318])] = mem[_1318 + 32 len ceil32(mem[_1318])]
            if ceil32(_1338) > _1338:
                mem[_1315 + _1338 + 164] = 0
            call wantAddress with:
                 gas gas_remaining wei
                args mem[_1315 + 168 len _1338 - 4]
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
                mem[_1315 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1315 + 196] == bool(mem[_1315 + 196])
                    if not mem[_1315 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawal(msg.sender, arg1 * ext_call.return_data[0] / totalSupply, arg1, 0);
        else:
            if not (arg1 * ext_call.return_data[0] / totalSupply) - mem[_1311]:
                _1325 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1325] = 26
                mem[_1325 + 32] = 'SafeMath: division by zero'
                _1339 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1339] = 30
                mem[_1339 + 32] = 'SafeMath: subtraction overflow'
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
                    _2528 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2551 = mem[_2528]
                    if mem[_2528] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2528]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2551
                    t = _2551
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2563 = mem[_2544]
                if (arg1 * ext_call.return_data[0] / totalSupply) + mem[_2544] < mem[_2544]:
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3699 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3707 = mem[_3699]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _3707
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _3707
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3753] == bool(mem[_3753])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3825 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3825] <= 0:
                        revert with 0, 'Not enough returned'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4065 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4065] < (arg1 * ext_call.return_data[0] / totalSupply) + _2563:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3658 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1 * ext_call.return_data[0] / totalSupply
                    _3675 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3658 + 100] = 32
                    mem[_3658 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3734 = mem[_3675]
                    mem[_3658 + 164 len ceil32(mem[_3675])] = mem[_3675 + 32 len ceil32(mem[_3675])]
                    if ceil32(_3734) > _3734:
                        mem[_3658 + _3734 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3658 + 168 len _3734 - 4]
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
                        mem[_3658 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3658 + 196] == bool(mem[_3658 + 196])
                            if not mem[_3658 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(s))
                    staticcall address(s).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3677 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3693 = mem[_3677]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = _3693
                    require ext_code.size(address(s))
                    call address(s).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(s), _3693
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3723 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3723] == bool(mem[_3723])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3785 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3785] <= 0:
                        revert with 0, 'Not enough returned'
                    _3942 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg1 * ext_call.return_data[0] / totalSupply
                    _3991 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3942 + 100] = 32
                    mem[_3942 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _4181 = mem[_3991]
                    mem[_3942 + 164 len ceil32(mem[_3991])] = mem[_3991 + 32 len ceil32(mem[_3991])]
                    if ceil32(_4181) > _4181:
                        mem[_3942 + _4181 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3942 + 168 len _4181 - 4]
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
                        mem[_3942 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3942 + 196] == bool(mem[_3942 + 196])
                            if not mem[_3942 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, arg1 * ext_call.return_data[0] / totalSupply, arg1, 0);
            else:
                if (arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (mem[_1311] * withdrawalFee) / (arg1 * ext_call.return_data[0] / totalSupply) - mem[_1311] != withdrawalFee:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1328 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1328] = 26
                mem[_1328 + 32] = 'SafeMath: division by zero'
                _1345 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1345] = 30
                mem[_1345 + 32] = 'SafeMath: subtraction overflow'
                if (arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1313 * withdrawalFee) / 10000 > arg1 * ext_call.return_data[0] / totalSupply:
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
                    _2526 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2550 = mem[_2526]
                    if mem[_2526] <= t:
                        idx = idx + 1
                        s = s
                        t = mem[_2526]
                        t = t
                        continue 
                    require idx < sub_0658f495.length
                    mem[0] = 24
                    idx = idx + 1
                    s = sub_0658f495[idx]
                    t = _2550
                    t = _2550
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2543 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2562 = mem[_2543]
                if (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1313 * withdrawalFee) / 10000) + mem[_2543] < mem[_2543]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = 0
                t = (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1313 * withdrawalFee) / 10000)
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
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3697 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3705 = mem[_3697]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _3705
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _3705
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3752 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3752] == bool(mem[_3752])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3818 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3818] <= 0:
                        revert with 0, 'Not enough returned'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4058 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4058] < (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1313 * withdrawalFee) / 10000) + _2562:
                        idx = idx + 1
                        t = t
                        continue 
                    idx = idx + 1
                    t = 0
                    continue 
                if not t:
                    _3656 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1313 * withdrawalFee) / 10000)
                    _3672 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3656 + 100] = 32
                    mem[_3656 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _3732 = mem[_3672]
                    mem[_3656 + 164 len ceil32(mem[_3672])] = mem[_3672 + 32 len ceil32(mem[_3672])]
                    if ceil32(_3732) > _3732:
                        mem[_3656 + _3732 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3656 + 168 len _3732 - 4]
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
                        mem[_3656 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3656 + 196] == bool(mem[_3656 + 196])
                            if not mem[_3656 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(s))
                    staticcall address(s).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3674 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3692 = mem[_3674]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = _3692
                    require ext_code.size(address(s))
                    call address(s).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(s), _3692
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3719 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3719] == bool(mem[_3719])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(s))
                    call address(s).redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3782 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3782] <= 0:
                        revert with 0, 'Not enough returned'
                    _3934 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1313 * withdrawalFee) / 10000)
                    _3984 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = mem[64] + 164
                    mem[_3934 + 100] = 32
                    mem[_3934 + 132] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _4178 = mem[_3984]
                    mem[_3934 + 164 len ceil32(mem[_3984])] = mem[_3984 + 32 len ceil32(mem[_3984])]
                    if ceil32(_4178) > _4178:
                        mem[_3934 + _4178 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_3934 + 168 len _4178 - 4]
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
                        mem[_3934 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3934 + 196] == bool(mem[_3934 + 196])
                            if not mem[_3934 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawal(msg.sender, (arg1 * ext_call.return_data[0] / totalSupply) - ((arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1313 * withdrawalFee) / 10000), arg1, (arg1 * ext_call.return_data[0] / totalSupply * withdrawalFee) - (_1313 * withdrawalFee) / 10000);
    return 0
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
            _1165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1171 = mem[_1165]
            if mem[_1165] <= t:
                idx = idx + 1
                s = s
                t = mem[_1165]
                t = t
                continue 
            require idx < sub_0658f495.length
            mem[0] = 24
            idx = idx + 1
            s = sub_0658f495[idx]
            t = _1171
            t = _1171
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1174 = mem[_1168]
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1189 = mem[_1186]
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
            _2312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2323 = mem[_2312]
            require ext_code.size(sub_0658f495[idx])
            staticcall sub_0658f495[idx].exchangeRateLast() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2332 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not _2323:
                _2379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2379] = 26
                mem[_2379 + 32] = 'SafeMath: division by zero'
            else:
                if mem[_2332] * _2323 / _2323 != mem[_2332]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2388 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2388] = 26
                mem[_2388 + 32] = 'SafeMath: division by zero'
            idx = idx + 1
            continue 
        if not _1189:
            _2311 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2311] = 26
            mem[_2311 + 32] = 'SafeMath: division by zero'
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
                _3457 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3469 = mem[_3457]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3517 = mem[_3499]
                if not _3469:
                    _3545 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3545] = 26
                    mem[_3545 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3601 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3622 = mem[_3601]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3703 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3719 = mem[_3703]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _3719
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _3719
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3783 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3783] == bool(mem[_3783])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3863 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3863] <= 0:
                        revert with 0, 'Not enough returned'
                    idx = idx + 1
                    t = _3622
                    continue 
                if mem[_3499] * _3469 / _3469 != mem[_3499]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3552 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3552] = 26
                mem[_3552 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= _3517 * _3469 / 10^18:
                    _3612 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3633 = mem[_3612]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3726 = mem[_3713]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _3726
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _3726
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3797 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3797] == bool(mem[_3797])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3878 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3878] <= 0:
                        revert with 0, 'Not enough returned'
                    idx = idx + 1
                    t = _3633
                    continue 
                _3621 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3643 = mem[_3621]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3681 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3702 = mem[_3681]
                if not _3643:
                    _3764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3764] = 26
                    mem[_3764 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3892]:
                        _3979 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3979] = 26
                        mem[_3979 + 32] = 'SafeMath: division by zero'
                        _4029 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4029 + 68] = mem[idx + _3979 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4029 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4029 + -mem[64] + 100
                    if 0 / mem[_3892]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4001 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4001] = 26
                    mem[_4001 + 32] = 'SafeMath: division by zero'
                    _4055 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4055 + 68] = mem[idx + _4001 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4055 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4055 + -mem[64] + 100
                if mem[_3681] * _3643 / _3643 != mem[_3681]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3781 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3781] = 26
                mem[_3781 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3907 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_3907]:
                    _4000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4000] = 26
                    mem[_4000 + 32] = 'SafeMath: division by zero'
                    if not _3702 * _3643 / 10^18:
                        _4054 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4054 + 68] = mem[idx + _4000 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4054 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4054 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4270 = mem[_4247]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _4270
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _4270
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4323 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4323] == bool(mem[_4323])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4395 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4395] <= 0:
                        revert with 0, 'Not enough returned'
                else:
                    if 0 / mem[_3907]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4027 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4027] = 26
                    mem[_4027 + 32] = 'SafeMath: division by zero'
                    if not _3702 * _3643 / 10^18:
                        _4079 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4079 + 68] = mem[idx + _4027 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4079 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4079 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4282 = mem[_4260]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _4282
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _4282
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4332 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4332] == bool(mem[_4332])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4404 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4404] <= 0:
                        revert with 0, 'Not enough returned'
                idx = idx + 1
                t = 0 / _3702 * _3643 / 10^18
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3432 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _1174 > mem[_3432]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(address(routerAddress))
            call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args address(s), mem[_3432] - _1174, address(this.address), block.timestamp + 5
        else:
            if sub_3ef5a13a * _1189 / _1189 != sub_3ef5a13a:
                revert with 0, 'SafeMath: multiplication overflow'
            _2317 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2317] = 26
            mem[_2317 + 32] = 'SafeMath: division by zero'
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
                _3455 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3467 = mem[_3455]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3497 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3515 = mem[_3497]
                if not _3467:
                    _3544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3544] = 26
                    mem[_3544 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_3ef5a13a * _1189 / 10000 >= 0:
                        _3599 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3620 = mem[_3599]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3701 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3718 = mem[_3701]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _3718
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _3718
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3780 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3780] == bool(mem[_3780])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3861 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3861] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = _3620
                        continue 
                    _3611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3632 = mem[_3611]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3671 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3692 = mem[_3671]
                    if not _3632:
                        _3746 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3746] = 26
                        mem[_3746 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3876 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_3876]:
                            _3963 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3963] = 26
                            mem[_3963 + 32] = 'SafeMath: division by zero'
                            _3999 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _3999 + 68] = mem[idx + _3963 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3999 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3999 + -mem[64] + 100
                        if sub_3ef5a13a * _1189 / 10000 * mem[_3876] / mem[_3876] != sub_3ef5a13a * _1189 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3976 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3976] = 26
                        mem[_3976 + 32] = 'SafeMath: division by zero'
                        _4025 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4025 + 68] = mem[idx + _3976 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4025 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4025 + -mem[64] + 100
                    if mem[_3671] * _3632 / _3632 != mem[_3671]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3762 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3762] = 26
                    mem[_3762 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3890 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3920 = mem[_3890]
                    if not mem[_3890]:
                        _3975 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3975] = 26
                        mem[_3975 + 32] = 'SafeMath: division by zero'
                        if not _3692 * _3632 / 10^18:
                            _4024 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4024 + 68] = mem[idx + _3975 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4024 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4024 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4218 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4259 = mem[_4218]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _4259
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _4259
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4313 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4313] == bool(mem[_4313])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4385] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = 0 / _3692 * _3632 / 10^18
                        continue 
                    if sub_3ef5a13a * _1189 / 10000 * mem[_3890] / mem[_3890] != sub_3ef5a13a * _1189 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3997 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3997] = 26
                    mem[_3997 + 32] = 'SafeMath: division by zero'
                    if not _3692 * _3632 / 10^18:
                        _4051 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4051 + 68] = mem[idx + _3997 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4051 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4051 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4268 = mem[_4245]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _4268
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _4268
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4322] == bool(mem[_4322])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4394 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4394] <= 0:
                        revert with 0, 'Not enough returned'
                    idx = idx + 1
                    t = sub_3ef5a13a * _1189 / 10000 * _3920 / _3692 * _3632 / 10^18
                    continue 
                if mem[_3497] * _3467 / _3467 != mem[_3497]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3550 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3550] = 26
                mem[_3550 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_3ef5a13a * _1189 / 10000 >= _3515 * _3467 / 10^18:
                    _3610 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3631 = mem[_3610]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3712 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3724 = mem[_3712]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _3724
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _3724
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3796 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3796] == bool(mem[_3796])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3875 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3875] <= 0:
                        revert with 0, 'Not enough returned'
                    idx = idx + 1
                    t = _3631
                    continue 
                _3619 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3640 = mem[_3619]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3679 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3700 = mem[_3679]
                if not _3640:
                    _3760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3760] = 26
                    mem[_3760 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3889]:
                        _3974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3974] = 26
                        mem[_3974 + 32] = 'SafeMath: division by zero'
                        _4023 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4023 + 68] = mem[idx + _3974 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4023 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4023 + -mem[64] + 100
                    if sub_3ef5a13a * _1189 / 10000 * mem[_3889] / mem[_3889] != sub_3ef5a13a * _1189 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3995] = 26
                    mem[_3995 + 32] = 'SafeMath: division by zero'
                    _4049 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4049 + 68] = mem[idx + _3995 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4049 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4049 + -mem[64] + 100
                if mem[_3679] * _3640 / _3640 != mem[_3679]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3778 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3778] = 26
                mem[_3778 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3904 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3934 = mem[_3904]
                if not mem[_3904]:
                    _3994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3994] = 26
                    mem[_3994 + 32] = 'SafeMath: division by zero'
                    if not _3700 * _3640 / 10^18:
                        _4048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4048 + 68] = mem[idx + _3994 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4048 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4048 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4244 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4267 = mem[_4244]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _4267
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _4267
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4321] == bool(mem[_4321])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4393] <= 0:
                        revert with 0, 'Not enough returned'
                    idx = idx + 1
                    t = 0 / _3700 * _3640 / 10^18
                    continue 
                if sub_3ef5a13a * _1189 / 10000 * mem[_3904] / mem[_3904] != sub_3ef5a13a * _1189 / 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4021 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4021] = 26
                mem[_4021 + 32] = 'SafeMath: division by zero'
                if not _3700 * _3640 / 10^18:
                    _4075 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _4075 + 68] = mem[idx + _4021 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4075 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _4075 + -mem[64] + 100
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4258 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4279 = mem[_4258]
                mem[mem[64] + 4] = sub_0658f495[idx]
                mem[mem[64] + 36] = _4279
                require ext_code.size(sub_0658f495[idx])
                call sub_0658f495[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_0658f495[idx], _4279
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4330 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4330] == bool(mem[_4330])
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_0658f495[idx])
                call sub_0658f495[idx].redeem(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4402 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_4402] <= 0:
                    revert with 0, 'Not enough returned'
                idx = idx + 1
                t = sub_3ef5a13a * _1189 / 10000 * _3934 / _3700 * _3640 / 10^18
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3430 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if _1174 > mem[_3430]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(address(routerAddress))
            call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args address(s), mem[_3430] - _1174, address(this.address), block.timestamp + 5
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
                _1166 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1172 = mem[_1166]
                if mem[_1166] <= t:
                    idx = idx + 1
                    s = s
                    t = mem[_1166]
                    t = t
                    continue 
                require idx < sub_0658f495.length
                mem[0] = 24
                idx = idx + 1
                s = sub_0658f495[idx]
                t = _1172
                t = _1172
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1175 = mem[_1169]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1190 = mem[_1187]
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
                _2314 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2324 = mem[_2314]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2333 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _2324:
                    _2382 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2382] = 26
                    mem[_2382 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_2333] * _2324 / _2324 != mem[_2333]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2392 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2392] = 26
                    mem[_2392 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
            if not _1190:
                _2313 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2313] = 26
                mem[_2313 + 32] = 'SafeMath: division by zero'
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
                    _3461 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3473 = mem[_3461]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3521 = mem[_3503]
                    if not _3473:
                        _3547 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3547] = 26
                        mem[_3547 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3605 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3626 = mem[_3605]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3721 = mem[_3707]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _3721
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _3721
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3789 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3789] == bool(mem[_3789])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3868 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3868] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = _3626
                        continue 
                    if mem[_3503] * _3473 / _3473 != mem[_3503]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3556 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3556] = 26
                    mem[_3556 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= _3521 * _3473 / 10^18:
                        _3615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3636 = mem[_3615]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3715 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3730 = mem[_3715]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _3730
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _3730
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3799 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3799] == bool(mem[_3799])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3883 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3883] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = _3636
                        continue 
                    _3625 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3647 = mem[_3625]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3685 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3706 = mem[_3685]
                    if not _3647:
                        _3770 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3770] = 26
                        mem[_3770 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3897 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_3897]:
                            _3986 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3986] = 26
                            mem[_3986 + 32] = 'SafeMath: division by zero'
                            _4038 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4038 + 68] = mem[idx + _3986 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4038 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4038 + -mem[64] + 100
                        if 0 / mem[_3897]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4010] = 26
                        mem[_4010 + 32] = 'SafeMath: division by zero'
                        _4064 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4064 + 68] = mem[idx + _4010 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4064 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4064 + -mem[64] + 100
                    if mem[_3685] * _3647 / _3647 != mem[_3685]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3787 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3787] = 26
                    mem[_3787 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3912 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3912]:
                        _4009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4009] = 26
                        mem[_4009 + 32] = 'SafeMath: division by zero'
                        if not _3706 * _3647 / 10^18:
                            _4063 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4063 + 68] = mem[idx + _4009 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4063 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4063 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4252 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4274 = mem[_4252]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _4274
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _4274
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4326 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4326] == bool(mem[_4326])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4398 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4398] <= 0:
                            revert with 0, 'Not enough returned'
                    else:
                        if 0 / mem[_3912]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4036 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4036] = 26
                        mem[_4036 + 32] = 'SafeMath: division by zero'
                        if not _3706 * _3647 / 10^18:
                            _4086 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4086 + 68] = mem[idx + _4036 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4086 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4086 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4287 = mem[_4263]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _4287
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _4287
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4335] == bool(mem[_4335])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4407] <= 0:
                            revert with 0, 'Not enough returned'
                    idx = idx + 1
                    t = 0 / _3706 * _3647 / 10^18
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3436 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _1175 > mem[_3436]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_3436] - _1175, address(this.address), block.timestamp + 5
            else:
                if sub_3ef5a13a * _1190 / _1190 != sub_3ef5a13a:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2319 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2319] = 26
                mem[_2319 + 32] = 'SafeMath: division by zero'
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
                    _3459 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3471 = mem[_3459]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3519 = mem[_3501]
                    if not _3471:
                        _3546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3546] = 26
                        mem[_3546 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_3ef5a13a * _1190 / 10000 >= 0:
                            _3603 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3624 = mem[_3603]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            staticcall sub_0658f495[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3705 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3720 = mem[_3705]
                            mem[mem[64] + 4] = sub_0658f495[idx]
                            mem[mem[64] + 36] = _3720
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_0658f495[idx], _3720
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3786 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3786] == bool(mem[_3786])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3866 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_3866] <= 0:
                                revert with 0, 'Not enough returned'
                            idx = idx + 1
                            t = _3624
                            continue 
                        _3614 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3635 = mem[_3614]
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].exchangeRateLast() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3695 = mem[_3674]
                        if not _3635:
                            _3751 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3751] = 26
                            mem[_3751 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            staticcall sub_0658f495[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3881 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_3881]:
                                _3967 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3967] = 26
                                mem[_3967 + 32] = 'SafeMath: division by zero'
                                _4008 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4008 + 68] = mem[idx + _3967 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4008 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4008 + -mem[64] + 100
                            if sub_3ef5a13a * _1190 / 10000 * mem[_3881] / mem[_3881] != sub_3ef5a13a * _1190 / 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3983 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3983] = 26
                            mem[_3983 + 32] = 'SafeMath: division by zero'
                            _4034 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4034 + 68] = mem[idx + _3983 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4034 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4034 + -mem[64] + 100
                        if mem[_3674] * _3635 / _3635 != mem[_3674]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3768 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3768] = 26
                        mem[_3768 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3895 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3925 = mem[_3895]
                        if not mem[_3895]:
                            _3982 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3982] = 26
                            mem[_3982 + 32] = 'SafeMath: division by zero'
                            if not _3695 * _3635 / 10^18:
                                _4033 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4033 + 68] = mem[idx + _3982 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4033 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4033 + -mem[64] + 100
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            staticcall sub_0658f495[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4228 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4262 = mem[_4228]
                            mem[mem[64] + 4] = sub_0658f495[idx]
                            mem[mem[64] + 36] = _4262
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_0658f495[idx], _4262
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4316] == bool(mem[_4316])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4388] <= 0:
                                revert with 0, 'Not enough returned'
                            idx = idx + 1
                            t = 0 / _3695 * _3635 / 10^18
                            continue 
                        if sub_3ef5a13a * _1190 / 10000 * mem[_3895] / mem[_3895] != sub_3ef5a13a * _1190 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4006 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4006] = 26
                        mem[_4006 + 32] = 'SafeMath: division by zero'
                        if not _3695 * _3635 / 10^18:
                            _4060 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4060 + 68] = mem[idx + _4006 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4060 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4060 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4250 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4272 = mem[_4250]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _4272
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _4272
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4325] == bool(mem[_4325])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4397 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4397] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = sub_3ef5a13a * _1190 / 10000 * _3925 / _3695 * _3635 / 10^18
                        continue 
                    if mem[_3501] * _3471 / _3471 != mem[_3501]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3554 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3554] = 26
                    mem[_3554 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_3ef5a13a * _1190 / 10000 >= _3519 * _3471 / 10^18:
                        _3613 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3634 = mem[_3613]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3714 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3728 = mem[_3714]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _3728
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _3728
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3798 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3798] == bool(mem[_3798])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3880 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3880] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = _3634
                        continue 
                    _3623 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3644 = mem[_3623]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3683 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3704 = mem[_3683]
                    if not _3644:
                        _3766 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3766] = 26
                        mem[_3766 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3894 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_3894]:
                            _3981 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3981] = 26
                            mem[_3981 + 32] = 'SafeMath: division by zero'
                            _4032 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4032 + 68] = mem[idx + _3981 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4032 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4032 + -mem[64] + 100
                        if sub_3ef5a13a * _1190 / 10000 * mem[_3894] / mem[_3894] != sub_3ef5a13a * _1190 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4004] = 26
                        mem[_4004 + 32] = 'SafeMath: division by zero'
                        _4058 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4058 + 68] = mem[idx + _4004 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4058 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4058 + -mem[64] + 100
                    if mem[_3683] * _3644 / _3644 != mem[_3683]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3784 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3784] = 26
                    mem[_3784 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3909 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3938 = mem[_3909]
                    if not mem[_3909]:
                        _4003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4003] = 26
                        mem[_4003 + 32] = 'SafeMath: division by zero'
                        if not _3704 * _3644 / 10^18:
                            _4057 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4057 + 68] = mem[idx + _4003 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4057 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4057 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4249 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4271 = mem[_4249]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _4271
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _4271
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4324 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4324] == bool(mem[_4324])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4396 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4396] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = 0 / _3704 * _3644 / 10^18
                        continue 
                    if sub_3ef5a13a * _1190 / 10000 * mem[_3909] / mem[_3909] != sub_3ef5a13a * _1190 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4030 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4030] = 26
                    mem[_4030 + 32] = 'SafeMath: division by zero'
                    if not _3704 * _3644 / 10^18:
                        _4082 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4082 + 68] = mem[idx + _4030 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4082 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4082 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4284 = mem[_4261]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _4284
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _4284
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4333 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4333] == bool(mem[_4333])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4405 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4405] <= 0:
                        revert with 0, 'Not enough returned'
                    idx = idx + 1
                    t = sub_3ef5a13a * _1190 / 10000 * _3938 / _3704 * _3644 / 10^18
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3434 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _1175 > mem[_3434]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_3434] - _1175, address(this.address), block.timestamp + 5
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
                _1167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1173 = mem[_1167]
                if mem[_1167] <= t:
                    idx = idx + 1
                    s = s
                    t = mem[_1167]
                    t = t
                    continue 
                require idx < sub_0658f495.length
                mem[0] = 24
                idx = idx + 1
                s = sub_0658f495[idx]
                t = _1173
                t = _1173
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1176 = mem[_1170]
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1191 = mem[_1188]
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
                _2316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2325 = mem[_2316]
                require ext_code.size(sub_0658f495[idx])
                staticcall sub_0658f495[idx].exchangeRateLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2334 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not _2325:
                    _2385 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2385] = 26
                    mem[_2385 + 32] = 'SafeMath: division by zero'
                else:
                    if mem[_2334] * _2325 / _2325 != mem[_2334]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2396] = 26
                    mem[_2396 + 32] = 'SafeMath: division by zero'
                idx = idx + 1
                continue 
            if not _1191:
                _2315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2315] = 26
                mem[_2315 + 32] = 'SafeMath: division by zero'
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
                    _3465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3477 = mem[_3465]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3525 = mem[_3507]
                    if not _3477:
                        _3549 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3549] = 26
                        mem[_3549 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3609 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3630 = mem[_3609]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3711 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3723 = mem[_3711]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _3723
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _3723
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3795 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3795] == bool(mem[_3795])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3873 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3873] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = _3630
                        continue 
                    if mem[_3507] * _3477 / _3477 != mem[_3507]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3560 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3560] = 26
                    mem[_3560 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= _3525 * _3477 / 10^18:
                        _3618 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3639 = mem[_3618]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3717 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3734 = mem[_3717]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _3734
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _3734
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3801 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3801] == bool(mem[_3801])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3888 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3888] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = _3639
                        continue 
                    _3629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3651 = mem[_3629]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3710 = mem[_3689]
                    if not _3651:
                        _3776 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3776] = 26
                        mem[_3776 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3902 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_3902]:
                            _3993 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3993] = 26
                            mem[_3993 + 32] = 'SafeMath: division by zero'
                            _4047 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4047 + 68] = mem[idx + _3993 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4047 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4047 + -mem[64] + 100
                        if 0 / mem[_3902]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4019 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4019] = 26
                        mem[_4019 + 32] = 'SafeMath: division by zero'
                        _4073 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4073 + 68] = mem[idx + _4019 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4073 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4073 + -mem[64] + 100
                    if mem[_3689] * _3651 / _3651 != mem[_3689]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3793 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3793] = 26
                    mem[_3793 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3917 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not mem[_3917]:
                        _4018 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4018] = 26
                        mem[_4018 + 32] = 'SafeMath: division by zero'
                        if not _3710 * _3651 / 10^18:
                            _4072 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4072 + 68] = mem[idx + _4018 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4072 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4072 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4278 = mem[_4257]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _4278
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _4278
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4329] == bool(mem[_4329])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4401] <= 0:
                            revert with 0, 'Not enough returned'
                    else:
                        if 0 / mem[_3917]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4045 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4045] = 26
                        mem[_4045 + 32] = 'SafeMath: division by zero'
                        if not _3710 * _3651 / 10^18:
                            _4093 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4093 + 68] = mem[idx + _4045 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4093 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4093 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4292 = mem[_4266]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _4292
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _4292
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4338 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4338] == bool(mem[_4338])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4410 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4410] <= 0:
                            revert with 0, 'Not enough returned'
                    idx = idx + 1
                    t = 0 / _3710 * _3651 / 10^18
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3440 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _1176 > mem[_3440]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_3440] - _1176, address(this.address), block.timestamp + 5
            else:
                if sub_3ef5a13a * _1191 / _1191 != sub_3ef5a13a:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2321] = 26
                mem[_2321 + 32] = 'SafeMath: division by zero'
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
                    _3463 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3475 = mem[_3463]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3523 = mem[_3505]
                    if not _3475:
                        _3548 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3548] = 26
                        mem[_3548 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_3ef5a13a * _1191 / 10000 >= 0:
                            _3607 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3628 = mem[_3607]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            staticcall sub_0658f495[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3709 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3722 = mem[_3709]
                            mem[mem[64] + 4] = sub_0658f495[idx]
                            mem[mem[64] + 36] = _3722
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_0658f495[idx], _3722
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3792 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3792] == bool(mem[_3792])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3871 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_3871] <= 0:
                                revert with 0, 'Not enough returned'
                            idx = idx + 1
                            t = _3628
                            continue 
                        _3617 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3638 = mem[_3617]
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].exchangeRateLast() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3677 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3698 = mem[_3677]
                        if not _3638:
                            _3756 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3756] = 26
                            mem[_3756 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            staticcall sub_0658f495[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3886 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not mem[_3886]:
                                _3971 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3971] = 26
                                mem[_3971 + 32] = 'SafeMath: division by zero'
                                _4017 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4017 + 68] = mem[idx + _3971 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4017 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4017 + -mem[64] + 100
                            if sub_3ef5a13a * _1191 / 10000 * mem[_3886] / mem[_3886] != sub_3ef5a13a * _1191 / 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _3990 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3990] = 26
                            mem[_3990 + 32] = 'SafeMath: division by zero'
                            _4043 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4043 + 68] = mem[idx + _3990 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4043 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4043 + -mem[64] + 100
                        if mem[_3677] * _3638 / _3638 != mem[_3677]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3774] = 26
                        mem[_3774 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3900 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3930 = mem[_3900]
                        if not mem[_3900]:
                            _3989 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3989] = 26
                            mem[_3989 + 32] = 'SafeMath: division by zero'
                            if not _3698 * _3638 / 10^18:
                                _4042 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _4042 + 68] = mem[idx + _3989 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4042 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _4042 + -mem[64] + 100
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            staticcall sub_0658f495[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4238 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4265 = mem[_4238]
                            mem[mem[64] + 4] = sub_0658f495[idx]
                            mem[mem[64] + 36] = _4265
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].0xa9059cbb with:
                                 gas gas_remaining wei
                                args sub_0658f495[idx], _4265
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4319] == bool(mem[_4319])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_0658f495[idx])
                            call sub_0658f495[idx].redeem(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_4391] <= 0:
                                revert with 0, 'Not enough returned'
                            idx = idx + 1
                            t = 0 / _3698 * _3638 / 10^18
                            continue 
                        if sub_3ef5a13a * _1191 / 10000 * mem[_3900] / mem[_3900] != sub_3ef5a13a * _1191 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4015 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4015] = 26
                        mem[_4015 + 32] = 'SafeMath: division by zero'
                        if not _3698 * _3638 / 10^18:
                            _4069 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4069 + 68] = mem[idx + _4015 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4069 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4069 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4276 = mem[_4255]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _4276
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _4276
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4328 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4328] == bool(mem[_4328])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4400] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = sub_3ef5a13a * _1191 / 10000 * _3930 / _3698 * _3638 / 10^18
                        continue 
                    if mem[_3505] * _3475 / _3475 != mem[_3505]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3558 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3558] = 26
                    mem[_3558 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_3ef5a13a * _1191 / 10000 >= _3523 * _3475 / 10^18:
                        _3616 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3637 = mem[_3616]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3716 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3732 = mem[_3716]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _3732
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _3732
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3800 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3800] == bool(mem[_3800])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3885 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3885] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = _3637
                        continue 
                    _3627 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3648 = mem[_3627]
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].exchangeRateLast() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3708 = mem[_3687]
                    if not _3648:
                        _3772 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3772] = 26
                        mem[_3772 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if not mem[_3899]:
                            _3988 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3988] = 26
                            mem[_3988 + 32] = 'SafeMath: division by zero'
                            _4041 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4041 + 68] = mem[idx + _3988 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4041 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4041 + -mem[64] + 100
                        if sub_3ef5a13a * _1191 / 10000 * mem[_3899] / mem[_3899] != sub_3ef5a13a * _1191 / 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4013 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4013] = 26
                        mem[_4013 + 32] = 'SafeMath: division by zero'
                        _4067 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4067 + 68] = mem[idx + _4013 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4067 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4067 + -mem[64] + 100
                    if mem[_3687] * _3648 / _3648 != mem[_3687]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3790 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3790] = 26
                    mem[_3790 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3914 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3942 = mem[_3914]
                    if not mem[_3914]:
                        _4012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4012] = 26
                        mem[_4012 + 32] = 'SafeMath: division by zero'
                        if not _3708 * _3648 / 10^18:
                            _4066 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _4066 + 68] = mem[idx + _4012 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4066 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _4066 + -mem[64] + 100
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        staticcall sub_0658f495[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4275 = mem[_4254]
                        mem[mem[64] + 4] = sub_0658f495[idx]
                        mem[mem[64] + 36] = _4275
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_0658f495[idx], _4275
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4327] == bool(mem[_4327])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_0658f495[idx])
                        call sub_0658f495[idx].redeem(address arg1) with:
                             gas gas_remaining wei
                            args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4399] <= 0:
                            revert with 0, 'Not enough returned'
                        idx = idx + 1
                        t = 0 / _3708 * _3648 / 10^18
                        continue 
                    if sub_3ef5a13a * _1191 / 10000 * mem[_3914] / mem[_3914] != sub_3ef5a13a * _1191 / 10000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4039 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4039] = 26
                    mem[_4039 + 32] = 'SafeMath: division by zero'
                    if not _3708 * _3648 / 10^18:
                        _4089 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _4089 + 68] = mem[idx + _4039 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4089 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _4089 + -mem[64] + 100
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    staticcall sub_0658f495[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4289 = mem[_4264]
                    mem[mem[64] + 4] = sub_0658f495[idx]
                    mem[mem[64] + 36] = _4289
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_0658f495[idx], _4289
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4336 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4336] == bool(mem[_4336])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_0658f495[idx])
                    call sub_0658f495[idx].redeem(address arg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4408] <= 0:
                        revert with 0, 'Not enough returned'
                    idx = idx + 1
                    t = sub_3ef5a13a * _1191 / 10000 * _3942 / _3708 * _3648 / 10^18
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3438 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _1176 > mem[_3438]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(address(routerAddress))
                call address(routerAddress).mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args address(s), mem[_3438] - _1176, address(this.address), block.timestamp + 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
