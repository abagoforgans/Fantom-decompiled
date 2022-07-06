contract main {




// =====================  Runtime code  =====================


#
#  - userPoolRule(uint256 arg1, address arg2, uint256 arg3)
#
address owner;
array of address stor1;
array of struct poolInfo;
array of uint256 userStakedPoolLength;
mapping of uint8 stor5;
uint256 depositFee;
uint256 withdrawFee;
uint256 performanceFee;
uint256 performanceFeeBountyPct;
uint256 ruleFee;
uint256 ruleFeeBountyPct;
address feeAddress;
uint8 stor13; offset 160
address feeAddressSetter;
mapping of uint8 stor14;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

function poolLength() payable {
    return poolInfo.length
}

function userStakedPoolLength(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userStakedPoolLength[address(arg1)]
}

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256
}

function performanceFeeBountyPct() payable {
    return performanceFeeBountyPct
}

function userRuleLength(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userRuleLength[arg1][address(arg2)].field_256
}

function ruleFeeBountyPct() payable {
    return ruleFeeBountyPct
}

function feeAddress() payable {
    return feeAddress
}

function feeAddressSetter() payable {
    return feeAddressSetter
}

function depositFee() payable {
    return depositFee
}

function performanceFee() payable {
    return performanceFee
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userRuleLength[arg1][arg2].field_0
}

function userStakedPoolAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= userStakedPoolLength[address(arg1)]:
        revert with 0, 50
    return userStakedPoolLength[address(arg1)][arg2]
}

function ruleFee() payable {
    return ruleFee
}

function strategyExists(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function withdrawFee() payable {
    return withdrawFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRuleFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'setRuleFee: CAP_EXCEEDED'
    ruleFee = arg1
    emit 0x61118860: arg1
}

function setDepositFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'setDepositFee: CAP_EXCEEDED'
    depositFee = arg1
    emit SetDepositFee(arg1);
}

function setWithdrawFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'setWithdrawFee: CAP_EXCEEDED'
    withdrawFee = arg1
    emit SetWithdrawFee(arg1);
}

function setPerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'setPerformanceFee: CAP_EXCEEDED'
    performanceFee = arg1
    emit SetPerformanceFee(arg1);
}

function setOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = uint8(arg2)
    emit SetOperator(address(arg1), arg2);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddressSetter != msg.sender:
        revert with 0, 'setFeeAddress: NOT_ALLOWED'
    if not arg1:
        revert with 0, 'setFeeAddress: NOT_ALLOWED'
    feeAddress = arg1
    emit SetFeeAddress(arg1);
}

function setFeeAddressSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddressSetter != msg.sender:
        revert with 0, 'setFeeAddressSetter: NOT_ALLOWED'
    if not arg1:
        revert with 0, 'setFeeAddressSetter: NOT_ALLOWED'
    feeAddressSetter = arg1
    emit 0xf8361c73: arg1
}

function setRuleFeeBountyPct(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setRuleFeeBountyPct: CAP_EXCEEDED'
    ruleFeeBountyPct = arg1
    emit 0xf278bd7e: arg1
}

function setPerformanceFeeBountyPct(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setPerformanceFeeBountyPct: CAP_EXCEEDED'
    performanceFeeBountyPct = arg1
    emit 0x9a39cf10: arg1
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

function setStrategySwapRouterEnabled(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xb58303af with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6a1ab10c: address(arg1), arg2
}

function earn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.0xfdb5fefc with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdcc11642: ext_call.return_data[0], msg.sender, arg1
    stor1.length = 1
    return ext_call.return_data[0]
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor14[msg.sender]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    if stor5[address(arg1)]:
        revert with 0, 'add: STRATEGY_ALREADY_EXISTS'
    require ext_code.size(arg1)
    staticcall arg1.0x51ed6a30 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = address(ext_call.return_data[0])
    stor4057[stor2.length] = arg1
    stor5[address(arg1)] = 1
    emit Add(address(ext_call.return_data[0]), arg1);
}

function earnMany(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    idx = 0
    while idx < arg1.length:
        if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256)
        call poolInfo[cd[((32 * idx) + arg1 + 36)]].field_256.0xfdb5fefc with:
             gas gas_remaining wei
            args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64]] = mem[_13]
        emit 0xdcc11642: mem[mem[64]], msg.sender, cd[((32 * idx) + arg1 + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1.length = 1
}

function addMany(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 14
    if not stor14[msg.sender]:
        revert with 0, 'onlyOperator: NOT_ALLOWED'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if not stor14[msg.sender]:
            revert with 0, 'onlyOperator: NOT_ALLOWED'
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        if stor5[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'add: STRATEGY_ALREADY_EXISTS'
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x51ed6a30 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_28]
        require mem[_28] == mem[_28 + 12 len 20]
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = address(_29)
        mem[_30 + 32] = address(cd[((32 * idx) + arg1 + 36)])
        poolInfo.length++
        poolInfo[poolInfo.length].field_0 = address(_29)
        stor4057[stor2.length] = address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 1
        mem[mem[64]] = address(_29)
        mem[mem[64] + 32] = address(cd[((32 * idx) + arg1 + 36)])
        emit Add(address(_29), address(cd[((32 * idx) + arg1 + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setStrategySwapPath(address arg1, address arg2, address arg3, address[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4.length == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setStrategySwapPath: INVALID_PATH'
    if arg4.length:
        if 0 >= arg4.length:
            revert with 0, 50
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        if address(cd[(arg4 + 36)]) != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setStrategySwapPath: INVALID_PATH'
        if arg4.length < 1:
            revert with 0, 17
        if arg4.length - 1 >= arg4.length:
            revert with 0, 50
        require cd[((32 * arg4.length - 1) + arg4 + 36)] == address(cd[((32 * arg4.length - 1) + arg4 + 36)])
        if address(cd[((32 * arg4.length - 1) + arg4 + 36)]) != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setStrategySwapPath: INVALID_PATH'
    idx = 0
    s = arg4 + 36
    t = 228
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.setSwapPath(address arg1, address arg2, address[] arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), Array(len=arg4.length, data=mem[228 len 32 * arg4.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = arg4 + 36
    t = 256
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xd136e386: address(arg1), address(arg2), address(arg3), Array(len=arg4.length, data=mem[256 len 32 * arg4.length])
}

function setStrategyExtraEarnTokens(address arg1, address[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setStrategyExtraEarnTokens: CAP_EXCEEDED'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 0x559ae48a00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = arg2.length
    idx = 0
    s = arg2 + 36
    t = mem[64] + 68
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _13 + (32 * arg2.length) + -mem[64] + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _22 = mem[64]
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = arg2.length
    idx = 0
    s = arg2 + 36
    t = mem[64] + 96
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x41aba019: mem[mem[64] len _22 + (32 * arg2.length) + -mem[64] + 96]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x44a3955e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userRuleLength[arg1][address(msg.sender)].field_0:
        revert with 0, 'withdraw: NO_SHARES'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'withdraw: NO_SHARES'
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x40a65823 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userRuleLength[arg1][address(msg.sender)].field_0 and ext_call.return_data[0] > -1 / userRuleLength[arg1][address(msg.sender)].field_0:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(poolInfo[arg1].field_256)
    if -1 <= userRuleLength[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
        call poolInfo[arg1].field_256.0xa318c1a4 with:
             gas gas_remaining wei
            args -1, msg.sender, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userRuleLength[arg1][address(msg.sender)].field_0 <= ext_call.return_data[0]:
            userRuleLength[arg1][address(msg.sender)].field_0 = 0
            if userStakedPoolLength[address(msg.sender)][1][arg1]:
                if userStakedPoolLength[address(msg.sender)][1][arg1] < 1:
                    revert with 0, 17
                if userStakedPoolLength[address(msg.sender)] < 1:
                    revert with 0, 17
                if userStakedPoolLength[address(msg.sender)] - 1 != userStakedPoolLength[address(msg.sender)][1][arg1] - 1:
                    if userStakedPoolLength[address(msg.sender)] - 1 >= userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 50
                    if userStakedPoolLength[address(msg.sender)][1][arg1] - 1 >= userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 50
                    userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)][1][arg1]] = userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]
                    userStakedPoolLength[address(msg.sender)][1][userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]] = userStakedPoolLength[address(msg.sender)][1][arg1]
                if not userStakedPoolLength[address(msg.sender)]:
                    revert with 0, 49
                userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]] = 0
                userStakedPoolLength[address(msg.sender)]--
                userStakedPoolLength[address(msg.sender)][1][arg1] = 0
        else:
            if userRuleLength[arg1][address(msg.sender)].field_0 < ext_call.return_data[0]:
                revert with 0, 17
            userRuleLength[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
            if not userRuleLength[arg1][address(msg.sender)].field_0 - ext_call.return_data[0]:
                if userStakedPoolLength[address(msg.sender)][1][arg1]:
                    if userStakedPoolLength[address(msg.sender)][1][arg1] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[address(msg.sender)] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[address(msg.sender)] - 1 != userStakedPoolLength[address(msg.sender)][1][arg1] - 1:
                        if userStakedPoolLength[address(msg.sender)] - 1 >= userStakedPoolLength[address(msg.sender)]:
                            revert with 0, 50
                        if userStakedPoolLength[address(msg.sender)][1][arg1] - 1 >= userStakedPoolLength[address(msg.sender)]:
                            revert with 0, 50
                        userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)][1][arg1]] = userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]
                        userStakedPoolLength[address(msg.sender)][1][userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]] = userStakedPoolLength[address(msg.sender)][1][arg1]
                    if not userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 49
                    userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]] = 0
                    userStakedPoolLength[address(msg.sender)]--
                    userStakedPoolLength[address(msg.sender)][1][arg1] = 0
        emit Withdraw(-1, msg.sender, msg.sender, arg1);
    else:
        call poolInfo[arg1].field_256.0xa318c1a4 with:
             gas gas_remaining wei
            args userRuleLength[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0], msg.sender, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userRuleLength[arg1][address(msg.sender)].field_0 <= ext_call.return_data[0]:
            userRuleLength[arg1][address(msg.sender)].field_0 = 0
            if userStakedPoolLength[address(msg.sender)][1][arg1]:
                if userStakedPoolLength[address(msg.sender)][1][arg1] < 1:
                    revert with 0, 17
                if userStakedPoolLength[address(msg.sender)] < 1:
                    revert with 0, 17
                if userStakedPoolLength[address(msg.sender)] - 1 != userStakedPoolLength[address(msg.sender)][1][arg1] - 1:
                    if userStakedPoolLength[address(msg.sender)] - 1 >= userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 50
                    if userStakedPoolLength[address(msg.sender)][1][arg1] - 1 >= userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 50
                    userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)][1][arg1]] = userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]
                    userStakedPoolLength[address(msg.sender)][1][userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]] = userStakedPoolLength[address(msg.sender)][1][arg1]
                if not userStakedPoolLength[address(msg.sender)]:
                    revert with 0, 49
                userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]] = 0
                userStakedPoolLength[address(msg.sender)]--
                userStakedPoolLength[address(msg.sender)][1][arg1] = 0
        else:
            if userRuleLength[arg1][address(msg.sender)].field_0 < ext_call.return_data[0]:
                revert with 0, 17
            userRuleLength[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
            if not userRuleLength[arg1][address(msg.sender)].field_0 - ext_call.return_data[0]:
                if userStakedPoolLength[address(msg.sender)][1][arg1]:
                    if userStakedPoolLength[address(msg.sender)][1][arg1] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[address(msg.sender)] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[address(msg.sender)] - 1 != userStakedPoolLength[address(msg.sender)][1][arg1] - 1:
                        if userStakedPoolLength[address(msg.sender)] - 1 >= userStakedPoolLength[address(msg.sender)]:
                            revert with 0, 50
                        if userStakedPoolLength[address(msg.sender)][1][arg1] - 1 >= userStakedPoolLength[address(msg.sender)]:
                            revert with 0, 50
                        userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)][1][arg1]] = userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]
                        userStakedPoolLength[address(msg.sender)][1][userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]] = userStakedPoolLength[address(msg.sender)][1][arg1]
                    if not userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 49
                    userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]] = 0
                    userStakedPoolLength[address(msg.sender)]--
                    userStakedPoolLength[address(msg.sender)][1][arg1] = 0
        emit Withdraw((userRuleLength[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, msg.sender, arg1);
    stor1.length = 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_withdrawFrom: MUST_BE_GREATER_THAN_ZERO'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.0xfdb5fefc with:
         gas gas_remaining wei
        args 0
    if ext_call.success:
        require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x44a3955e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userRuleLength[arg1][address(msg.sender)].field_0:
        revert with 0, 'withdraw: NO_SHARES'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'withdraw: NO_SHARES'
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x40a65823 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userRuleLength[arg1][address(msg.sender)].field_0 and ext_call.return_data[0] > -1 / userRuleLength[arg1][address(msg.sender)].field_0:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(poolInfo[arg1].field_256)
    if arg2 <= userRuleLength[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]:
        call poolInfo[arg1].field_256.0xa318c1a4 with:
             gas gas_remaining wei
            args arg2, msg.sender, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userRuleLength[arg1][address(msg.sender)].field_0 <= ext_call.return_data[0]:
            userRuleLength[arg1][address(msg.sender)].field_0 = 0
            if userStakedPoolLength[address(msg.sender)][1][arg1]:
                if userStakedPoolLength[address(msg.sender)][1][arg1] < 1:
                    revert with 0, 17
                if userStakedPoolLength[address(msg.sender)] < 1:
                    revert with 0, 17
                if userStakedPoolLength[address(msg.sender)] - 1 != userStakedPoolLength[address(msg.sender)][1][arg1] - 1:
                    if userStakedPoolLength[address(msg.sender)] - 1 >= userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 50
                    if userStakedPoolLength[address(msg.sender)][1][arg1] - 1 >= userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 50
                    userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)][1][arg1]] = userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]
                    userStakedPoolLength[address(msg.sender)][1][userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]] = userStakedPoolLength[address(msg.sender)][1][arg1]
                if not userStakedPoolLength[address(msg.sender)]:
                    revert with 0, 49
                userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]] = 0
                userStakedPoolLength[address(msg.sender)]--
                userStakedPoolLength[address(msg.sender)][1][arg1] = 0
        else:
            if userRuleLength[arg1][address(msg.sender)].field_0 < ext_call.return_data[0]:
                revert with 0, 17
            userRuleLength[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
            if not userRuleLength[arg1][address(msg.sender)].field_0 - ext_call.return_data[0]:
                if userStakedPoolLength[address(msg.sender)][1][arg1]:
                    if userStakedPoolLength[address(msg.sender)][1][arg1] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[address(msg.sender)] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[address(msg.sender)] - 1 != userStakedPoolLength[address(msg.sender)][1][arg1] - 1:
                        if userStakedPoolLength[address(msg.sender)] - 1 >= userStakedPoolLength[address(msg.sender)]:
                            revert with 0, 50
                        if userStakedPoolLength[address(msg.sender)][1][arg1] - 1 >= userStakedPoolLength[address(msg.sender)]:
                            revert with 0, 50
                        userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)][1][arg1]] = userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]
                        userStakedPoolLength[address(msg.sender)][1][userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]] = userStakedPoolLength[address(msg.sender)][1][arg1]
                    if not userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 49
                    userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]] = 0
                    userStakedPoolLength[address(msg.sender)]--
                    userStakedPoolLength[address(msg.sender)][1][arg1] = 0
        emit Withdraw(arg2, msg.sender, msg.sender, arg1);
    else:
        call poolInfo[arg1].field_256.0xa318c1a4 with:
             gas gas_remaining wei
            args userRuleLength[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0], msg.sender, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userRuleLength[arg1][address(msg.sender)].field_0 <= ext_call.return_data[0]:
            userRuleLength[arg1][address(msg.sender)].field_0 = 0
            if userStakedPoolLength[address(msg.sender)][1][arg1]:
                if userStakedPoolLength[address(msg.sender)][1][arg1] < 1:
                    revert with 0, 17
                if userStakedPoolLength[address(msg.sender)] < 1:
                    revert with 0, 17
                if userStakedPoolLength[address(msg.sender)] - 1 != userStakedPoolLength[address(msg.sender)][1][arg1] - 1:
                    if userStakedPoolLength[address(msg.sender)] - 1 >= userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 50
                    if userStakedPoolLength[address(msg.sender)][1][arg1] - 1 >= userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 50
                    userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)][1][arg1]] = userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]
                    userStakedPoolLength[address(msg.sender)][1][userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]] = userStakedPoolLength[address(msg.sender)][1][arg1]
                if not userStakedPoolLength[address(msg.sender)]:
                    revert with 0, 49
                userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]] = 0
                userStakedPoolLength[address(msg.sender)]--
                userStakedPoolLength[address(msg.sender)][1][arg1] = 0
        else:
            if userRuleLength[arg1][address(msg.sender)].field_0 < ext_call.return_data[0]:
                revert with 0, 17
            userRuleLength[arg1][address(msg.sender)].field_0 -= ext_call.return_data[0]
            if not userRuleLength[arg1][address(msg.sender)].field_0 - ext_call.return_data[0]:
                if userStakedPoolLength[address(msg.sender)][1][arg1]:
                    if userStakedPoolLength[address(msg.sender)][1][arg1] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[address(msg.sender)] < 1:
                        revert with 0, 17
                    if userStakedPoolLength[address(msg.sender)] - 1 != userStakedPoolLength[address(msg.sender)][1][arg1] - 1:
                        if userStakedPoolLength[address(msg.sender)] - 1 >= userStakedPoolLength[address(msg.sender)]:
                            revert with 0, 50
                        if userStakedPoolLength[address(msg.sender)][1][arg1] - 1 >= userStakedPoolLength[address(msg.sender)]:
                            revert with 0, 50
                        userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)][1][arg1]] = userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]
                        userStakedPoolLength[address(msg.sender)][1][userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]]] = userStakedPoolLength[address(msg.sender)][1][arg1]
                    if not userStakedPoolLength[address(msg.sender)]:
                        revert with 0, 49
                    userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]] = 0
                    userStakedPoolLength[address(msg.sender)]--
                    userStakedPoolLength[address(msg.sender)][1][arg1] = 0
        emit Withdraw((userRuleLength[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, msg.sender, arg1);
    stor1.length = 1
}

function addRule(uint256 arg1, address arg2, uint256[] arg3, address[] arg4, address arg5, uint256[] arg6, address[] arg7) payable {
    require calldata.size - 4 >= 224
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require test266151307() >= arg4
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    require test266151307() >= arg7
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + (32 * arg7.length) + 36 <= calldata.size
    if 50 < userRuleLength[arg1][msg.sender].field_256:
        revert with 0, 'addRule: CAP_EXCEEDED'
    require ext_code.size(arg2)
    staticcall arg2.0xb28313b3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'addRule: BAD_CONDITION'
    require ext_code.size(arg5)
    staticcall arg5.0x52484c with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'addRule: BAD_ACTION'
    mem[(2 * ceil32(return_data.size)) + 320 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (2 * ceil32(return_data.size)) + 320] = arg4.length
    mem[(32 * arg3.length) + (2 * ceil32(return_data.size)) + 352 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 352] = arg6.length
    mem[(32 * arg4.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 384 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + (32 * arg4.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 384] = arg7.length
    mem[(32 * arg6.length) + (32 * arg4.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg6.length) + (32 * arg4.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + (32 * arg7.length) + 416] = 0
    userRuleLength[arg1][msg.sender].field_256++
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 = arg2
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_256 = arg3.length
    if not arg3.length:
        idx = 0
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_256 > idx:
            stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (2 * ceil32(return_data.size)) + 320
        while (2 * ceil32(return_data.size)) + (32 * arg3.length) + 320 > idx:
            stor[s + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 1)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_256 > idx:
            stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_512 = arg4.length
    if not arg4.length:
        idx = 0
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_512 > idx:
            stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg3.length) + (2 * ceil32(return_data.size)) + 352
        while (32 * arg3.length) + (2 * ceil32(return_data.size)) + (32 * arg4.length) + 352 > idx:
            stor[s + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 2)].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_512 > idx:
            stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_768 = arg5
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1024 = arg6.length
    if not arg6.length:
        idx = 0
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1024 > idx:
            stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 4)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg4.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 384
        while (32 * arg4.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + (32 * arg6.length) + 384 > idx:
            stor[s + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 4)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1024 > idx:
            stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 4)].field_0 = 0
            idx = idx + 1
            continue 
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1280 = arg7.length
    if not arg7.length:
        idx = 0
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1280 > idx:
            stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg6.length) + (32 * arg4.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 416
        while (32 * arg6.length) + (32 * arg4.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + (32 * arg7.length) + 416 > idx:
            stor[s + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 5)].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1280 > idx:
            stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x21194b08: msg.sender, arg1
}

function removeRule(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= userRuleLength[arg1][msg.sender].field_256:
        revert with 0, 'removeRule: BAD_INDEX'
    if userRuleLength[arg1][msg.sender].field_256 < 1:
        revert with 0, 17
    if userRuleLength[arg1][msg.sender].field_256 - 1 >= userRuleLength[arg1][msg.sender].field_256:
        revert with 0, 50
    if arg2 >= userRuleLength[arg1][msg.sender].field_256:
        revert with 0, 50
    stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 = stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0
    stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_256 = stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0
    if not stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0:
        idx = 0
        while stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_256 > idx:
            stor[idx + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 > idx:
            stor[s + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 1)].field_0 = stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) - 5)].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0
        while stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_256 > idx:
            stor[idx + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_512 = stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0
    if not stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0:
        idx = 0
        while stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_512 > idx:
            stor[idx + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 > idx:
            stor[s + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 2)].field_0 = stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) - 4)].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0
        while stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_512 > idx:
            stor[idx + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_768 = stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0
    stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1024 = stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0
    if not stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0:
        idx = 0
        while stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1024 > idx:
            stor[idx + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 4)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 > idx:
            stor[s + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 4)].field_0 = stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) - 2)].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0
        while stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1024 > idx:
            stor[idx + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 4)].field_0 = 0
            idx = idx + 1
            continue 
    stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1280 = stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0
    if not stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0:
        idx = 0
        while stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1280 > idx:
            stor[idx + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 0
        while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 > idx:
            stor[s + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 5)].field_0 = stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) - 1)].field_0
            s = s + 1
            idx = idx + 1
            continue 
        idx = stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0
        while stor[(6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_1280 > idx:
            stor[idx + sha3((6 * arg2) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    if not userRuleLength[arg1][msg.sender].field_256:
        revert with 0, 49
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 = 0
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 = 0
    idx = 0
    while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 > idx:
        stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) - 5)].field_0 = 0
        idx = idx + 1
        continue 
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 = 0
    idx = 0
    while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 > idx:
        stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) - 4)].field_0 = 0
        idx = idx + 1
        continue 
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 = 0
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 = 0
    idx = 0
    while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 > idx:
        stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) - 2)].field_0 = 0
        idx = idx + 1
        continue 
    stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 = 0
    idx = 0
    while stor[(6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3))))].field_0 > idx:
        stor[idx + sha3((6 * userRuleLength[arg1][msg.sender].field_256) + ('array', 1, ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) - 1)].field_0 = 0
        idx = idx + 1
        continue 
    userRuleLength[arg1][msg.sender].field_256--
    emit 0xce8274f5: arg2, msg.sender, arg1
}

function depositTo(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'deposit: MUST_BE_GREATER_THAN_ZERO'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[128] = poolInfo[arg1].field_256
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x44a3955e with:
            gas gas_remaining wei
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        mem[ceil32(return_data.size) + 164] = poolInfo[arg1].field_256
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args poolInfo[arg1].field_256
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
        mem[(2 * ceil32(return_data.size)) + 260] = arg2
        mem[(2 * ceil32(return_data.size)) + 160] = 100
        mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 292] = 32
        mem[(2 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 456] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if poolInfo[arg1].field_0:
                    revert with memory
                      from 128
                       len poolInfo[arg1].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if poolInfo[arg1].field_0:
                require poolInfo[arg1].field_0 >= 32
                require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 388] == bool(mem[(2 * ceil32(return_data.size)) + 388])
                if not mem[(2 * ceil32(return_data.size)) + 388]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 164] = 0
        require ext_code.size(poolInfo[arg1].field_256)
        call poolInfo[arg1].field_256.0xfdb5fefc with:
             gas gas_remaining wei
            args 0
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            mem[ceil32(return_data.size) + 164] = poolInfo[arg1].field_256
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_256
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
            mem[(2 * ceil32(return_data.size)) + 260] = arg2
            mem[(2 * ceil32(return_data.size)) + 160] = 100
            mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 292] = 32
            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 456] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if poolInfo[arg1].field_0:
                        revert with memory
                          from 128
                           len poolInfo[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolInfo[arg1].field_0:
                    require poolInfo[arg1].field_0 >= 32
                    require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 388] == bool(mem[(2 * ceil32(return_data.size)) + 388])
                    if not mem[(2 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 164] = poolInfo[arg1].field_256
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_256
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 196] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
            mem[(4 * ceil32(return_data.size)) + 260] = arg2
            mem[(4 * ceil32(return_data.size)) + 160] = 100
            mem[(4 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
            mem[(4 * ceil32(return_data.size)) + 292] = 32
            mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
            mem[(4 * ceil32(return_data.size)) + 456] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if poolInfo[arg1].field_0:
                        revert with memory
                          from 128
                           len poolInfo[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolInfo[arg1].field_0:
                    require poolInfo[arg1].field_0 >= 32
                    require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
                    if not mem[(4 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args poolInfo[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.0xb6b55f25 with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userRuleLength[arg1][address(arg3)].field_0 > !ext_call.return_data[0]:
        revert with 0, 17
    userRuleLength[arg1][address(arg3)].field_0 += ext_call.return_data[0]
    if not userStakedPoolLength[address(arg3)][1][arg1]:
        userStakedPoolLength[address(arg3)]++
        userStakedPoolLength[address(arg3)][userStakedPoolLength[address(arg3)]] = arg1
        userStakedPoolLength[address(arg3)][1][arg1] = userStakedPoolLength[address(arg3)]
    emit Deposit(0, arg3, arg1);
    stor1.length = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'deposit: MUST_BE_GREATER_THAN_ZERO'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[128] = poolInfo[arg1].field_256
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.0x44a3955e with:
            gas gas_remaining wei
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        mem[ceil32(return_data.size) + 164] = poolInfo[arg1].field_256
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args poolInfo[arg1].field_256
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
        mem[(2 * ceil32(return_data.size)) + 260] = arg2
        mem[(2 * ceil32(return_data.size)) + 160] = 100
        mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 292] = 32
        mem[(2 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 456] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if poolInfo[arg1].field_0:
                    revert with memory
                      from 128
                       len poolInfo[arg1].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if poolInfo[arg1].field_0:
                require poolInfo[arg1].field_0 >= 32
                require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                if not poolInfo[arg1].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 388] == bool(mem[(2 * ceil32(return_data.size)) + 388])
                if not mem[(2 * ceil32(return_data.size)) + 388]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 164] = 0
        require ext_code.size(poolInfo[arg1].field_256)
        call poolInfo[arg1].field_256.0xfdb5fefc with:
             gas gas_remaining wei
            args 0
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            mem[ceil32(return_data.size) + 164] = poolInfo[arg1].field_256
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_256
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 196] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
            mem[(2 * ceil32(return_data.size)) + 260] = arg2
            mem[(2 * ceil32(return_data.size)) + 160] = 100
            mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 292] = 32
            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 456] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if poolInfo[arg1].field_0:
                        revert with memory
                          from 128
                           len poolInfo[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolInfo[arg1].field_0:
                    require poolInfo[arg1].field_0 >= 32
                    require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 388] == bool(mem[(2 * ceil32(return_data.size)) + 388])
                    if not mem[(2 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 164] = poolInfo[arg1].field_256
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args poolInfo[arg1].field_256
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 196] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 228] = poolInfo[arg1].field_256
            mem[(4 * ceil32(return_data.size)) + 260] = arg2
            mem[(4 * ceil32(return_data.size)) + 160] = 100
            mem[(4 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0x23b872dd(?????)
            mem[(4 * ceil32(return_data.size)) + 292] = 32
            mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 356 len 128] = unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0
            mem[(4 * ceil32(return_data.size)) + 456] = 0
            call poolInfo[arg1].field_0 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, poolInfo[arg1].field_256, arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if poolInfo[arg1].field_0:
                        revert with memory
                          from 128
                           len poolInfo[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolInfo[arg1].field_0:
                    require poolInfo[arg1].field_0 >= 32
                    require poolInfo[arg1].field_256 == bool(poolInfo[arg1].field_256)
                    if not poolInfo[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
                    if not mem[(4 * ceil32(return_data.size)) + 388]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args poolInfo[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.0xb6b55f25 with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userRuleLength[arg1][address(msg.sender)].field_0 > !ext_call.return_data[0]:
        revert with 0, 17
    userRuleLength[arg1][address(msg.sender)].field_0 += ext_call.return_data[0]
    if not userStakedPoolLength[address(msg.sender)][1][arg1]:
        userStakedPoolLength[address(msg.sender)]++
        userStakedPoolLength[address(msg.sender)][userStakedPoolLength[address(msg.sender)]] = arg1
        userStakedPoolLength[address(msg.sender)][1][arg1] = userStakedPoolLength[address(msg.sender)]
    emit Deposit(0, msg.sender, arg1);
    stor1.length = 1
}

function stakedTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[96] = poolInfo[arg1].field_0
    mem[128] = poolInfo[arg1].field_256
    mem[0] = arg2
    mem[32] = sha3(arg1, 3)
    mem[160] = userRuleLength[arg1][address(arg2)].field_0
    mem[64] = (32 * userRuleLength[arg1][address(arg2)].field_256) + 256
    mem[224] = userRuleLength[arg1][address(arg2)].field_256
    s = 256
    idx = 0
    while idx < userRuleLength[arg1][address(arg2)].field_256:
        mem[0] = sha3(address(arg2), sha3(arg1, 3)) + 1
        _35 = mem[64]
        mem[64] = mem[64] + 192
        mem[_35] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_0
        _36 = mem[64]
        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256) + 32
        mem[_36] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256
        if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256:
            mem[_35 + 32] = _36
            _37 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) + 32
            mem[_37] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512:
                mem[_35 + 64] = _37
                mem[_35 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
                _40 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
                mem[_40] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                    mem[_35 + 128] = _40
                    _42 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_42] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_42 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _42 + 32
                        u = sha3(mem[0])
                        while _42 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_35 + 160] = _42
                else:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                    mem[_40 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                    t = _40 + 32
                    u = sha3(mem[0])
                    while _40 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_35 + 128] = _40
                    _55 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_55] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_55 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _55 + 32
                        u = sha3(mem[0])
                        while _55 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_35 + 160] = _55
                mem[s] = _35
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 2
            mem[_37 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 2)].field_0
            t = _37 + 32
            u = sha3(mem[0])
            while _37 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_512) > t:
                mem[t + 32] = address(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_35 + 64] = _37
            mem[_35 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_768
            _56 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024) + 32
            mem[_56] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024:
                mem[_35 + 128] = _56
                _59 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) + 32
                mem[_59] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 5
                    mem[_59 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 5)].field_0
                    s = _59 + 32
                    v = sha3(mem[0])
                    while _59 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) > s:
                        mem[s + 32] = address(stor1[v])
                        s = s + 32
                        v = v + 1
                        continue 
                mem[_35 + 160] = _59
            else:
                mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 4
                mem[_56 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 4)].field_0
                s = _56 + 32
                v = sha3(mem[0])
                while _56 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
                mem[_35 + 128] = _56
                _67 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) + 32
                mem[_67] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 5
                    mem[_67 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 5)].field_0
                    s = _67 + 32
                    v = sha3(mem[0])
                    while _67 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) > s:
                        mem[s + 32] = address(stor1[v])
                        s = s + 32
                        v = v + 1
                        continue 
                mem[_35 + 160] = _67
            mem[t] = _35
            t = t + 32
            u = u + 1
            continue 
        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 1
        mem[_36 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 1)].field_0
        t = _36 + 32
        u = sha3(mem[0])
        while _36 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256) > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_35 + 32] = _36
        _57 = mem[64]
        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) + 32
        mem[_57] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512
        if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512:
            mem[_35 + 64] = _57
            mem[_35 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
            _61 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
            mem[_61] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                mem[_35 + 128] = _61
                _64 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                mem[_64] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                    mem[_64 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                    t = _64 + 32
                    u = sha3(mem[0])
                    while _64 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_35 + 160] = _64
            else:
                mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                mem[_61 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                t = _61 + 32
                u = sha3(mem[0])
                while _61 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_35 + 128] = _61
                _68 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                mem[_68] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                    mem[_68 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                    t = _68 + 32
                    u = sha3(mem[0])
                    while _68 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_35 + 160] = _68
        else:
            mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 2
            mem[_57 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 2)].field_0
            t = _57 + 32
            u = sha3(mem[0])
            while _57 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) > t:
                mem[t + 32] = address(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_35 + 64] = _57
            mem[_35 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
            _69 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
            mem[_69] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                mem[_35 + 128] = _69
                _72 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                mem[_72] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                    mem[_72 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                    t = _72 + 32
                    u = sha3(mem[0])
                    while _72 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_35 + 160] = _72
            else:
                mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                mem[_69 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                t = _69 + 32
                u = sha3(mem[0])
                while _69 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_35 + 128] = _69
                _75 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                mem[_75] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                    mem[_75 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                    t = _75 + 32
                    u = sha3(mem[0])
                    while _75 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_35 + 160] = _75
        mem[s] = _35
        s = s + 32
        idx = idx + 1
        continue 
    mem[192] = 224
    _31 = mem[128]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x44a3955e with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _39 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _44 = mem[_39]
    if mem[_39] <= 0:
        return 0
    require ext_code.size(address(_31))
    staticcall address(_31).0x40a65823 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _48 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[160] and mem[_48] > -1 / mem[160]:
        revert with 0, 17
    if not _44:
        revert with 0, 18
    mem[mem[64]] = mem[160] * mem[_48] / _44
    return memory
      from mem[64]
       len 32
}

function checkRule(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    mem[32] = sha3(arg1, 3)
    if arg3 >= userRuleLength[arg1][address(arg2)].field_256:
        revert with 0, 50
    mem[96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0
    mem[288] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
    if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256:
        mem[128] = 288
        mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
        if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
            mem[160] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320
            mem[192] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_768
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024:
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280:
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 644
                    while idx < mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416 len 4] with:
                            gas gas_remaining wei
                           args mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420 len (96 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320]) + 224]
                else:
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_0
                    idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416
                    s = 0
                    while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 384 > idx:
                        mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 644
                    while idx < mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416 len 4] with:
                            gas gas_remaining wei
                           args mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420 len (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320]) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return bool(ext_call.return_data[0])
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 384] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 4)].field_0
            idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 384
            s = 0
            while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 352 > idx:
                mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 4)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[224] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352
            mem[64] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280:
                if arg1 >= poolInfo.length:
                    revert with 0, 50
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                idx = 0
                s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                t = (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 644
                while idx < mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416 len 4] with:
                        gas gas_remaining wei
                       args mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420 len (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320]) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return bool(ext_call.return_data[0])
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_0
            idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416
            s = 0
            while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 384 > idx:
                mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
            if arg1 >= poolInfo.length:
                revert with 0, 50
            mem[0] = 2
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
            mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
            idx = 0
            s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
            t = mem[64] + (32 * mem[288]) + 228
            while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
            staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _343 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_343] == bool(mem[_343])
            mem[mem[64]] = bool(mem[_343])
        else:
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 2)].field_0
            idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
            s = 0
            while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 320 > idx:
                mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 2)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[160] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320
            mem[192] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_768
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024:
                mem[224] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352
                mem[64] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280:
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    var23001 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    var23002 = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 644
                    while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416 len 4] with:
                            gas gas_remaining wei
                           args mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420 len (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return bool(ext_call.return_data[0])
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_0
                idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416
                s = 0
                while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 384 > idx:
                    mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
                if arg1 >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                idx = 0
                s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                t = mem[64] + (32 * mem[288]) + 228
                while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _344 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_344] == bool(mem[_344])
                mem[mem[64]] = bool(mem[_344])
            else:
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 384] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 4)].field_0
                idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 384
                s = 0
                while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 352 > idx:
                    mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 4)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[224] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352
                mem[64] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280:
                    mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = mem[64] + (32 * mem[288]) + 228
                    while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_345] == bool(mem[_345])
                    mem[mem[64]] = bool(mem[_345])
                else:
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_0
                    idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416
                    s = 0
                    while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 384 > idx:
                        mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = mem[64] + (32 * mem[288]) + 228
                    while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _445 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_445] == bool(mem[_445])
                    mem[mem[64]] = bool(mem[_445])
    else:
        mem[320] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 1)].field_0
        idx = 320
        s = 0
        while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 288 > idx:
            mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[128] = 288
        mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
        if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
            mem[160] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320
            mem[192] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_768
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024:
                mem[224] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352
                mem[64] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280:
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    var23001 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    var23002 = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 644
                    while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416 len 4] with:
                            gas gas_remaining wei
                           args mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420 len (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return bool(ext_call.return_data[0])
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_0
                idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416
                s = 0
                while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 384 > idx:
                    mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
                if arg1 >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 2
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                var27001 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                var27002 = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                idx = 0
                s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                t = mem[64] + (32 * mem[288]) + 228
                while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _347 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_347] == bool(mem[_347])
                mem[mem[64]] = bool(mem[_347])
            else:
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 384] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 4)].field_0
                idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 384
                s = 0
                while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 352 > idx:
                    mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 4)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[224] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352
                mem[64] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280:
                    mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    var27001 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    var27002 = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = mem[64] + (32 * mem[288]) + 228
                    while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_348] == bool(mem[_348])
                    mem[mem[64]] = bool(mem[_348])
                else:
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_0
                    idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416
                    s = 0
                    while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 384 > idx:
                        mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = mem[64] + (32 * mem[288]) + 228
                    while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _446 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_446] == bool(mem[_446])
                    mem[mem[64]] = bool(mem[_446])
        else:
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 2)].field_0
            idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
            s = 0
            while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 320 > idx:
                mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 2)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[160] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320
            mem[192] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_768
            mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024:
                mem[224] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352
                mem[64] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280:
                    mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    var27001 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    var27002 = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 320
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = mem[64] + (32 * mem[288]) + 228
                    while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_350] == bool(mem[_350])
                    mem[mem[64]] = bool(mem[_350])
                else:
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_0
                    idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416
                    s = 0
                    while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 384 > idx:
                        mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = mem[64] + (32 * mem[288]) + 228
                    while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _447 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_447] == bool(mem[_447])
                    mem[mem[64]] = bool(mem[_447])
            else:
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 384] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 4)].field_0
                idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 384
                s = 0
                while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 352 > idx:
                    mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 4)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[224] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + 352
                mem[64] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416
                mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280:
                    mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = mem[64] + (32 * mem[288]) + 228
                    while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _448 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_448] == bool(mem[_448])
                    mem[mem[64]] = bool(mem[_448])
                else:
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_0
                    idx = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 416
                    s = 0
                    while (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 384 > idx:
                        mem[idx + 32] = stor[s + sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[256] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + 384
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 416] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 420] = poolInfo[arg1].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 452] = arg2
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 484] = arg1
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 516] = 160
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 580] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256] = mem[320 len 32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256]
                    mem[(32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 548] = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 192
                    mem[(64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + 612] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512
                    idx = 0
                    s = (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + 352
                    t = mem[64] + (32 * mem[288]) + 228
                    while idx < stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0)
                    staticcall stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_0.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_256) + (64 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_512) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1024) + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * arg3)].field_1280) + -mem[64] + 640]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_479] == bool(mem[_479])
                    mem[mem[64]] = bool(mem[_479])
    return memory
      from mem[64]
       len 32
}

function executeRule(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require not ext_code.size(msg.sender)
    require msg.sender == tx.origin
    if stor13:
        revert with 0, 'executeRule: LOCKED'
    stor13 = 1
    mem[0] = arg2
    mem[32] = sha3(arg1, 3)
    mem[96] = userRuleLength[arg1][address(arg2)].field_0
    mem[64] = (32 * userRuleLength[arg1][address(arg2)].field_256) + 192
    mem[160] = userRuleLength[arg1][address(arg2)].field_256
    s = 192
    idx = 0
    while idx < userRuleLength[arg1][address(arg2)].field_256:
        mem[0] = sha3(address(arg2), sha3(arg1, 3)) + 1
        _1583 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1583] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_0
        _1584 = mem[64]
        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256) + 32
        mem[_1584] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256
        if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256:
            mem[_1583 + 32] = _1584
            _1586 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) + 32
            mem[_1586] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512:
                mem[_1583 + 64] = _1586
                mem[_1583 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
                _1593 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
                mem[_1593] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                    mem[_1583 + 128] = _1593
                    _1595 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_1595] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_1595 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _1595 + 32
                        u = sha3(mem[0])
                        while _1595 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1583 + 160] = _1595
                else:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                    mem[_1593 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                    t = _1593 + 32
                    u = sha3(mem[0])
                    while _1593 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_1583 + 128] = _1593
                    _4707 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_4707] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_4707 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _4707 + 32
                        u = sha3(mem[0])
                        while _4707 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_1583 + 160] = _4707
                mem[s] = _1583
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 2
            mem[_1586 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 2)].field_0
            t = _1586 + 32
            u = sha3(mem[0])
            while _1586 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_512) > t:
                mem[t + 32] = address(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1583 + 64] = _1586
            mem[_1583 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_768
            _4708 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024) + 32
            mem[_4708] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024:
                mem[_1583 + 128] = _4708
                _4712 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) + 32
                mem[_4712] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 5
                    mem[_4712 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 5)].field_0
                    s = _4712 + 32
                    v = sha3(mem[0])
                    while _4712 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) > s:
                        mem[s + 32] = address(stor1[v])
                        s = s + 32
                        v = v + 1
                        continue 
                mem[_1583 + 160] = _4712
            else:
                mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 4
                mem[_4708 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 4)].field_0
                s = _4708 + 32
                v = sha3(mem[0])
                while _4708 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024) > s:
                    mem[s + 32] = uint256(stor1[v])
                    s = s + 32
                    v = v + 1
                    continue 
                mem[_1583 + 128] = _4708
                _7803 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) + 32
                mem[_7803] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 5
                    mem[_7803 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 5)].field_0
                    s = _7803 + 32
                    v = sha3(mem[0])
                    while _7803 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) > s:
                        mem[s + 32] = address(stor1[v])
                        s = s + 32
                        v = v + 1
                        continue 
                mem[_1583 + 160] = _7803
            mem[t] = _1583
            t = t + 32
            u = u + 1
            continue 
        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 1
        mem[_1584 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 1)].field_0
        t = _1584 + 32
        u = sha3(mem[0])
        while _1584 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256) > t:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[_1583 + 32] = _1584
        _4709 = mem[64]
        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) + 32
        mem[_4709] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512
        if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512:
            mem[_1583 + 64] = _4709
            mem[_1583 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
            _4714 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
            mem[_4714] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                mem[_1583 + 128] = _4714
                _4717 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                mem[_4717] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                    mem[_4717 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                    t = _4717 + 32
                    u = sha3(mem[0])
                    while _4717 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_1583 + 160] = _4717
            else:
                mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                mem[_4714 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                t = _4714 + 32
                u = sha3(mem[0])
                while _4714 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1583 + 128] = _4714
                _7804 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                mem[_7804] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                    mem[_7804 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                    t = _7804 + 32
                    u = sha3(mem[0])
                    while _7804 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_1583 + 160] = _7804
        else:
            mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 2
            mem[_4709 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 2)].field_0
            t = _4709 + 32
            u = sha3(mem[0])
            while _4709 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) > t:
                mem[t + 32] = address(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_1583 + 64] = _4709
            mem[_1583 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
            _7805 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
            mem[_7805] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                mem[_1583 + 128] = _7805
                _7810 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                mem[_7810] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                    mem[_7810 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                    t = _7810 + 32
                    u = sha3(mem[0])
                    while _7810 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_1583 + 160] = _7810
            else:
                mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                mem[_7805 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                t = _7805 + 32
                u = sha3(mem[0])
                while _7805 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_1583 + 128] = _7805
                _10845 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                mem[_10845] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                    mem[_10845 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                    t = _10845 + 32
                    u = sha3(mem[0])
                    while _10845 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                        mem[t + 32] = address(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                mem[_1583 + 160] = _10845
        mem[s] = _1583
        s = s + 32
        idx = idx + 1
        continue 
    mem[128] = 160
    if arg3 >= mem[160]:
        revert with 0, 50
    _1585 = mem[(32 * arg3) + 192]
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[0] = 2
    _1589 = mem[mem[(32 * arg3) + 192]]
    _1590 = mem[mem[(32 * arg3) + 192] + 32]
    _1591 = mem[mem[(32 * arg3) + 192] + 64]
    _1592 = mem[64]
    mem[mem[64]] = 0xabe039fb00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = poolInfo[arg1].field_256
    mem[mem[64] + 36] = arg2
    mem[mem[64] + 68] = arg1
    mem[mem[64] + 100] = 160
    _1597 = mem[_1590]
    mem[mem[64] + 164] = mem[_1590]
    mem[mem[64] + 196 len 32 * _1597] = mem[_1590 + 32 len 32 * _1597]
    mem[mem[64] + 132] = (32 * _1597) + 192
    _3154 = mem[_1591]
    mem[mem[64] + (32 * _1597) + 196] = mem[_1591]
    idx = 0
    s = _1591 + 32
    t = mem[64] + (32 * _1597) + 228
    while idx < _3154:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(_1589))
    staticcall address(_1589).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _1592 + (32 * _1597) + (32 * _3154) + -mem[64] + 224]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4721 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_4721] == bool(mem[_4721])
    if not mem[_4721]:
        revert with 0, 'executeAction: CONDITION_NOT_MET'
    mem[mem[64] + 4] = 0
    require ext_code.size(poolInfo[arg1].field_256)
    call poolInfo[arg1].field_256.0xfdb5fefc with:
         gas gas_remaining wei
        args 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        _4728 = mem[_1585 + 96]
        _4729 = mem[_1585 + 128]
        _4730 = mem[_1585 + 160]
        _4731 = mem[64]
        mem[mem[64]] = 0xbb73d62a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = poolInfo[arg1].field_256
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = arg1
        mem[mem[64] + 100] = 160
        _4733 = mem[_4729]
        mem[mem[64] + 164] = mem[_4729]
        mem[mem[64] + 196 len 32 * _4733] = mem[_4729 + 32 len 32 * _4733]
        mem[mem[64] + 132] = (32 * _4733) + 192
        _6273 = mem[_4730]
        mem[mem[64] + (32 * _4733) + 196] = mem[_4730]
        idx = 0
        s = _4730 + 32
        t = mem[64] + (32 * _4733) + 228
        while idx < _6273:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(_4728))
        staticcall address(_4728).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _4731 + (32 * _4733) + (32 * _6273) + -mem[64] + 224]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7815 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _7817 = mem[_7815]
        _7818 = mem[_7815 + 32]
        require mem[_7815 + 32] == mem[_7815 + 44 len 20]
        if arg1 >= poolInfo.length:
            revert with 0, 50
        mem[0] = 2
        _7822 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7822] = poolInfo[arg1].field_0
        mem[_7822 + 32] = poolInfo[arg1].field_256
        mem[0] = arg2
        mem[32] = sha3(arg1, 3)
        _7825 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7825] = userRuleLength[arg1][address(arg2)].field_0
        _7826 = mem[64]
        mem[64] = mem[64] + (32 * userRuleLength[arg1][address(arg2)].field_256) + 32
        mem[_7826] = userRuleLength[arg1][address(arg2)].field_256
        s = _7826 + 32
        idx = 0
        while idx < userRuleLength[arg1][address(arg2)].field_256:
            mem[0] = sha3(address(arg2), sha3(arg1, 3)) + 1
            _9343 = mem[64]
            mem[64] = mem[64] + 192
            mem[_9343] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_0
            _9344 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256) + 32
            mem[_9344] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256:
                mem[_9343 + 32] = _9344
                _9351 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) + 32
                mem[_9351] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512:
                    mem[_9343 + 64] = _9351
                    mem[_9343 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
                    _9356 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
                    mem[_9356] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
                    if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                        mem[_9343 + 128] = _9356
                        _9361 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                        mem[_9361] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                            mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                            mem[_9361 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                            t = _9361 + 32
                            u = sha3(mem[0])
                            while _9361 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_9343 + 160] = _9361
                    else:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                        mem[_9356 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                        t = _9356 + 32
                        u = sha3(mem[0])
                        while _9356 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_9343 + 128] = _9356
                        _11399 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                        mem[_11399] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                            mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                            mem[_11399 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                            t = _11399 + 32
                            u = sha3(mem[0])
                            while _11399 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_9343 + 160] = _11399
                    mem[s] = _9343
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 2
                mem[_9351 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 2)].field_0
                t = _9351 + 32
                u = sha3(mem[0])
                while _9351 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_512) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_9343 + 64] = _9351
                mem[_9343 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_768
                _11400 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024) + 32
                mem[_11400] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024:
                    mem[_9343 + 128] = _11400
                    _11452 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) + 32
                    mem[_11452] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 5
                        mem[_11452 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 5)].field_0
                        s = _11452 + 32
                        v = sha3(mem[0])
                        while _11452 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) > s:
                            mem[s + 32] = address(stor1[v])
                            s = s + 32
                            v = v + 1
                            continue 
                    mem[_9343 + 160] = _11452
                else:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 4
                    mem[_11400 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 4)].field_0
                    s = _11400 + 32
                    v = sha3(mem[0])
                    while _11400 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024) > s:
                        mem[s + 32] = uint256(stor1[v])
                        s = s + 32
                        v = v + 1
                        continue 
                    mem[_9343 + 128] = _11400
                    _11791 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) + 32
                    mem[_11791] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 5
                        mem[_11791 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 5)].field_0
                        s = _11791 + 32
                        v = sha3(mem[0])
                        while _11791 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) > s:
                            mem[s + 32] = address(stor1[v])
                            s = s + 32
                            v = v + 1
                            continue 
                    mem[_9343 + 160] = _11791
                mem[t] = _9343
                t = t + 32
                u = u + 1
                continue 
            mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 1
            mem[_9344 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 1)].field_0
            t = _9344 + 32
            u = sha3(mem[0])
            while _9344 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_9343 + 32] = _9344
            _11401 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) + 32
            mem[_11401] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512:
                mem[_9343 + 64] = _11401
                mem[_9343 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
                _11454 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
                mem[_11454] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                    mem[_9343 + 128] = _11454
                    _11508 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_11508] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_11508 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _11508 + 32
                        u = sha3(mem[0])
                        while _11508 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_9343 + 160] = _11508
                else:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                    mem[_11454 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                    t = _11454 + 32
                    u = sha3(mem[0])
                    while _11454 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_9343 + 128] = _11454
                    _11792 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_11792] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_11792 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _11792 + 32
                        u = sha3(mem[0])
                        while _11792 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_9343 + 160] = _11792
            else:
                mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 2
                mem[_11401 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 2)].field_0
                t = _11401 + 32
                u = sha3(mem[0])
                while _11401 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_9343 + 64] = _11401
                mem[_9343 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
                _11793 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
                mem[_11793] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                    mem[_9343 + 128] = _11793
                    _11799 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_11799] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_11799 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _11799 + 32
                        u = sha3(mem[0])
                        while _11799 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_9343 + 160] = _11799
                else:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                    mem[_11793 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                    t = _11793 + 32
                    u = sha3(mem[0])
                    while _11793 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_9343 + 128] = _11793
                    _11807 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_11807] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_11807 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _11807 + 32
                        u = sha3(mem[0])
                        while _11807 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_9343 + 160] = _11807
            mem[s] = _9343
            s = s + 32
            idx = idx + 1
            continue 
        mem[_7825 + 32] = _7826
        _9339 = mem[_7822 + 32]
        require ext_code.size(mem[_7822 + 44 len 20])
        staticcall mem[_7822 + 44 len 20].0x44a3955e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9355 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _9365 = mem[_9355]
        if mem[_9355] <= 0:
            if _7817 > 0:
                _9384 = mem[_1585 + 128]
                _9385 = mem[_1585 + 160]
                _9386 = mem[64]
                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = poolInfo[arg1].field_256
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = arg1
                mem[mem[64] + 100] = 160
                _9393 = mem[_9384]
                mem[mem[64] + 164] = mem[_9384]
                mem[mem[64] + 196 len 32 * _9393] = mem[_9384 + 32 len 32 * _9393]
                mem[mem[64] + 132] = (32 * _9393) + 192
                _10984 = mem[_9385]
                mem[mem[64] + (32 * _9393) + 196] = mem[_9385]
                idx = 0
                s = _9385 + 32
                t = mem[64] + (32 * _9393) + 228
                while idx < _10984:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(_4728))
                call address(_4728).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _9386 + (32 * _9393) + (32 * _10984) + -mem[64] + 224]
            else:
                if not _7817:
                    _9376 = mem[_1585 + 128]
                    _9377 = mem[_1585 + 160]
                    _9378 = mem[64]
                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = 160
                    _9391 = mem[_9376]
                    mem[mem[64] + 164] = mem[_9376]
                    mem[mem[64] + 196 len 32 * _9391] = mem[_9376 + 32 len 32 * _9391]
                    mem[mem[64] + 132] = (32 * _9391) + 192
                    _10969 = mem[_9377]
                    mem[mem[64] + (32 * _9391) + 196] = mem[_9377]
                    idx = 0
                    s = _9377 + 32
                    t = mem[64] + (32 * _9391) + 228
                    while idx < _10969:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_4728))
                    call address(_4728).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9378 + (32 * _9391) + (32 * _10969) + -mem[64] + 224]
                else:
                    if _7817 and ruleFee > -1 / _7817:
                        revert with 0, 17
                    if stor1.length == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1.length = 2
                    if not _7817:
                        revert with 0, '_withdrawFrom: MUST_BE_GREATER_THAN_ZERO'
                    mem[32] = sha3(arg1, 3)
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x44a3955e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9448 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9458 = mem[_9448]
                    if not userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 'withdraw: NO_SHARES'
                    if mem[_9448] <= 0:
                        revert with 0, 'withdraw: NO_SHARES'
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x40a65823 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9530 = mem[_9511]
                    if userRuleLength[arg1][address(arg2)].field_0 and mem[_9511] > -1 / userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not _9458:
                        revert with 0, 18
                    if _7817 <= userRuleLength[arg1][address(arg2)].field_0 * mem[_9511] / _9458:
                        mem[mem[64] + 4] = _7817
                        mem[mem[64] + 36] = address(_7818)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _7817 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args _7817, address(_7818), msg.sender, _7817 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9578 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9578]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = _7817
                                emit Withdraw(_7817, arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9675 = mem[_1585 + 128]
                                _9676 = mem[_1585 + 160]
                                _9677 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9714 = mem[_9675]
                                mem[mem[64] + 164] = mem[_9675]
                                mem[mem[64] + 196 len 32 * _9714] = mem[_9675 + 32 len 32 * _9714]
                                var132001 = _9714
                                var132002 = _9675 + (32 * _9714) + 32
                                var132007 = mem[64] + (32 * _9714) + 196
                                mem[mem[64] + 132] = (32 * _9714) + 192
                                _10974 = mem[_9676]
                                mem[mem[64] + (32 * _9714) + 196] = mem[_9676]
                                idx = 0
                                s = _9676 + 32
                                t = mem[64] + (32 * _9714) + 228
                                while idx < _10974:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9677 + (32 * _9714) + (32 * _10974) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _7817
                                    emit Withdraw(_7817, arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _9891 = mem[_1585 + 128]
                                    _9892 = mem[_1585 + 160]
                                    _9893 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _9956 = mem[_9891]
                                    mem[mem[64] + 164] = mem[_9891]
                                    mem[mem[64] + 196 len 32 * _9956] = mem[_9891 + 32 len 32 * _9956]
                                    var140001 = _9956
                                    var140002 = _9891 + (32 * _9956) + 32
                                    var140007 = mem[64] + (32 * _9956) + 196
                                    mem[mem[64] + 132] = (32 * _9956) + 192
                                    _10975 = mem[_9892]
                                    mem[mem[64] + (32 * _9956) + 196] = mem[_9892]
                                    idx = 0
                                    s = _9892 + 32
                                    t = mem[64] + (32 * _9956) + 228
                                    while idx < _10975:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9893 + (32 * _9956) + (32 * _10975) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _7817
                                    emit Withdraw(_7817, arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _9990 = mem[_1585 + 128]
                                    _9991 = mem[_1585 + 160]
                                    _9992 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10102 = mem[_9990]
                                    mem[mem[64] + 164] = mem[_9990]
                                    mem[mem[64] + 196 len 32 * _10102] = mem[_9990 + 32 len 32 * _10102]
                                    var143001 = _10102
                                    var143002 = _9990 + (32 * _10102) + 32
                                    var143007 = mem[64] + (32 * _10102) + 196
                                    mem[mem[64] + 132] = (32 * _10102) + 192
                                    _10976 = mem[_9991]
                                    mem[mem[64] + (32 * _10102) + 196] = mem[_9991]
                                    idx = 0
                                    s = _9991 + 32
                                    t = mem[64] + (32 * _10102) + 228
                                    while idx < _10976:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9992 + (32 * _10102) + (32 * _10976) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9578]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9578]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9578]:
                                mem[mem[64]] = _7817
                                emit Withdraw(_7817, arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9631 = mem[_1585 + 128]
                                _9632 = mem[_1585 + 160]
                                _9633 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9653 = mem[_9631]
                                mem[mem[64] + 164] = mem[_9631]
                                mem[mem[64] + 196 len 32 * _9653] = mem[_9631 + 32 len 32 * _9653]
                                mem[mem[64] + 132] = (32 * _9653) + 192
                                _10970 = mem[_9632]
                                mem[mem[64] + (32 * _9653) + 196] = mem[_9632]
                                idx = 0
                                s = _9632 + 32
                                t = mem[64] + (32 * _9653) + 228
                                while idx < _10970:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9633 + (32 * _9653) + (32 * _10970) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = _7817
                                    emit Withdraw(_7817, arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _9711 = mem[_1585 + 128]
                                    _9712 = mem[_1585 + 160]
                                    _9713 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _9775 = mem[_9711]
                                    mem[mem[64] + 164] = mem[_9711]
                                    mem[mem[64] + 196 len 32 * _9775] = mem[_9711 + 32 len 32 * _9775]
                                    mem[mem[64] + 132] = (32 * _9775) + 192
                                    _10971 = mem[_9712]
                                    mem[mem[64] + (32 * _9775) + 196] = mem[_9712]
                                    idx = 0
                                    s = _9712 + 32
                                    t = mem[64] + (32 * _9775) + 228
                                    while idx < _10971:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9713 + (32 * _9775) + (32 * _10971) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _7817
                                        emit Withdraw(_7817, arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _9951 = mem[_1585 + 128]
                                        _9952 = mem[_1585 + 160]
                                        _9953 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10044 = mem[_9951]
                                        mem[mem[64] + 164] = mem[_9951]
                                        mem[mem[64] + 196 len 32 * _10044] = mem[_9951 + 32 len 32 * _10044]
                                        var142001 = _10044
                                        var142002 = _9951 + (32 * _10044) + 32
                                        var142007 = mem[64] + (32 * _10044) + 196
                                        mem[mem[64] + 132] = (32 * _10044) + 192
                                        _10972 = mem[_9952]
                                        mem[mem[64] + (32 * _10044) + 196] = mem[_9952]
                                        idx = 0
                                        s = _9952 + 32
                                        t = mem[64] + (32 * _10044) + 228
                                        while idx < _10972:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _9953 + (32 * _10044) + (32 * _10972) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _7817
                                        emit Withdraw(_7817, arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _10099 = mem[_1585 + 128]
                                        _10100 = mem[_1585 + 160]
                                        _10101 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10211 = mem[_10099]
                                        mem[mem[64] + 164] = mem[_10099]
                                        mem[mem[64] + 196 len 32 * _10211] = mem[_10099 + 32 len 32 * _10211]
                                        var145001 = _10211
                                        var145002 = _10099 + (32 * _10211) + 32
                                        var145007 = mem[64] + (32 * _10211) + 196
                                        mem[mem[64] + 132] = (32 * _10211) + 192
                                        _10973 = mem[_10100]
                                        mem[mem[64] + (32 * _10211) + 196] = mem[_10100]
                                        idx = 0
                                        s = _10100 + 32
                                        t = mem[64] + (32 * _10211) + 228
                                        while idx < _10973:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10101 + (32 * _10211) + (32 * _10973) + -mem[64] + 224]
                    else:
                        mem[mem[64] + 4] = userRuleLength[arg1][address(arg2)].field_0 * mem[_9511] / _9458
                        mem[mem[64] + 36] = address(_7818)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _7817 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_7818), msg.sender, _7817 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9582 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9582]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458), arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9694 = mem[_1585 + 128]
                                _9695 = mem[_1585 + 160]
                                _9696 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9749 = mem[_9694]
                                mem[mem[64] + 164] = mem[_9694]
                                mem[mem[64] + 196 len 32 * _9749] = mem[_9694 + 32 len 32 * _9749]
                                var133001 = _9749
                                var133002 = _9694 + (32 * _9749) + 32
                                var133007 = mem[64] + (32 * _9749) + 196
                                mem[mem[64] + 132] = (32 * _9749) + 192
                                _10981 = mem[_9695]
                                mem[mem[64] + (32 * _9749) + 196] = mem[_9695]
                                idx = 0
                                s = _9695 + 32
                                t = mem[64] + (32 * _9749) + 228
                                while idx < _10981:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9696 + (32 * _9749) + (32 * _10981) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _9923 = mem[_1585 + 128]
                                    _9924 = mem[_1585 + 160]
                                    _9925 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _9999 = mem[_9923]
                                    mem[mem[64] + 164] = mem[_9923]
                                    mem[mem[64] + 196 len 32 * _9999] = mem[_9923 + 32 len 32 * _9999]
                                    var141001 = _9999
                                    var141002 = _9923 + (32 * _9999) + 32
                                    var141007 = mem[64] + (32 * _9999) + 196
                                    mem[mem[64] + 132] = (32 * _9999) + 192
                                    _10982 = mem[_9924]
                                    mem[mem[64] + (32 * _9999) + 196] = mem[_9924]
                                    idx = 0
                                    s = _9924 + 32
                                    t = mem[64] + (32 * _9999) + 228
                                    while idx < _10982:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9925 + (32 * _9999) + (32 * _10982) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10049 = mem[_1585 + 128]
                                    _10050 = mem[_1585 + 160]
                                    _10051 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10164 = mem[_10049]
                                    mem[mem[64] + 164] = mem[_10049]
                                    mem[mem[64] + 196 len 32 * _10164] = mem[_10049 + 32 len 32 * _10164]
                                    var144001 = _10164
                                    var144002 = _10049 + (32 * _10164) + 32
                                    var144007 = mem[64] + (32 * _10164) + 196
                                    mem[mem[64] + 132] = (32 * _10164) + 192
                                    _10983 = mem[_10050]
                                    mem[mem[64] + (32 * _10164) + 196] = mem[_10050]
                                    idx = 0
                                    s = _10050 + 32
                                    t = mem[64] + (32 * _10164) + 228
                                    while idx < _10983:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10051 + (32 * _10164) + (32 * _10983) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9582]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9582]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9582]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458), arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9643 = mem[_1585 + 128]
                                _9644 = mem[_1585 + 160]
                                _9645 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9661 = mem[_9643]
                                mem[mem[64] + 164] = mem[_9643]
                                mem[mem[64] + 196 len 32 * _9661] = mem[_9643 + 32 len 32 * _9661]
                                mem[mem[64] + 132] = (32 * _9661) + 192
                                _10977 = mem[_9644]
                                mem[mem[64] + (32 * _9661) + 196] = mem[_9644]
                                idx = 0
                                s = _9644 + 32
                                t = mem[64] + (32 * _9661) + 228
                                while idx < _10977:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9645 + (32 * _9661) + (32 * _10977) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _9746 = mem[_1585 + 128]
                                    _9747 = mem[_1585 + 160]
                                    _9748 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _9809 = mem[_9746]
                                    mem[mem[64] + 164] = mem[_9746]
                                    mem[mem[64] + 196 len 32 * _9809] = mem[_9746 + 32 len 32 * _9809]
                                    mem[mem[64] + 132] = (32 * _9809) + 192
                                    _10978 = mem[_9747]
                                    mem[mem[64] + (32 * _9809) + 196] = mem[_9747]
                                    idx = 0
                                    s = _9747 + 32
                                    t = mem[64] + (32 * _9809) + 228
                                    while idx < _10978:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9748 + (32 * _9809) + (32 * _10978) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458), arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _9994 = mem[_1585 + 128]
                                        _9995 = mem[_1585 + 160]
                                        _9996 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10104 = mem[_9994]
                                        mem[mem[64] + 164] = mem[_9994]
                                        mem[mem[64] + 196 len 32 * _10104] = mem[_9994 + 32 len 32 * _10104]
                                        var143001 = _10104
                                        var143002 = _9994 + (32 * _10104) + 32
                                        var143007 = mem[64] + (32 * _10104) + 196
                                        mem[mem[64] + 132] = (32 * _10104) + 192
                                        _10979 = mem[_9995]
                                        mem[mem[64] + (32 * _10104) + 196] = mem[_9995]
                                        idx = 0
                                        s = _9995 + 32
                                        t = mem[64] + (32 * _10104) + 228
                                        while idx < _10979:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _9996 + (32 * _10104) + (32 * _10979) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9530 / _9458), arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _10161 = mem[_1585 + 128]
                                        _10162 = mem[_1585 + 160]
                                        _10163 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10258 = mem[_10161]
                                        mem[mem[64] + 164] = mem[_10161]
                                        mem[mem[64] + 196 len 32 * _10258] = mem[_10161 + 32 len 32 * _10258]
                                        var146001 = _10258
                                        var146002 = _10161 + (32 * _10258) + 32
                                        var146007 = mem[64] + (32 * _10258) + 196
                                        mem[mem[64] + 132] = (32 * _10258) + 192
                                        _10980 = mem[_10162]
                                        mem[mem[64] + (32 * _10258) + 196] = mem[_10162]
                                        idx = 0
                                        s = _10162 + 32
                                        t = mem[64] + (32 * _10258) + 228
                                        while idx < _10980:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10163 + (32 * _10258) + (32 * _10980) + -mem[64] + 224]
        else:
            require ext_code.size(address(_9339))
            staticcall address(_9339).0x40a65823 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9373 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9375 = mem[_9373]
            _9383 = mem[_7825]
            if mem[_7825] and mem[_9373] > -1 / mem[_7825]:
                revert with 0, 17
            if not _9365:
                revert with 0, 18
            if _7817 <= mem[_7825] * mem[_9373] / _9365:
                if not _7817:
                    _9415 = mem[_1585 + 128]
                    _9416 = mem[_1585 + 160]
                    _9417 = mem[64]
                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = 160
                    _9441 = mem[_9415]
                    mem[mem[64] + 164] = mem[_9415]
                    mem[mem[64] + 196 len 32 * _9441] = mem[_9415 + 32 len 32 * _9441]
                    var93001 = _9441
                    var93002 = _9415 + (32 * _9441) + 32
                    var93007 = mem[64] + (32 * _9441) + 196
                    mem[mem[64] + 132] = (32 * _9441) + 192
                    _10939 = mem[_9416]
                    mem[mem[64] + (32 * _9441) + 196] = mem[_9416]
                    idx = 0
                    s = _9416 + 32
                    t = mem[64] + (32 * _9441) + 228
                    while idx < _10939:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_4728))
                    call address(_4728).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9417 + (32 * _9441) + (32 * _10939) + -mem[64] + 224]
                else:
                    if _7817 and ruleFee > -1 / _7817:
                        revert with 0, 17
                    if stor1.length == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1.length = 2
                    if not _7817:
                        revert with 0, '_withdrawFrom: MUST_BE_GREATER_THAN_ZERO'
                    mem[32] = sha3(arg1, 3)
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x44a3955e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9527 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9537 = mem[_9527]
                    if not userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 'withdraw: NO_SHARES'
                    if mem[_9527] <= 0:
                        revert with 0, 'withdraw: NO_SHARES'
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x40a65823 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9563 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9577 = mem[_9563]
                    if userRuleLength[arg1][address(arg2)].field_0 and mem[_9563] > -1 / userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not _9537:
                        revert with 0, 18
                    if _7817 <= userRuleLength[arg1][address(arg2)].field_0 * mem[_9563] / _9537:
                        mem[mem[64] + 4] = _7817
                        mem[mem[64] + 36] = address(_7818)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _7817 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args _7817, address(_7818), msg.sender, _7817 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9619 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9619]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = _7817
                                emit Withdraw(_7817, arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9942 = mem[_1585 + 128]
                                _9943 = mem[_1585 + 160]
                                _9944 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _10028 = mem[_9942]
                                mem[mem[64] + 164] = mem[_9942]
                                mem[mem[64] + 196 len 32 * _10028] = mem[_9942 + 32 len 32 * _10028]
                                var142001 = _10028
                                var142002 = _9942 + (32 * _10028) + 32
                                var142007 = mem[64] + (32 * _10028) + 196
                                mem[mem[64] + 132] = (32 * _10028) + 192
                                _10944 = mem[_9943]
                                mem[mem[64] + (32 * _10028) + 196] = mem[_9943]
                                idx = 0
                                s = _9943 + 32
                                t = mem[64] + (32 * _10028) + 228
                                while idx < _10944:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9944 + (32 * _10028) + (32 * _10944) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _7817
                                    emit Withdraw(_7817, arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10320 = mem[_1585 + 128]
                                    _10321 = mem[_1585 + 160]
                                    _10322 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10411 = mem[_10320]
                                    mem[mem[64] + 164] = mem[_10320]
                                    mem[mem[64] + 196 len 32 * _10411] = mem[_10320 + 32 len 32 * _10411]
                                    var150001 = _10411
                                    var150002 = _10320 + (32 * _10411) + 32
                                    var150007 = mem[64] + (32 * _10411) + 196
                                    mem[mem[64] + 132] = (32 * _10411) + 192
                                    _10945 = mem[_10321]
                                    mem[mem[64] + (32 * _10411) + 196] = mem[_10321]
                                    idx = 0
                                    s = _10321 + 32
                                    t = mem[64] + (32 * _10411) + 228
                                    while idx < _10945:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10322 + (32 * _10411) + (32 * _10945) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _7817
                                    emit Withdraw(_7817, arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10448 = mem[_1585 + 128]
                                    _10449 = mem[_1585 + 160]
                                    _10450 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10546 = mem[_10448]
                                    mem[mem[64] + 164] = mem[_10448]
                                    mem[mem[64] + 196 len 32 * _10546] = mem[_10448 + 32 len 32 * _10546]
                                    var153001 = _10546
                                    var153002 = _10448 + (32 * _10546) + 32
                                    var153007 = mem[64] + (32 * _10546) + 196
                                    mem[mem[64] + 132] = (32 * _10546) + 192
                                    _10946 = mem[_10449]
                                    mem[mem[64] + (32 * _10546) + 196] = mem[_10449]
                                    idx = 0
                                    s = _10449 + 32
                                    t = mem[64] + (32 * _10546) + 228
                                    while idx < _10946:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10450 + (32 * _10546) + (32 * _10946) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9619]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9619]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9619]:
                                mem[mem[64]] = _7817
                                emit Withdraw(_7817, arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9801 = mem[_1585 + 128]
                                _9802 = mem[_1585 + 160]
                                _9803 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9857 = mem[_9801]
                                mem[mem[64] + 164] = mem[_9801]
                                mem[mem[64] + 196 len 32 * _9857] = mem[_9801 + 32 len 32 * _9857]
                                var137001 = _9857
                                var137002 = _9801 + (32 * _9857) + 32
                                var137007 = mem[64] + (32 * _9857) + 196
                                mem[mem[64] + 132] = (32 * _9857) + 192
                                _10940 = mem[_9802]
                                mem[mem[64] + (32 * _9857) + 196] = mem[_9802]
                                idx = 0
                                s = _9802 + 32
                                t = mem[64] + (32 * _9857) + 228
                                while idx < _10940:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9803 + (32 * _9857) + (32 * _10940) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = _7817
                                    emit Withdraw(_7817, arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10025 = mem[_1585 + 128]
                                    _10026 = mem[_1585 + 160]
                                    _10027 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10137 = mem[_10025]
                                    mem[mem[64] + 164] = mem[_10025]
                                    mem[mem[64] + 196 len 32 * _10137] = mem[_10025 + 32 len 32 * _10137]
                                    var144001 = _10137
                                    var144002 = _10025 + (32 * _10137) + 32
                                    var144007 = mem[64] + (32 * _10137) + 196
                                    mem[mem[64] + 132] = (32 * _10137) + 192
                                    _10941 = mem[_10026]
                                    mem[mem[64] + (32 * _10137) + 196] = mem[_10026]
                                    idx = 0
                                    s = _10026 + 32
                                    t = mem[64] + (32 * _10137) + 228
                                    while idx < _10941:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10027 + (32 * _10137) + (32 * _10941) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _7817
                                        emit Withdraw(_7817, arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _10406 = mem[_1585 + 128]
                                        _10407 = mem[_1585 + 160]
                                        _10408 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10496 = mem[_10406]
                                        mem[mem[64] + 164] = mem[_10406]
                                        mem[mem[64] + 196 len 32 * _10496] = mem[_10406 + 32 len 32 * _10496]
                                        var152001 = _10496
                                        var152002 = _10406 + (32 * _10496) + 32
                                        var152007 = mem[64] + (32 * _10496) + 196
                                        mem[mem[64] + 132] = (32 * _10496) + 192
                                        _10942 = mem[_10407]
                                        mem[mem[64] + (32 * _10496) + 196] = mem[_10407]
                                        idx = 0
                                        s = _10407 + 32
                                        t = mem[64] + (32 * _10496) + 228
                                        while idx < _10942:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10408 + (32 * _10496) + (32 * _10942) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _7817
                                        emit Withdraw(_7817, arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _10543 = mem[_1585 + 128]
                                        _10544 = mem[_1585 + 160]
                                        _10545 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10629 = mem[_10543]
                                        mem[mem[64] + 164] = mem[_10543]
                                        mem[mem[64] + 196 len 32 * _10629] = mem[_10543 + 32 len 32 * _10629]
                                        var155001 = _10629
                                        var155002 = _10543 + (32 * _10629) + 32
                                        var155007 = mem[64] + (32 * _10629) + 196
                                        mem[mem[64] + 132] = (32 * _10629) + 192
                                        _10943 = mem[_10544]
                                        mem[mem[64] + (32 * _10629) + 196] = mem[_10544]
                                        idx = 0
                                        s = _10544 + 32
                                        t = mem[64] + (32 * _10629) + 228
                                        while idx < _10943:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10545 + (32 * _10629) + (32 * _10943) + -mem[64] + 224]
                    else:
                        mem[mem[64] + 4] = userRuleLength[arg1][address(arg2)].field_0 * mem[_9563] / _9537
                        mem[mem[64] + 36] = address(_7818)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _7817 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_7818), msg.sender, _7817 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9629 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9629]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537), arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9980 = mem[_1585 + 128]
                                _9981 = mem[_1585 + 160]
                                _9982 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _10086 = mem[_9980]
                                mem[mem[64] + 164] = mem[_9980]
                                mem[mem[64] + 196 len 32 * _10086] = mem[_9980 + 32 len 32 * _10086]
                                var143001 = _10086
                                var143002 = _9980 + (32 * _10086) + 32
                                var143007 = mem[64] + (32 * _10086) + 196
                                mem[mem[64] + 132] = (32 * _10086) + 192
                                _10951 = mem[_9981]
                                mem[mem[64] + (32 * _10086) + 196] = mem[_9981]
                                idx = 0
                                s = _9981 + 32
                                t = mem[64] + (32 * _10086) + 228
                                while idx < _10951:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9982 + (32 * _10086) + (32 * _10951) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10365 = mem[_1585 + 128]
                                    _10366 = mem[_1585 + 160]
                                    _10367 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10457 = mem[_10365]
                                    mem[mem[64] + 164] = mem[_10365]
                                    mem[mem[64] + 196 len 32 * _10457] = mem[_10365 + 32 len 32 * _10457]
                                    var151001 = _10457
                                    var151002 = _10365 + (32 * _10457) + 32
                                    var151007 = mem[64] + (32 * _10457) + 196
                                    mem[mem[64] + 132] = (32 * _10457) + 192
                                    _10952 = mem[_10366]
                                    mem[mem[64] + (32 * _10457) + 196] = mem[_10366]
                                    idx = 0
                                    s = _10366 + 32
                                    t = mem[64] + (32 * _10457) + 228
                                    while idx < _10952:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10367 + (32 * _10457) + (32 * _10952) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10501 = mem[_1585 + 128]
                                    _10502 = mem[_1585 + 160]
                                    _10503 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10596 = mem[_10501]
                                    mem[mem[64] + 164] = mem[_10501]
                                    mem[mem[64] + 196 len 32 * _10596] = mem[_10501 + 32 len 32 * _10596]
                                    var154001 = _10596
                                    var154002 = _10501 + (32 * _10596) + 32
                                    var154007 = mem[64] + (32 * _10596) + 196
                                    mem[mem[64] + 132] = (32 * _10596) + 192
                                    _10953 = mem[_10502]
                                    mem[mem[64] + (32 * _10596) + 196] = mem[_10502]
                                    idx = 0
                                    s = _10502 + 32
                                    t = mem[64] + (32 * _10596) + 228
                                    while idx < _10953:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10503 + (32 * _10596) + (32 * _10953) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9629]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9629]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9629]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537), arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9829 = mem[_1585 + 128]
                                _9830 = mem[_1585 + 160]
                                _9831 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9884 = mem[_9829]
                                mem[mem[64] + 164] = mem[_9829]
                                mem[mem[64] + 196 len 32 * _9884] = mem[_9829 + 32 len 32 * _9884]
                                var138001 = _9884
                                var138002 = _9829 + (32 * _9884) + 32
                                var138007 = mem[64] + (32 * _9884) + 196
                                mem[mem[64] + 132] = (32 * _9884) + 192
                                _10947 = mem[_9830]
                                mem[mem[64] + (32 * _9884) + 196] = mem[_9830]
                                idx = 0
                                s = _9830 + 32
                                t = mem[64] + (32 * _9884) + 228
                                while idx < _10947:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9831 + (32 * _9884) + (32 * _10947) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10083 = mem[_1585 + 128]
                                    _10084 = mem[_1585 + 160]
                                    _10085 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10195 = mem[_10083]
                                    mem[mem[64] + 164] = mem[_10083]
                                    mem[mem[64] + 196 len 32 * _10195] = mem[_10083 + 32 len 32 * _10195]
                                    var145001 = _10195
                                    var145002 = _10083 + (32 * _10195) + 32
                                    var145007 = mem[64] + (32 * _10195) + 196
                                    mem[mem[64] + 132] = (32 * _10195) + 192
                                    _10948 = mem[_10084]
                                    mem[mem[64] + (32 * _10195) + 196] = mem[_10084]
                                    idx = 0
                                    s = _10084 + 32
                                    t = mem[64] + (32 * _10195) + 228
                                    while idx < _10948:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10085 + (32 * _10195) + (32 * _10948) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537), arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _10452 = mem[_1585 + 128]
                                        _10453 = mem[_1585 + 160]
                                        _10454 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10548 = mem[_10452]
                                        mem[mem[64] + 164] = mem[_10452]
                                        mem[mem[64] + 196 len 32 * _10548] = mem[_10452 + 32 len 32 * _10548]
                                        var153001 = _10548
                                        var153002 = _10452 + (32 * _10548) + 32
                                        var153007 = mem[64] + (32 * _10548) + 196
                                        mem[mem[64] + 132] = (32 * _10548) + 192
                                        _10949 = mem[_10453]
                                        mem[mem[64] + (32 * _10548) + 196] = mem[_10453]
                                        idx = 0
                                        s = _10453 + 32
                                        t = mem[64] + (32 * _10548) + 228
                                        while idx < _10949:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10454 + (32 * _10548) + (32 * _10949) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9577 / _9537), arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _10593 = mem[_1585 + 128]
                                        _10594 = mem[_1585 + 160]
                                        _10595 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10663 = mem[_10593]
                                        mem[mem[64] + 164] = mem[_10593]
                                        mem[mem[64] + 196 len 32 * _10663] = mem[_10593 + 32 len 32 * _10663]
                                        var156001 = _10663
                                        var156002 = _10593 + (32 * _10663) + 32
                                        var156007 = mem[64] + (32 * _10663) + 196
                                        mem[mem[64] + 132] = (32 * _10663) + 192
                                        _10950 = mem[_10594]
                                        mem[mem[64] + (32 * _10663) + 196] = mem[_10594]
                                        idx = 0
                                        s = _10594 + 32
                                        t = mem[64] + (32 * _10663) + 228
                                        while idx < _10950:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10595 + (32 * _10663) + (32 * _10950) + -mem[64] + 224]
            else:
                if not mem[_7825] * mem[_9373] / _9365:
                    _9429 = mem[_1585 + 128]
                    _9430 = mem[_1585 + 160]
                    _9431 = mem[64]
                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = 160
                    _9447 = mem[_9429]
                    mem[mem[64] + 164] = mem[_9429]
                    mem[mem[64] + 196 len 32 * _9447] = mem[_9429 + 32 len 32 * _9447]
                    mem[mem[64] + 132] = (32 * _9447) + 192
                    _10954 = mem[_9430]
                    mem[mem[64] + (32 * _9447) + 196] = mem[_9430]
                    idx = 0
                    s = _9430 + 32
                    t = mem[64] + (32 * _9447) + 228
                    while idx < _10954:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_4728))
                    call address(_4728).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9431 + (32 * _9447) + (32 * _10954) + -mem[64] + 224]
                else:
                    if mem[_7825] * mem[_9373] / _9365 and ruleFee > -1 / mem[_7825] * mem[_9373] / _9365:
                        revert with 0, 17
                    if stor1.length == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1.length = 2
                    if not mem[_7825] * mem[_9373] / _9365:
                        revert with 0, '_withdrawFrom: MUST_BE_GREATER_THAN_ZERO'
                    mem[32] = sha3(arg1, 3)
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x44a3955e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9539 = mem[_9535]
                    if not userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 'withdraw: NO_SHARES'
                    if mem[_9535] <= 0:
                        revert with 0, 'withdraw: NO_SHARES'
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x40a65823 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9571 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9581 = mem[_9571]
                    if userRuleLength[arg1][address(arg2)].field_0 and mem[_9571] > -1 / userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not _9539:
                        revert with 0, 18
                    if _9383 * _9375 / _9365 <= userRuleLength[arg1][address(arg2)].field_0 * mem[_9571] / _9539:
                        mem[mem[64] + 4] = _9383 * _9375 / _9365
                        mem[mem[64] + 36] = address(_7818)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _9383 * _9375 / _9365 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args _9383 * _9375 / _9365, address(_7818), msg.sender, _9383 * _9375 / _9365 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9630 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9630]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = _9383 * _9375 / _9365
                                emit Withdraw((_9383 * _9375 / _9365), arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9984 = mem[_1585 + 128]
                                _9985 = mem[_1585 + 160]
                                _9986 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _10092 = mem[_9984]
                                mem[mem[64] + 164] = mem[_9984]
                                mem[mem[64] + 196 len 32 * _10092] = mem[_9984 + 32 len 32 * _10092]
                                var143001 = _10092
                                var143002 = _9984 + (32 * _10092) + 32
                                var143007 = mem[64] + (32 * _10092) + 196
                                mem[mem[64] + 132] = (32 * _10092) + 192
                                _10959 = mem[_9985]
                                mem[mem[64] + (32 * _10092) + 196] = mem[_9985]
                                idx = 0
                                s = _9985 + 32
                                t = mem[64] + (32 * _10092) + 228
                                while idx < _10959:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9986 + (32 * _10092) + (32 * _10959) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _9383 * _9375 / _9365
                                    emit Withdraw((_9383 * _9375 / _9365), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10372 = mem[_1585 + 128]
                                    _10373 = mem[_1585 + 160]
                                    _10374 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10464 = mem[_10372]
                                    mem[mem[64] + 164] = mem[_10372]
                                    mem[mem[64] + 196 len 32 * _10464] = mem[_10372 + 32 len 32 * _10464]
                                    var151001 = _10464
                                    var151002 = _10372 + (32 * _10464) + 32
                                    var151007 = mem[64] + (32 * _10464) + 196
                                    mem[mem[64] + 132] = (32 * _10464) + 192
                                    _10960 = mem[_10373]
                                    mem[mem[64] + (32 * _10464) + 196] = mem[_10373]
                                    idx = 0
                                    s = _10373 + 32
                                    t = mem[64] + (32 * _10464) + 228
                                    while idx < _10960:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10374 + (32 * _10464) + (32 * _10960) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _9383 * _9375 / _9365
                                    emit Withdraw((_9383 * _9375 / _9365), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10505 = mem[_1585 + 128]
                                    _10506 = mem[_1585 + 160]
                                    _10507 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10600 = mem[_10505]
                                    mem[mem[64] + 164] = mem[_10505]
                                    mem[mem[64] + 196 len 32 * _10600] = mem[_10505 + 32 len 32 * _10600]
                                    var154001 = _10600
                                    var154002 = _10505 + (32 * _10600) + 32
                                    var154007 = mem[64] + (32 * _10600) + 196
                                    mem[mem[64] + 132] = (32 * _10600) + 192
                                    _10961 = mem[_10506]
                                    mem[mem[64] + (32 * _10600) + 196] = mem[_10506]
                                    idx = 0
                                    s = _10506 + 32
                                    t = mem[64] + (32 * _10600) + 228
                                    while idx < _10961:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10507 + (32 * _10600) + (32 * _10961) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9630]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9630]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9630]:
                                mem[mem[64]] = _9383 * _9375 / _9365
                                emit Withdraw((_9383 * _9375 / _9365), arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9832 = mem[_1585 + 128]
                                _9833 = mem[_1585 + 160]
                                _9834 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9886 = mem[_9832]
                                mem[mem[64] + 164] = mem[_9832]
                                mem[mem[64] + 196 len 32 * _9886] = mem[_9832 + 32 len 32 * _9886]
                                var138001 = _9886
                                var138002 = _9832 + (32 * _9886) + 32
                                var138007 = mem[64] + (32 * _9886) + 196
                                mem[mem[64] + 132] = (32 * _9886) + 192
                                _10955 = mem[_9833]
                                mem[mem[64] + (32 * _9886) + 196] = mem[_9833]
                                idx = 0
                                s = _9833 + 32
                                t = mem[64] + (32 * _9886) + 228
                                while idx < _10955:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9834 + (32 * _9886) + (32 * _10955) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = _9383 * _9375 / _9365
                                    emit Withdraw((_9383 * _9375 / _9365), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10089 = mem[_1585 + 128]
                                    _10090 = mem[_1585 + 160]
                                    _10091 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10201 = mem[_10089]
                                    mem[mem[64] + 164] = mem[_10089]
                                    mem[mem[64] + 196 len 32 * _10201] = mem[_10089 + 32 len 32 * _10201]
                                    var145001 = _10201
                                    var145002 = _10089 + (32 * _10201) + 32
                                    var145007 = mem[64] + (32 * _10201) + 196
                                    mem[mem[64] + 132] = (32 * _10201) + 192
                                    _10956 = mem[_10090]
                                    mem[mem[64] + (32 * _10201) + 196] = mem[_10090]
                                    idx = 0
                                    s = _10090 + 32
                                    t = mem[64] + (32 * _10201) + 228
                                    while idx < _10956:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10091 + (32 * _10201) + (32 * _10956) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _9383 * _9375 / _9365
                                        emit Withdraw((_9383 * _9375 / _9365), arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _10459 = mem[_1585 + 128]
                                        _10460 = mem[_1585 + 160]
                                        _10461 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10553 = mem[_10459]
                                        mem[mem[64] + 164] = mem[_10459]
                                        mem[mem[64] + 196 len 32 * _10553] = mem[_10459 + 32 len 32 * _10553]
                                        var153001 = _10553
                                        var153002 = _10459 + (32 * _10553) + 32
                                        var153007 = mem[64] + (32 * _10553) + 196
                                        mem[mem[64] + 132] = (32 * _10553) + 192
                                        _10957 = mem[_10460]
                                        mem[mem[64] + (32 * _10553) + 196] = mem[_10460]
                                        idx = 0
                                        s = _10460 + 32
                                        t = mem[64] + (32 * _10553) + 228
                                        while idx < _10957:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10461 + (32 * _10553) + (32 * _10957) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _9383 * _9375 / _9365
                                        emit Withdraw((_9383 * _9375 / _9365), arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _10597 = mem[_1585 + 128]
                                        _10598 = mem[_1585 + 160]
                                        _10599 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10665 = mem[_10597]
                                        mem[mem[64] + 164] = mem[_10597]
                                        mem[mem[64] + 196 len 32 * _10665] = mem[_10597 + 32 len 32 * _10665]
                                        var156001 = _10665
                                        var156002 = _10597 + (32 * _10665) + 32
                                        var156007 = mem[64] + (32 * _10665) + 196
                                        mem[mem[64] + 132] = (32 * _10665) + 192
                                        _10958 = mem[_10598]
                                        mem[mem[64] + (32 * _10665) + 196] = mem[_10598]
                                        idx = 0
                                        s = _10598 + 32
                                        t = mem[64] + (32 * _10665) + 228
                                        while idx < _10958:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10599 + (32 * _10665) + (32 * _10958) + -mem[64] + 224]
                    else:
                        mem[mem[64] + 4] = userRuleLength[arg1][address(arg2)].field_0 * mem[_9571] / _9539
                        mem[mem[64] + 36] = address(_7818)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _9383 * _9375 / _9365 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_7818), msg.sender, _9383 * _9375 / _9365 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9642]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539), arg2, address(_7818), arg1);
                                stor1.length = 1
                                _10040 = mem[_1585 + 128]
                                _10041 = mem[_1585 + 160]
                                _10042 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _10154 = mem[_10040]
                                mem[mem[64] + 164] = mem[_10040]
                                mem[mem[64] + 196 len 32 * _10154] = mem[_10040 + 32 len 32 * _10154]
                                var144001 = _10154
                                var144002 = _10040 + (32 * _10154) + 32
                                var144007 = mem[64] + (32 * _10154) + 196
                                mem[mem[64] + 132] = (32 * _10154) + 192
                                _10966 = mem[_10041]
                                mem[mem[64] + (32 * _10154) + 196] = mem[_10041]
                                idx = 0
                                s = _10041 + 32
                                t = mem[64] + (32 * _10154) + 228
                                while idx < _10966:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _10042 + (32 * _10154) + (32 * _10966) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10417 = mem[_1585 + 128]
                                    _10418 = mem[_1585 + 160]
                                    _10419 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10514 = mem[_10417]
                                    mem[mem[64] + 164] = mem[_10417]
                                    mem[mem[64] + 196 len 32 * _10514] = mem[_10417 + 32 len 32 * _10514]
                                    var152001 = _10514
                                    var152002 = _10417 + (32 * _10514) + 32
                                    var152007 = mem[64] + (32 * _10514) + 196
                                    mem[mem[64] + 132] = (32 * _10514) + 192
                                    _10967 = mem[_10418]
                                    mem[mem[64] + (32 * _10514) + 196] = mem[_10418]
                                    idx = 0
                                    s = _10418 + 32
                                    t = mem[64] + (32 * _10514) + 228
                                    while idx < _10967:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10419 + (32 * _10514) + (32 * _10967) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10558 = mem[_1585 + 128]
                                    _10559 = mem[_1585 + 160]
                                    _10560 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10642 = mem[_10558]
                                    mem[mem[64] + 164] = mem[_10558]
                                    mem[mem[64] + 196 len 32 * _10642] = mem[_10558 + 32 len 32 * _10642]
                                    var155001 = _10642
                                    var155002 = _10558 + (32 * _10642) + 32
                                    var155007 = mem[64] + (32 * _10642) + 196
                                    mem[mem[64] + 132] = (32 * _10642) + 192
                                    _10968 = mem[_10559]
                                    mem[mem[64] + (32 * _10642) + 196] = mem[_10559]
                                    idx = 0
                                    s = _10559 + 32
                                    t = mem[64] + (32 * _10642) + 228
                                    while idx < _10968:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10560 + (32 * _10642) + (32 * _10968) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9642]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9642]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9642]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539), arg2, address(_7818), arg1);
                                stor1.length = 1
                                _9859 = mem[_1585 + 128]
                                _9860 = mem[_1585 + 160]
                                _9861 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9917 = mem[_9859]
                                mem[mem[64] + 164] = mem[_9859]
                                mem[mem[64] + 196 len 32 * _9917] = mem[_9859 + 32 len 32 * _9917]
                                var139001 = _9917
                                var139002 = _9859 + (32 * _9917) + 32
                                var139007 = mem[64] + (32 * _9917) + 196
                                mem[mem[64] + 132] = (32 * _9917) + 192
                                _10962 = mem[_9860]
                                mem[mem[64] + (32 * _9917) + 196] = mem[_9860]
                                idx = 0
                                s = _9860 + 32
                                t = mem[64] + (32 * _9917) + 228
                                while idx < _10962:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4728))
                                call address(_4728).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9861 + (32 * _9917) + (32 * _10962) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539), arg2, address(_7818), arg1);
                                    stor1.length = 1
                                    _10151 = mem[_1585 + 128]
                                    _10152 = mem[_1585 + 160]
                                    _10153 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10250 = mem[_10151]
                                    mem[mem[64] + 164] = mem[_10151]
                                    mem[mem[64] + 196 len 32 * _10250] = mem[_10151 + 32 len 32 * _10250]
                                    var146001 = _10250
                                    var146002 = _10151 + (32 * _10250) + 32
                                    var146007 = mem[64] + (32 * _10250) + 196
                                    mem[mem[64] + 132] = (32 * _10250) + 192
                                    _10963 = mem[_10152]
                                    mem[mem[64] + (32 * _10250) + 196] = mem[_10152]
                                    idx = 0
                                    s = _10152 + 32
                                    t = mem[64] + (32 * _10250) + 228
                                    while idx < _10963:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4728))
                                    call address(_4728).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10153 + (32 * _10250) + (32 * _10963) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539), arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _10509 = mem[_1585 + 128]
                                        _10510 = mem[_1585 + 160]
                                        _10511 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10602 = mem[_10509]
                                        mem[mem[64] + 164] = mem[_10509]
                                        mem[mem[64] + 196 len 32 * _10602] = mem[_10509 + 32 len 32 * _10602]
                                        var154001 = _10602
                                        var154002 = _10509 + (32 * _10602) + 32
                                        var154007 = mem[64] + (32 * _10602) + 196
                                        mem[mem[64] + 132] = (32 * _10602) + 192
                                        _10964 = mem[_10510]
                                        mem[mem[64] + (32 * _10602) + 196] = mem[_10510]
                                        idx = 0
                                        s = _10510 + 32
                                        t = mem[64] + (32 * _10602) + 228
                                        while idx < _10964:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10511 + (32 * _10602) + (32 * _10964) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9581 / _9539), arg2, address(_7818), arg1);
                                        stor1.length = 1
                                        _10639 = mem[_1585 + 128]
                                        _10640 = mem[_1585 + 160]
                                        _10641 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10691 = mem[_10639]
                                        mem[mem[64] + 164] = mem[_10639]
                                        mem[mem[64] + 196 len 32 * _10691] = mem[_10639 + 32 len 32 * _10691]
                                        var157001 = _10691
                                        var157002 = _10639 + (32 * _10691) + 32
                                        var157007 = mem[64] + (32 * _10691) + 196
                                        mem[mem[64] + 132] = (32 * _10691) + 192
                                        _10965 = mem[_10640]
                                        mem[mem[64] + (32 * _10691) + 196] = mem[_10640]
                                        idx = 0
                                        s = _10640 + 32
                                        t = mem[64] + (32 * _10691) + 228
                                        while idx < _10965:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4728))
                                        call address(_4728).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10641 + (32 * _10691) + (32 * _10965) + -mem[64] + 224]
    else:
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4735 = mem[_1585 + 96]
        _4736 = mem[_1585 + 128]
        _4737 = mem[_1585 + 160]
        _4738 = mem[64]
        mem[mem[64]] = 0xbb73d62a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = poolInfo[arg1].field_256
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = arg1
        mem[mem[64] + 100] = 160
        _4740 = mem[_4736]
        mem[mem[64] + 164] = mem[_4736]
        mem[mem[64] + 196 len 32 * _4740] = mem[_4736 + 32 len 32 * _4740]
        mem[mem[64] + 132] = (32 * _4740) + 192
        _6274 = mem[_4737]
        mem[mem[64] + (32 * _4740) + 196] = mem[_4737]
        idx = 0
        s = _4737 + 32
        t = mem[64] + (32 * _4740) + 228
        while idx < _6274:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(_4735))
        staticcall address(_4735).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _4738 + (32 * _4740) + (32 * _6274) + -mem[64] + 224]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7816 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _7819 = mem[_7816]
        _7820 = mem[_7816 + 32]
        require mem[_7816 + 32] == mem[_7816 + 44 len 20]
        if arg1 >= poolInfo.length:
            revert with 0, 50
        mem[0] = 2
        _7828 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7828] = poolInfo[arg1].field_0
        mem[_7828 + 32] = poolInfo[arg1].field_256
        mem[0] = arg2
        mem[32] = sha3(arg1, 3)
        _7831 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7831] = userRuleLength[arg1][address(arg2)].field_0
        _7832 = mem[64]
        mem[64] = mem[64] + (32 * userRuleLength[arg1][address(arg2)].field_256) + 32
        mem[_7832] = userRuleLength[arg1][address(arg2)].field_256
        s = _7832 + 32
        idx = 0
        while idx < userRuleLength[arg1][address(arg2)].field_256:
            mem[0] = sha3(address(arg2), sha3(arg1, 3)) + 1
            _9349 = mem[64]
            mem[64] = mem[64] + 192
            mem[_9349] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_0
            _9350 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256) + 32
            mem[_9350] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256:
                mem[_9349 + 32] = _9350
                _9353 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) + 32
                mem[_9353] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512:
                    mem[_9349 + 64] = _9353
                    mem[_9349 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
                    _9359 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
                    mem[_9359] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
                    if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                        mem[_9349 + 128] = _9359
                        _9363 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                        mem[_9363] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                            mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                            mem[_9363 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                            t = _9363 + 32
                            u = sha3(mem[0])
                            while _9363 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_9349 + 160] = _9363
                    else:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                        mem[_9359 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                        t = _9359 + 32
                        u = sha3(mem[0])
                        while _9359 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_9349 + 128] = _9359
                        _11402 = mem[64]
                        mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                        mem[_11402] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                        if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                            mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                            mem[_11402 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                            t = _11402 + 32
                            u = sha3(mem[0])
                            while _11402 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                                mem[t + 32] = address(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                        mem[_9349 + 160] = _11402
                    mem[s] = _9349
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 2
                mem[_9353 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 2)].field_0
                t = _9353 + 32
                u = sha3(mem[0])
                while _9353 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_512) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_9349 + 64] = _9353
                mem[_9349 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_768
                _11403 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024) + 32
                mem[_11403] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024:
                    mem[_9349 + 128] = _11403
                    _11503 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) + 32
                    mem[_11503] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 5
                        mem[_11503 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 5)].field_0
                        s = _11503 + 32
                        v = sha3(mem[0])
                        while _11503 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) > s:
                            mem[s + 32] = address(stor1[v])
                            s = s + 32
                            v = v + 1
                            continue 
                    mem[_9349 + 160] = _11503
                else:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 4
                    mem[_11403 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 4)].field_0
                    s = _11403 + 32
                    v = sha3(mem[0])
                    while _11403 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1024) > s:
                        mem[s + 32] = uint256(stor1[v])
                        s = s + 32
                        v = v + 1
                        continue 
                    mem[_9349 + 128] = _11403
                    _11794 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) + 32
                    mem[_11794] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * u) + 5
                        mem[_11794 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u) + 5)].field_0
                        s = _11794 + 32
                        v = sha3(mem[0])
                        while _11794 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * u)].field_1280) > s:
                            mem[s + 32] = address(stor1[v])
                            s = s + 32
                            v = v + 1
                            continue 
                    mem[_9349 + 160] = _11794
                mem[t] = _9349
                t = t + 32
                u = u + 1
                continue 
            mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 1
            mem[_9350 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 1)].field_0
            t = _9350 + 32
            u = sha3(mem[0])
            while _9350 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_256) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_9349 + 32] = _9350
            _11404 = mem[64]
            mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) + 32
            mem[_11404] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512
            if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512:
                mem[_9349 + 64] = _11404
                mem[_9349 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
                _11505 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
                mem[_11505] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                    mem[_9349 + 128] = _11505
                    _11511 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_11511] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_11511 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _11511 + 32
                        u = sha3(mem[0])
                        while _11511 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_9349 + 160] = _11511
                else:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                    mem[_11505 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                    t = _11505 + 32
                    u = sha3(mem[0])
                    while _11505 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_9349 + 128] = _11505
                    _11795 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_11795] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_11795 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _11795 + 32
                        u = sha3(mem[0])
                        while _11795 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_9349 + 160] = _11795
            else:
                mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 2
                mem[_11404 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 2)].field_0
                t = _11404 + 32
                u = sha3(mem[0])
                while _11404 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_512) > t:
                    mem[t + 32] = address(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_9349 + 64] = _11404
                mem[_9349 + 96] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_768
                _11796 = mem[64]
                mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) + 32
                mem[_11796] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024
                if not stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024:
                    mem[_9349 + 128] = _11796
                    _11803 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_11803] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_11803 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _11803 + 32
                        u = sha3(mem[0])
                        while _11803 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_9349 + 160] = _11803
                else:
                    mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 4
                    mem[_11796 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 4)].field_0
                    t = _11796 + 32
                    u = sha3(mem[0])
                    while _11796 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1024) > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_9349 + 128] = _11796
                    _11808 = mem[64]
                    mem[64] = mem[64] + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) + 32
                    mem[_11808] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280
                    if stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280:
                        mem[0] = sha3(sha3(address(arg2), sha3(arg1, 3)) + 1) + (6 * idx) + 5
                        mem[_11808 + 32] = stor[sha3(('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx) + 5)].field_0
                        t = _11808 + 32
                        u = sha3(mem[0])
                        while _11808 + (32 * stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'userRuleLength', 3)))) + (6 * idx)].field_1280) > t:
                            mem[t + 32] = address(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                    mem[_9349 + 160] = _11808
            mem[s] = _9349
            s = s + 32
            idx = idx + 1
            continue 
        mem[_7831 + 32] = _7832
        _9345 = mem[_7828 + 32]
        require ext_code.size(mem[_7828 + 44 len 20])
        staticcall mem[_7828 + 44 len 20].0x44a3955e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _9367 = mem[_9358]
        if mem[_9358] <= 0:
            if _7819 > 0:
                _9388 = mem[_1585 + 128]
                _9389 = mem[_1585 + 160]
                _9390 = mem[64]
                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = poolInfo[arg1].field_256
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = arg1
                mem[mem[64] + 100] = 160
                _9394 = mem[_9388]
                mem[mem[64] + 164] = mem[_9388]
                mem[mem[64] + 196 len 32 * _9394] = mem[_9388 + 32 len 32 * _9394]
                var88001 = _9394
                var88002 = _9388 + (32 * _9394) + 32
                var88007 = mem[64] + (32 * _9394) + 196
                mem[mem[64] + 132] = (32 * _9394) + 192
                _11030 = mem[_9389]
                mem[mem[64] + (32 * _9394) + 196] = mem[_9389]
                idx = 0
                s = _9389 + 32
                t = mem[64] + (32 * _9394) + 228
                while idx < _11030:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(_4735))
                call address(_4735).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _9390 + (32 * _9394) + (32 * _11030) + -mem[64] + 224]
            else:
                if not _7819:
                    _9380 = mem[_1585 + 128]
                    _9381 = mem[_1585 + 160]
                    _9382 = mem[64]
                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = 160
                    _9392 = mem[_9380]
                    mem[mem[64] + 164] = mem[_9380]
                    mem[mem[64] + 196 len 32 * _9392] = mem[_9380 + 32 len 32 * _9392]
                    mem[mem[64] + 132] = (32 * _9392) + 192
                    _11015 = mem[_9381]
                    mem[mem[64] + (32 * _9392) + 196] = mem[_9381]
                    idx = 0
                    s = _9381 + 32
                    t = mem[64] + (32 * _9392) + 228
                    while idx < _11015:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_4735))
                    call address(_4735).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9382 + (32 * _9392) + (32 * _11015) + -mem[64] + 224]
                else:
                    if _7819 and ruleFee > -1 / _7819:
                        revert with 0, 17
                    if stor1.length == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1.length = 2
                    if not _7819:
                        revert with 0, '_withdrawFrom: MUST_BE_GREATER_THAN_ZERO'
                    mem[32] = sha3(arg1, 3)
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x44a3955e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9452 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9460 = mem[_9452]
                    if not userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 'withdraw: NO_SHARES'
                    if mem[_9452] <= 0:
                        revert with 0, 'withdraw: NO_SHARES'
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x40a65823 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9534 = mem[_9518]
                    if userRuleLength[arg1][address(arg2)].field_0 and mem[_9518] > -1 / userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not _9460:
                        revert with 0, 18
                    if _7819 <= userRuleLength[arg1][address(arg2)].field_0 * mem[_9518] / _9460:
                        mem[mem[64] + 4] = _7819
                        mem[mem[64] + 36] = address(_7820)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _7819 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args _7819, address(_7820), msg.sender, _7819 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9580 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9580]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = _7819
                                emit Withdraw(_7819, arg2, address(_7820), arg1);
                                stor1.length = 1
                                _9682 = mem[_1585 + 128]
                                _9683 = mem[_1585 + 160]
                                _9684 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9728 = mem[_9682]
                                mem[mem[64] + 164] = mem[_9682]
                                mem[mem[64] + 196 len 32 * _9728] = mem[_9682 + 32 len 32 * _9728]
                                var136001 = _9728
                                var136002 = _9682 + (32 * _9728) + 32
                                var136007 = mem[64] + (32 * _9728) + 196
                                mem[mem[64] + 132] = (32 * _9728) + 192
                                _11020 = mem[_9683]
                                mem[mem[64] + (32 * _9728) + 196] = mem[_9683]
                                idx = 0
                                s = _9683 + 32
                                t = mem[64] + (32 * _9728) + 228
                                while idx < _11020:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9684 + (32 * _9728) + (32 * _11020) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _7819
                                    emit Withdraw(_7819, arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _9906 = mem[_1585 + 128]
                                    _9907 = mem[_1585 + 160]
                                    _9908 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _9973 = mem[_9906]
                                    mem[mem[64] + 164] = mem[_9906]
                                    mem[mem[64] + 196 len 32 * _9973] = mem[_9906 + 32 len 32 * _9973]
                                    var144001 = _9973
                                    var144002 = _9906 + (32 * _9973) + 32
                                    var144007 = mem[64] + (32 * _9973) + 196
                                    mem[mem[64] + 132] = (32 * _9973) + 192
                                    _11021 = mem[_9907]
                                    mem[mem[64] + (32 * _9973) + 196] = mem[_9907]
                                    idx = 0
                                    s = _9907 + 32
                                    t = mem[64] + (32 * _9973) + 228
                                    while idx < _11021:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9908 + (32 * _9973) + (32 * _11021) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _7819
                                    emit Withdraw(_7819, arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10015 = mem[_1585 + 128]
                                    _10016 = mem[_1585 + 160]
                                    _10017 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10131 = mem[_10015]
                                    mem[mem[64] + 164] = mem[_10015]
                                    mem[mem[64] + 196 len 32 * _10131] = mem[_10015 + 32 len 32 * _10131]
                                    var147001 = _10131
                                    var147002 = _10015 + (32 * _10131) + 32
                                    var147007 = mem[64] + (32 * _10131) + 196
                                    mem[mem[64] + 132] = (32 * _10131) + 192
                                    _11022 = mem[_10016]
                                    mem[mem[64] + (32 * _10131) + 196] = mem[_10016]
                                    idx = 0
                                    s = _10016 + 32
                                    t = mem[64] + (32 * _10131) + 228
                                    while idx < _11022:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10017 + (32 * _10131) + (32 * _11022) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9580]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9580]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9580]:
                                mem[mem[64]] = _7819
                                emit Withdraw(_7819, arg2, address(_7820), arg1);
                                stor1.length = 1
                                _9637 = mem[_1585 + 128]
                                _9638 = mem[_1585 + 160]
                                _9639 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9657 = mem[_9637]
                                mem[mem[64] + 164] = mem[_9637]
                                mem[mem[64] + 196 len 32 * _9657] = mem[_9637 + 32 len 32 * _9657]
                                mem[mem[64] + 132] = (32 * _9657) + 192
                                _11016 = mem[_9638]
                                mem[mem[64] + (32 * _9657) + 196] = mem[_9638]
                                idx = 0
                                s = _9638 + 32
                                t = mem[64] + (32 * _9657) + 228
                                while idx < _11016:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9639 + (32 * _9657) + (32 * _11016) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = _7819
                                    emit Withdraw(_7819, arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _9725 = mem[_1585 + 128]
                                    _9726 = mem[_1585 + 160]
                                    _9727 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _9791 = mem[_9725]
                                    mem[mem[64] + 164] = mem[_9725]
                                    mem[mem[64] + 196 len 32 * _9791] = mem[_9725 + 32 len 32 * _9791]
                                    var138001 = _9791
                                    var138002 = _9725 + (32 * _9791) + 32
                                    var138007 = mem[64] + (32 * _9791) + 196
                                    mem[mem[64] + 132] = (32 * _9791) + 192
                                    _11017 = mem[_9726]
                                    mem[mem[64] + (32 * _9791) + 196] = mem[_9726]
                                    idx = 0
                                    s = _9726 + 32
                                    t = mem[64] + (32 * _9791) + 228
                                    while idx < _11017:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9727 + (32 * _9791) + (32 * _11017) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _7819
                                        emit Withdraw(_7819, arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _9968 = mem[_1585 + 128]
                                        _9969 = mem[_1585 + 160]
                                        _9970 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10071 = mem[_9968]
                                        mem[mem[64] + 164] = mem[_9968]
                                        mem[mem[64] + 196 len 32 * _10071] = mem[_9968 + 32 len 32 * _10071]
                                        var146001 = _10071
                                        var146002 = _9968 + (32 * _10071) + 32
                                        var146007 = mem[64] + (32 * _10071) + 196
                                        mem[mem[64] + 132] = (32 * _10071) + 192
                                        _11018 = mem[_9969]
                                        mem[mem[64] + (32 * _10071) + 196] = mem[_9969]
                                        idx = 0
                                        s = _9969 + 32
                                        t = mem[64] + (32 * _10071) + 228
                                        while idx < _11018:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _9970 + (32 * _10071) + (32 * _11018) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _7819
                                        emit Withdraw(_7819, arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10128 = mem[_1585 + 128]
                                        _10129 = mem[_1585 + 160]
                                        _10130 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10235 = mem[_10128]
                                        mem[mem[64] + 164] = mem[_10128]
                                        mem[mem[64] + 196 len 32 * _10235] = mem[_10128 + 32 len 32 * _10235]
                                        var149001 = _10235
                                        var149002 = _10128 + (32 * _10235) + 32
                                        var149007 = mem[64] + (32 * _10235) + 196
                                        mem[mem[64] + 132] = (32 * _10235) + 192
                                        _11019 = mem[_10129]
                                        mem[mem[64] + (32 * _10235) + 196] = mem[_10129]
                                        idx = 0
                                        s = _10129 + 32
                                        t = mem[64] + (32 * _10235) + 228
                                        while idx < _11019:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10130 + (32 * _10235) + (32 * _11019) + -mem[64] + 224]
                    else:
                        mem[mem[64] + 4] = userRuleLength[arg1][address(arg2)].field_0 * mem[_9518] / _9460
                        mem[mem[64] + 36] = address(_7820)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _7819 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_7820), msg.sender, _7819 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9584 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9584]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460), arg2, address(_7820), arg1);
                                stor1.length = 1
                                _9704 = mem[_1585 + 128]
                                _9705 = mem[_1585 + 160]
                                _9706 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9766 = mem[_9704]
                                mem[mem[64] + 164] = mem[_9704]
                                mem[mem[64] + 196 len 32 * _9766] = mem[_9704 + 32 len 32 * _9766]
                                var137001 = _9766
                                var137002 = _9704 + (32 * _9766) + 32
                                var137007 = mem[64] + (32 * _9766) + 196
                                mem[mem[64] + 132] = (32 * _9766) + 192
                                _11027 = mem[_9705]
                                mem[mem[64] + (32 * _9766) + 196] = mem[_9705]
                                idx = 0
                                s = _9705 + 32
                                t = mem[64] + (32 * _9766) + 228
                                while idx < _11027:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9706 + (32 * _9766) + (32 * _11027) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _9937 = mem[_1585 + 128]
                                    _9938 = mem[_1585 + 160]
                                    _9939 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10024 = mem[_9937]
                                    mem[mem[64] + 164] = mem[_9937]
                                    mem[mem[64] + 196 len 32 * _10024] = mem[_9937 + 32 len 32 * _10024]
                                    var145001 = _10024
                                    var145002 = _9937 + (32 * _10024) + 32
                                    var145007 = mem[64] + (32 * _10024) + 196
                                    mem[mem[64] + 132] = (32 * _10024) + 192
                                    _11028 = mem[_9938]
                                    mem[mem[64] + (32 * _10024) + 196] = mem[_9938]
                                    idx = 0
                                    s = _9938 + 32
                                    t = mem[64] + (32 * _10024) + 228
                                    while idx < _11028:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9939 + (32 * _10024) + (32 * _11028) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10076 = mem[_1585 + 128]
                                    _10077 = mem[_1585 + 160]
                                    _10078 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10192 = mem[_10076]
                                    mem[mem[64] + 164] = mem[_10076]
                                    mem[mem[64] + 196 len 32 * _10192] = mem[_10076 + 32 len 32 * _10192]
                                    var148001 = _10192
                                    var148002 = _10076 + (32 * _10192) + 32
                                    var148007 = mem[64] + (32 * _10192) + 196
                                    mem[mem[64] + 132] = (32 * _10192) + 192
                                    _11029 = mem[_10077]
                                    mem[mem[64] + (32 * _10192) + 196] = mem[_10077]
                                    idx = 0
                                    s = _10077 + 32
                                    t = mem[64] + (32 * _10192) + 228
                                    while idx < _11029:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10078 + (32 * _10192) + (32 * _11029) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9584]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9584]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9584]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460), arg2, address(_7820), arg1);
                                stor1.length = 1
                                _9648 = mem[_1585 + 128]
                                _9649 = mem[_1585 + 160]
                                _9650 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9665 = mem[_9648]
                                mem[mem[64] + 164] = mem[_9648]
                                mem[mem[64] + 196 len 32 * _9665] = mem[_9648 + 32 len 32 * _9665]
                                var132001 = _9665
                                var132002 = _9648 + (32 * _9665) + 32
                                var132007 = mem[64] + (32 * _9665) + 196
                                mem[mem[64] + 132] = (32 * _9665) + 192
                                _11023 = mem[_9649]
                                mem[mem[64] + (32 * _9665) + 196] = mem[_9649]
                                idx = 0
                                s = _9649 + 32
                                t = mem[64] + (32 * _9665) + 228
                                while idx < _11023:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9650 + (32 * _9665) + (32 * _11023) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _9763 = mem[_1585 + 128]
                                    _9764 = mem[_1585 + 160]
                                    _9765 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _9823 = mem[_9763]
                                    mem[mem[64] + 164] = mem[_9763]
                                    mem[mem[64] + 196 len 32 * _9823] = mem[_9763 + 32 len 32 * _9823]
                                    var139001 = _9823
                                    var139002 = _9763 + (32 * _9823) + 32
                                    var139007 = mem[64] + (32 * _9823) + 196
                                    mem[mem[64] + 132] = (32 * _9823) + 192
                                    _11024 = mem[_9764]
                                    mem[mem[64] + (32 * _9823) + 196] = mem[_9764]
                                    idx = 0
                                    s = _9764 + 32
                                    t = mem[64] + (32 * _9823) + 228
                                    while idx < _11024:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _9765 + (32 * _9823) + (32 * _11024) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460), arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10019 = mem[_1585 + 128]
                                        _10020 = mem[_1585 + 160]
                                        _10021 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10133 = mem[_10019]
                                        mem[mem[64] + 164] = mem[_10019]
                                        mem[mem[64] + 196 len 32 * _10133] = mem[_10019 + 32 len 32 * _10133]
                                        var147001 = _10133
                                        var147002 = _10019 + (32 * _10133) + 32
                                        var147007 = mem[64] + (32 * _10133) + 196
                                        mem[mem[64] + 132] = (32 * _10133) + 192
                                        _11025 = mem[_10020]
                                        mem[mem[64] + (32 * _10133) + 196] = mem[_10020]
                                        idx = 0
                                        s = _10020 + 32
                                        t = mem[64] + (32 * _10133) + 228
                                        while idx < _11025:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10021 + (32 * _10133) + (32 * _11025) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9534 / _9460), arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10189 = mem[_1585 + 128]
                                        _10190 = mem[_1585 + 160]
                                        _10191 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10277 = mem[_10189]
                                        mem[mem[64] + 164] = mem[_10189]
                                        mem[mem[64] + 196 len 32 * _10277] = mem[_10189 + 32 len 32 * _10277]
                                        var150001 = _10277
                                        var150002 = _10189 + (32 * _10277) + 32
                                        var150007 = mem[64] + (32 * _10277) + 196
                                        mem[mem[64] + 132] = (32 * _10277) + 192
                                        _11026 = mem[_10190]
                                        mem[mem[64] + (32 * _10277) + 196] = mem[_10190]
                                        idx = 0
                                        s = _10190 + 32
                                        t = mem[64] + (32 * _10277) + 228
                                        while idx < _11026:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10191 + (32 * _10277) + (32 * _11026) + -mem[64] + 224]
        else:
            require ext_code.size(address(_9345))
            staticcall address(_9345).0x40a65823 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9374 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9379 = mem[_9374]
            _9387 = mem[_7831]
            if mem[_7831] and mem[_9374] > -1 / mem[_7831]:
                revert with 0, 17
            if not _9367:
                revert with 0, 18
            if _7819 <= mem[_7831] * mem[_9374] / _9367:
                if not _7819:
                    _9422 = mem[_1585 + 128]
                    _9423 = mem[_1585 + 160]
                    _9424 = mem[64]
                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = 160
                    _9444 = mem[_9422]
                    mem[mem[64] + 164] = mem[_9422]
                    mem[mem[64] + 196 len 32 * _9444] = mem[_9422 + 32 len 32 * _9444]
                    mem[mem[64] + 132] = (32 * _9444) + 192
                    _10985 = mem[_9423]
                    mem[mem[64] + (32 * _9444) + 196] = mem[_9423]
                    idx = 0
                    s = _9423 + 32
                    t = mem[64] + (32 * _9444) + 228
                    while idx < _10985:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_4735))
                    call address(_4735).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9424 + (32 * _9444) + (32 * _10985) + -mem[64] + 224]
                else:
                    if _7819 and ruleFee > -1 / _7819:
                        revert with 0, 17
                    if stor1.length == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1.length = 2
                    if not _7819:
                        revert with 0, '_withdrawFrom: MUST_BE_GREATER_THAN_ZERO'
                    mem[32] = sha3(arg1, 3)
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x44a3955e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9531 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9538 = mem[_9531]
                    if not userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 'withdraw: NO_SHARES'
                    if mem[_9531] <= 0:
                        revert with 0, 'withdraw: NO_SHARES'
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x40a65823 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9579 = mem[_9567]
                    if userRuleLength[arg1][address(arg2)].field_0 and mem[_9567] > -1 / userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not _9538:
                        revert with 0, 18
                    if _7819 <= userRuleLength[arg1][address(arg2)].field_0 * mem[_9567] / _9538:
                        mem[mem[64] + 4] = _7819
                        mem[mem[64] + 36] = address(_7820)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _7819 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args _7819, address(_7820), msg.sender, _7819 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9624 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9624]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = _7819
                                emit Withdraw(_7819, arg2, address(_7820), arg1);
                                stor1.length = 1
                                _9959 = mem[_1585 + 128]
                                _9960 = mem[_1585 + 160]
                                _9961 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _10055 = mem[_9959]
                                mem[mem[64] + 164] = mem[_9959]
                                mem[mem[64] + 196 len 32 * _10055] = mem[_9959 + 32 len 32 * _10055]
                                var146001 = _10055
                                var146002 = _9959 + (32 * _10055) + 32
                                var146007 = mem[64] + (32 * _10055) + 196
                                mem[mem[64] + 132] = (32 * _10055) + 192
                                _10990 = mem[_9960]
                                mem[mem[64] + (32 * _10055) + 196] = mem[_9960]
                                idx = 0
                                s = _9960 + 32
                                t = mem[64] + (32 * _10055) + 228
                                while idx < _10990:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9961 + (32 * _10055) + (32 * _10990) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _7819
                                    emit Withdraw(_7819, arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10342 = mem[_1585 + 128]
                                    _10343 = mem[_1585 + 160]
                                    _10344 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10432 = mem[_10342]
                                    mem[mem[64] + 164] = mem[_10342]
                                    mem[mem[64] + 196 len 32 * _10432] = mem[_10342 + 32 len 32 * _10432]
                                    var154001 = _10432
                                    var154002 = _10342 + (32 * _10432) + 32
                                    var154007 = mem[64] + (32 * _10432) + 196
                                    mem[mem[64] + 132] = (32 * _10432) + 192
                                    _10991 = mem[_10343]
                                    mem[mem[64] + (32 * _10432) + 196] = mem[_10343]
                                    idx = 0
                                    s = _10343 + 32
                                    t = mem[64] + (32 * _10432) + 228
                                    while idx < _10991:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10344 + (32 * _10432) + (32 * _10991) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _7819
                                    emit Withdraw(_7819, arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10472 = mem[_1585 + 128]
                                    _10473 = mem[_1585 + 160]
                                    _10474 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10569 = mem[_10472]
                                    mem[mem[64] + 164] = mem[_10472]
                                    mem[mem[64] + 196 len 32 * _10569] = mem[_10472 + 32 len 32 * _10569]
                                    var157001 = _10569
                                    var157002 = _10472 + (32 * _10569) + 32
                                    var157007 = mem[64] + (32 * _10569) + 196
                                    mem[mem[64] + 132] = (32 * _10569) + 192
                                    _10992 = mem[_10473]
                                    mem[mem[64] + (32 * _10569) + 196] = mem[_10473]
                                    idx = 0
                                    s = _10473 + 32
                                    t = mem[64] + (32 * _10569) + 228
                                    while idx < _10992:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10474 + (32 * _10569) + (32 * _10992) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9624]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9624]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9624]:
                                mem[mem[64]] = _7819
                                emit Withdraw(_7819, arg2, address(_7820), arg1);
                                stor1.length = 1
                                _9815 = mem[_1585 + 128]
                                _9816 = mem[_1585 + 160]
                                _9817 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9870 = mem[_9815]
                                mem[mem[64] + 164] = mem[_9815]
                                mem[mem[64] + 196 len 32 * _9870] = mem[_9815 + 32 len 32 * _9870]
                                var141001 = _9870
                                var141002 = _9815 + (32 * _9870) + 32
                                var141007 = mem[64] + (32 * _9870) + 196
                                mem[mem[64] + 132] = (32 * _9870) + 192
                                _10986 = mem[_9816]
                                mem[mem[64] + (32 * _9870) + 196] = mem[_9816]
                                idx = 0
                                s = _9816 + 32
                                t = mem[64] + (32 * _9870) + 228
                                while idx < _10986:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9817 + (32 * _9870) + (32 * _10986) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = _7819
                                    emit Withdraw(_7819, arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10052 = mem[_1585 + 128]
                                    _10053 = mem[_1585 + 160]
                                    _10054 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10165 = mem[_10052]
                                    mem[mem[64] + 164] = mem[_10052]
                                    mem[mem[64] + 196 len 32 * _10165] = mem[_10052 + 32 len 32 * _10165]
                                    var148001 = _10165
                                    var148002 = _10052 + (32 * _10165) + 32
                                    var148007 = mem[64] + (32 * _10165) + 196
                                    mem[mem[64] + 132] = (32 * _10165) + 192
                                    _10987 = mem[_10053]
                                    mem[mem[64] + (32 * _10165) + 196] = mem[_10053]
                                    idx = 0
                                    s = _10053 + 32
                                    t = mem[64] + (32 * _10165) + 228
                                    while idx < _10987:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10054 + (32 * _10165) + (32 * _10987) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _7819
                                        emit Withdraw(_7819, arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10427 = mem[_1585 + 128]
                                        _10428 = mem[_1585 + 160]
                                        _10429 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10520 = mem[_10427]
                                        mem[mem[64] + 164] = mem[_10427]
                                        mem[mem[64] + 196 len 32 * _10520] = mem[_10427 + 32 len 32 * _10520]
                                        var156001 = _10520
                                        var156002 = _10427 + (32 * _10520) + 32
                                        var156007 = mem[64] + (32 * _10520) + 196
                                        mem[mem[64] + 132] = (32 * _10520) + 192
                                        _10988 = mem[_10428]
                                        mem[mem[64] + (32 * _10520) + 196] = mem[_10428]
                                        idx = 0
                                        s = _10428 + 32
                                        t = mem[64] + (32 * _10520) + 228
                                        while idx < _10988:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10429 + (32 * _10520) + (32 * _10988) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _7819
                                        emit Withdraw(_7819, arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10566 = mem[_1585 + 128]
                                        _10567 = mem[_1585 + 160]
                                        _10568 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10645 = mem[_10566]
                                        mem[mem[64] + 164] = mem[_10566]
                                        mem[mem[64] + 196 len 32 * _10645] = mem[_10566 + 32 len 32 * _10645]
                                        var159001 = _10645
                                        var159002 = _10566 + (32 * _10645) + 32
                                        var159007 = mem[64] + (32 * _10645) + 196
                                        mem[mem[64] + 132] = (32 * _10645) + 192
                                        _10989 = mem[_10567]
                                        mem[mem[64] + (32 * _10645) + 196] = mem[_10567]
                                        idx = 0
                                        s = _10567 + 32
                                        t = mem[64] + (32 * _10645) + 228
                                        while idx < _10989:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10568 + (32 * _10645) + (32 * _10989) + -mem[64] + 224]
                    else:
                        mem[mem[64] + 4] = userRuleLength[arg1][address(arg2)].field_0 * mem[_9567] / _9538
                        mem[mem[64] + 36] = address(_7820)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _7819 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_7820), msg.sender, _7819 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9635 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9635]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538), arg2, address(_7820), arg1);
                                stor1.length = 1
                                _10005 = mem[_1585 + 128]
                                _10006 = mem[_1585 + 160]
                                _10007 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _10115 = mem[_10005]
                                mem[mem[64] + 164] = mem[_10005]
                                mem[mem[64] + 196 len 32 * _10115] = mem[_10005 + 32 len 32 * _10115]
                                var147001 = _10115
                                var147002 = _10005 + (32 * _10115) + 32
                                var147007 = mem[64] + (32 * _10115) + 196
                                mem[mem[64] + 132] = (32 * _10115) + 192
                                _10997 = mem[_10006]
                                mem[mem[64] + (32 * _10115) + 196] = mem[_10006]
                                idx = 0
                                s = _10006 + 32
                                t = mem[64] + (32 * _10115) + 228
                                while idx < _10997:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _10007 + (32 * _10115) + (32 * _10997) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10387 = mem[_1585 + 128]
                                    _10388 = mem[_1585 + 160]
                                    _10389 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10481 = mem[_10387]
                                    mem[mem[64] + 164] = mem[_10387]
                                    mem[mem[64] + 196 len 32 * _10481] = mem[_10387 + 32 len 32 * _10481]
                                    var155001 = _10481
                                    var155002 = _10387 + (32 * _10481) + 32
                                    var155007 = mem[64] + (32 * _10481) + 196
                                    mem[mem[64] + 132] = (32 * _10481) + 192
                                    _10998 = mem[_10388]
                                    mem[mem[64] + (32 * _10481) + 196] = mem[_10388]
                                    idx = 0
                                    s = _10388 + 32
                                    t = mem[64] + (32 * _10481) + 228
                                    while idx < _10998:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10389 + (32 * _10481) + (32 * _10998) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10525 = mem[_1585 + 128]
                                    _10526 = mem[_1585 + 160]
                                    _10527 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10616 = mem[_10525]
                                    mem[mem[64] + 164] = mem[_10525]
                                    mem[mem[64] + 196 len 32 * _10616] = mem[_10525 + 32 len 32 * _10616]
                                    var158001 = _10616
                                    var158002 = _10525 + (32 * _10616) + 32
                                    var158007 = mem[64] + (32 * _10616) + 196
                                    mem[mem[64] + 132] = (32 * _10616) + 192
                                    _10999 = mem[_10526]
                                    mem[mem[64] + (32 * _10616) + 196] = mem[_10526]
                                    idx = 0
                                    s = _10526 + 32
                                    t = mem[64] + (32 * _10616) + 228
                                    while idx < _10999:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10527 + (32 * _10616) + (32 * _10999) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9635]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9635]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9635]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538), arg2, address(_7820), arg1);
                                stor1.length = 1
                                _9843 = mem[_1585 + 128]
                                _9844 = mem[_1585 + 160]
                                _9845 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9899 = mem[_9843]
                                mem[mem[64] + 164] = mem[_9843]
                                mem[mem[64] + 196 len 32 * _9899] = mem[_9843 + 32 len 32 * _9899]
                                var142001 = _9899
                                var142002 = _9843 + (32 * _9899) + 32
                                var142007 = mem[64] + (32 * _9899) + 196
                                mem[mem[64] + 132] = (32 * _9899) + 192
                                _10993 = mem[_9844]
                                mem[mem[64] + (32 * _9899) + 196] = mem[_9844]
                                idx = 0
                                s = _9844 + 32
                                t = mem[64] + (32 * _9899) + 228
                                while idx < _10993:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9845 + (32 * _9899) + (32 * _10993) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10112 = mem[_1585 + 128]
                                    _10113 = mem[_1585 + 160]
                                    _10114 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10219 = mem[_10112]
                                    mem[mem[64] + 164] = mem[_10112]
                                    mem[mem[64] + 196 len 32 * _10219] = mem[_10112 + 32 len 32 * _10219]
                                    var149001 = _10219
                                    var149002 = _10112 + (32 * _10219) + 32
                                    var149007 = mem[64] + (32 * _10219) + 196
                                    mem[mem[64] + 132] = (32 * _10219) + 192
                                    _10994 = mem[_10113]
                                    mem[mem[64] + (32 * _10219) + 196] = mem[_10113]
                                    idx = 0
                                    s = _10113 + 32
                                    t = mem[64] + (32 * _10219) + 228
                                    while idx < _10994:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10114 + (32 * _10219) + (32 * _10994) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538), arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10476 = mem[_1585 + 128]
                                        _10477 = mem[_1585 + 160]
                                        _10478 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10571 = mem[_10476]
                                        mem[mem[64] + 164] = mem[_10476]
                                        mem[mem[64] + 196 len 32 * _10571] = mem[_10476 + 32 len 32 * _10571]
                                        var157001 = _10571
                                        var157002 = _10476 + (32 * _10571) + 32
                                        var157007 = mem[64] + (32 * _10571) + 196
                                        mem[mem[64] + 132] = (32 * _10571) + 192
                                        _10995 = mem[_10477]
                                        mem[mem[64] + (32 * _10571) + 196] = mem[_10477]
                                        idx = 0
                                        s = _10477 + 32
                                        t = mem[64] + (32 * _10571) + 228
                                        while idx < _10995:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10478 + (32 * _10571) + (32 * _10995) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9579 / _9538), arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10613 = mem[_1585 + 128]
                                        _10614 = mem[_1585 + 160]
                                        _10615 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10675 = mem[_10613]
                                        mem[mem[64] + 164] = mem[_10613]
                                        mem[mem[64] + 196 len 32 * _10675] = mem[_10613 + 32 len 32 * _10675]
                                        var160001 = _10675
                                        var160002 = _10613 + (32 * _10675) + 32
                                        var160007 = mem[64] + (32 * _10675) + 196
                                        mem[mem[64] + 132] = (32 * _10675) + 192
                                        _10996 = mem[_10614]
                                        mem[mem[64] + (32 * _10675) + 196] = mem[_10614]
                                        idx = 0
                                        s = _10614 + 32
                                        t = mem[64] + (32 * _10675) + 228
                                        while idx < _10996:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10615 + (32 * _10675) + (32 * _10996) + -mem[64] + 224]
            else:
                if not mem[_7831] * mem[_9374] / _9367:
                    _9435 = mem[_1585 + 128]
                    _9436 = mem[_1585 + 160]
                    _9437 = mem[64]
                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = arg1
                    mem[mem[64] + 100] = 160
                    _9451 = mem[_9435]
                    mem[mem[64] + 164] = mem[_9435]
                    mem[mem[64] + 196 len 32 * _9451] = mem[_9435 + 32 len 32 * _9451]
                    var98001 = _9451
                    var98002 = _9435 + (32 * _9451) + 32
                    var98007 = mem[64] + (32 * _9451) + 196
                    mem[mem[64] + 132] = (32 * _9451) + 192
                    _11000 = mem[_9436]
                    mem[mem[64] + (32 * _9451) + 196] = mem[_9436]
                    idx = 0
                    s = _9436 + 32
                    t = mem[64] + (32 * _9451) + 228
                    while idx < _11000:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_4735))
                    call address(_4735).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _9437 + (32 * _9451) + (32 * _11000) + -mem[64] + 224]
                else:
                    if mem[_7831] * mem[_9374] / _9367 and ruleFee > -1 / mem[_7831] * mem[_9374] / _9367:
                        revert with 0, 17
                    if stor1.length == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1.length = 2
                    if not mem[_7831] * mem[_9374] / _9367:
                        revert with 0, '_withdrawFrom: MUST_BE_GREATER_THAN_ZERO'
                    mem[32] = sha3(arg1, 3)
                    if arg1 >= poolInfo.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x44a3955e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9540 = mem[_9536]
                    if not userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 'withdraw: NO_SHARES'
                    if mem[_9536] <= 0:
                        revert with 0, 'withdraw: NO_SHARES'
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.0x40a65823 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9574 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9583 = mem[_9574]
                    if userRuleLength[arg1][address(arg2)].field_0 and mem[_9574] > -1 / userRuleLength[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not _9540:
                        revert with 0, 18
                    if _9387 * _9379 / _9367 <= userRuleLength[arg1][address(arg2)].field_0 * mem[_9574] / _9540:
                        mem[mem[64] + 4] = _9387 * _9379 / _9367
                        mem[mem[64] + 36] = address(_7820)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _9387 * _9379 / _9367 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args _9387 * _9379 / _9367, address(_7820), msg.sender, _9387 * _9379 / _9367 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9636]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = _9387 * _9379 / _9367
                                emit Withdraw((_9387 * _9379 / _9367), arg2, address(_7820), arg1);
                                stor1.length = 1
                                _10009 = mem[_1585 + 128]
                                _10010 = mem[_1585 + 160]
                                _10011 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _10121 = mem[_10009]
                                mem[mem[64] + 164] = mem[_10009]
                                mem[mem[64] + 196 len 32 * _10121] = mem[_10009 + 32 len 32 * _10121]
                                var147001 = _10121
                                var147002 = _10009 + (32 * _10121) + 32
                                var147007 = mem[64] + (32 * _10121) + 196
                                mem[mem[64] + 132] = (32 * _10121) + 192
                                _11005 = mem[_10010]
                                mem[mem[64] + (32 * _10121) + 196] = mem[_10010]
                                idx = 0
                                s = _10010 + 32
                                t = mem[64] + (32 * _10121) + 228
                                while idx < _11005:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _10011 + (32 * _10121) + (32 * _11005) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _9387 * _9379 / _9367
                                    emit Withdraw((_9387 * _9379 / _9367), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10394 = mem[_1585 + 128]
                                    _10395 = mem[_1585 + 160]
                                    _10396 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10488 = mem[_10394]
                                    mem[mem[64] + 164] = mem[_10394]
                                    mem[mem[64] + 196 len 32 * _10488] = mem[_10394 + 32 len 32 * _10488]
                                    var155001 = _10488
                                    var155002 = _10394 + (32 * _10488) + 32
                                    var155007 = mem[64] + (32 * _10488) + 196
                                    mem[mem[64] + 132] = (32 * _10488) + 192
                                    _11006 = mem[_10395]
                                    mem[mem[64] + (32 * _10488) + 196] = mem[_10395]
                                    idx = 0
                                    s = _10395 + 32
                                    t = mem[64] + (32 * _10488) + 228
                                    while idx < _11006:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10396 + (32 * _10488) + (32 * _11006) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = _9387 * _9379 / _9367
                                    emit Withdraw((_9387 * _9379 / _9367), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10529 = mem[_1585 + 128]
                                    _10530 = mem[_1585 + 160]
                                    _10531 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10620 = mem[_10529]
                                    mem[mem[64] + 164] = mem[_10529]
                                    mem[mem[64] + 196 len 32 * _10620] = mem[_10529 + 32 len 32 * _10620]
                                    var158001 = _10620
                                    var158002 = _10529 + (32 * _10620) + 32
                                    var158007 = mem[64] + (32 * _10620) + 196
                                    mem[mem[64] + 132] = (32 * _10620) + 192
                                    _11007 = mem[_10530]
                                    mem[mem[64] + (32 * _10620) + 196] = mem[_10530]
                                    idx = 0
                                    s = _10530 + 32
                                    t = mem[64] + (32 * _10620) + 228
                                    while idx < _11007:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10531 + (32 * _10620) + (32 * _11007) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9636]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9636]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9636]:
                                mem[mem[64]] = _9387 * _9379 / _9367
                                emit Withdraw((_9387 * _9379 / _9367), arg2, address(_7820), arg1);
                                stor1.length = 1
                                _9846 = mem[_1585 + 128]
                                _9847 = mem[_1585 + 160]
                                _9848 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9901 = mem[_9846]
                                mem[mem[64] + 164] = mem[_9846]
                                mem[mem[64] + 196 len 32 * _9901] = mem[_9846 + 32 len 32 * _9901]
                                var142001 = _9901
                                var142002 = _9846 + (32 * _9901) + 32
                                var142007 = mem[64] + (32 * _9901) + 196
                                mem[mem[64] + 132] = (32 * _9901) + 192
                                _11001 = mem[_9847]
                                mem[mem[64] + (32 * _9901) + 196] = mem[_9847]
                                idx = 0
                                s = _9847 + 32
                                t = mem[64] + (32 * _9901) + 228
                                while idx < _11001:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9848 + (32 * _9901) + (32 * _11001) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = _9387 * _9379 / _9367
                                    emit Withdraw((_9387 * _9379 / _9367), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10118 = mem[_1585 + 128]
                                    _10119 = mem[_1585 + 160]
                                    _10120 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10225 = mem[_10118]
                                    mem[mem[64] + 164] = mem[_10118]
                                    mem[mem[64] + 196 len 32 * _10225] = mem[_10118 + 32 len 32 * _10225]
                                    var149001 = _10225
                                    var149002 = _10118 + (32 * _10225) + 32
                                    var149007 = mem[64] + (32 * _10225) + 196
                                    mem[mem[64] + 132] = (32 * _10225) + 192
                                    _11002 = mem[_10119]
                                    mem[mem[64] + (32 * _10225) + 196] = mem[_10119]
                                    idx = 0
                                    s = _10119 + 32
                                    t = mem[64] + (32 * _10225) + 228
                                    while idx < _11002:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10120 + (32 * _10225) + (32 * _11002) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _9387 * _9379 / _9367
                                        emit Withdraw((_9387 * _9379 / _9367), arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10483 = mem[_1585 + 128]
                                        _10484 = mem[_1585 + 160]
                                        _10485 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10576 = mem[_10483]
                                        mem[mem[64] + 164] = mem[_10483]
                                        mem[mem[64] + 196 len 32 * _10576] = mem[_10483 + 32 len 32 * _10576]
                                        var157001 = _10576
                                        var157002 = _10483 + (32 * _10576) + 32
                                        var157007 = mem[64] + (32 * _10576) + 196
                                        mem[mem[64] + 132] = (32 * _10576) + 192
                                        _11003 = mem[_10484]
                                        mem[mem[64] + (32 * _10576) + 196] = mem[_10484]
                                        idx = 0
                                        s = _10484 + 32
                                        t = mem[64] + (32 * _10576) + 228
                                        while idx < _11003:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10485 + (32 * _10576) + (32 * _11003) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = _9387 * _9379 / _9367
                                        emit Withdraw((_9387 * _9379 / _9367), arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10617 = mem[_1585 + 128]
                                        _10618 = mem[_1585 + 160]
                                        _10619 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10677 = mem[_10617]
                                        mem[mem[64] + 164] = mem[_10617]
                                        mem[mem[64] + 196 len 32 * _10677] = mem[_10617 + 32 len 32 * _10677]
                                        var160001 = _10677
                                        var160002 = _10617 + (32 * _10677) + 32
                                        var160007 = mem[64] + (32 * _10677) + 196
                                        mem[mem[64] + 132] = (32 * _10677) + 192
                                        _11004 = mem[_10618]
                                        mem[mem[64] + (32 * _10677) + 196] = mem[_10618]
                                        idx = 0
                                        s = _10618 + 32
                                        t = mem[64] + (32 * _10677) + 228
                                        while idx < _11004:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10619 + (32 * _10677) + (32 * _11004) + -mem[64] + 224]
                    else:
                        mem[mem[64] + 4] = userRuleLength[arg1][address(arg2)].field_0 * mem[_9574] / _9540
                        mem[mem[64] + 36] = address(_7820)
                        mem[mem[64] + 68] = msg.sender
                        mem[mem[64] + 100] = _9387 * _9379 / _9367 * ruleFee / 10000
                        require ext_code.size(poolInfo[arg1].field_256)
                        call poolInfo[arg1].field_256.0xa318c1a4 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_7820), msg.sender, _9387 * _9379 / _9367 * ruleFee / 10000
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if userRuleLength[arg1][address(arg2)].field_0 <= mem[_9647]:
                            userRuleLength[arg1][address(arg2)].field_0 = 0
                            mem[0] = arg1
                            mem[32] = sha3(address(arg2), 4) + 1
                            if not userStakedPoolLength[address(arg2)][1][arg1]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540), arg2, address(_7820), arg1);
                                stor1.length = 1
                                _10067 = mem[_1585 + 128]
                                _10068 = mem[_1585 + 160]
                                _10069 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _10182 = mem[_10067]
                                mem[mem[64] + 164] = mem[_10067]
                                mem[mem[64] + 196 len 32 * _10182] = mem[_10067 + 32 len 32 * _10182]
                                var148001 = _10182
                                var148002 = _10067 + (32 * _10182) + 32
                                var148007 = mem[64] + (32 * _10182) + 196
                                mem[mem[64] + 132] = (32 * _10182) + 192
                                _11012 = mem[_10068]
                                mem[mem[64] + (32 * _10182) + 196] = mem[_10068]
                                idx = 0
                                s = _10068 + 32
                                t = mem[64] + (32 * _10182) + 228
                                while idx < _11012:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _10069 + (32 * _10182) + (32 * _11012) + -mem[64] + 224]
                            else:
                                if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] < 1:
                                    revert with 0, 17
                                if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10438 = mem[_1585 + 128]
                                    _10439 = mem[_1585 + 160]
                                    _10440 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10538 = mem[_10438]
                                    mem[mem[64] + 164] = mem[_10438]
                                    mem[mem[64] + 196 len 32 * _10538] = mem[_10438 + 32 len 32 * _10538]
                                    var156001 = _10538
                                    var156002 = _10438 + (32 * _10538) + 32
                                    var156007 = mem[64] + (32 * _10538) + 196
                                    mem[mem[64] + 132] = (32 * _10538) + 192
                                    _11013 = mem[_10439]
                                    mem[mem[64] + (32 * _10538) + 196] = mem[_10439]
                                    idx = 0
                                    s = _10439 + 32
                                    t = mem[64] + (32 * _10538) + 228
                                    while idx < _11013:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10440 + (32 * _10538) + (32 * _11013) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                        revert with 0, 50
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                    userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                    if not userStakedPoolLength[address(arg2)]:
                                        revert with 0, 49
                                    userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                    userStakedPoolLength[address(arg2)]--
                                    mem[0] = arg1
                                    mem[32] = sha3(address(arg2), 4) + 1
                                    userStakedPoolLength[address(arg2)][1][arg1] = 0
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10581 = mem[_1585 + 128]
                                    _10582 = mem[_1585 + 160]
                                    _10583 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10658 = mem[_10581]
                                    mem[mem[64] + 164] = mem[_10581]
                                    mem[mem[64] + 196 len 32 * _10658] = mem[_10581 + 32 len 32 * _10658]
                                    var159001 = _10658
                                    var159002 = _10581 + (32 * _10658) + 32
                                    var159007 = mem[64] + (32 * _10658) + 196
                                    mem[mem[64] + 132] = (32 * _10658) + 192
                                    _11014 = mem[_10582]
                                    mem[mem[64] + (32 * _10658) + 196] = mem[_10582]
                                    idx = 0
                                    s = _10582 + 32
                                    t = mem[64] + (32 * _10658) + 228
                                    while idx < _11014:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10583 + (32 * _10658) + (32 * _11014) + -mem[64] + 224]
                        else:
                            if userRuleLength[arg1][address(arg2)].field_0 < mem[_9647]:
                                revert with 0, 17
                            userRuleLength[arg1][address(arg2)].field_0 -= mem[_9647]
                            if userRuleLength[arg1][address(arg2)].field_0 - mem[_9647]:
                                mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540
                                emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540), arg2, address(_7820), arg1);
                                stor1.length = 1
                                _9872 = mem[_1585 + 128]
                                _9873 = mem[_1585 + 160]
                                _9874 = mem[64]
                                mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = poolInfo[arg1].field_256
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = arg1
                                mem[mem[64] + 100] = 160
                                _9931 = mem[_9872]
                                mem[mem[64] + 164] = mem[_9872]
                                mem[mem[64] + 196 len 32 * _9931] = mem[_9872 + 32 len 32 * _9931]
                                var143001 = _9931
                                var143002 = _9872 + (32 * _9931) + 32
                                var143007 = mem[64] + (32 * _9931) + 196
                                mem[mem[64] + 132] = (32 * _9931) + 192
                                _11008 = mem[_9873]
                                mem[mem[64] + (32 * _9931) + 196] = mem[_9873]
                                idx = 0
                                s = _9873 + 32
                                t = mem[64] + (32 * _9931) + 228
                                while idx < _11008:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(address(_4735))
                                call address(_4735).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _9874 + (32 * _9931) + (32 * _11008) + -mem[64] + 224]
                            else:
                                mem[0] = arg1
                                mem[32] = sha3(address(arg2), 4) + 1
                                if not userStakedPoolLength[address(arg2)][1][arg1]:
                                    mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540
                                    emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540), arg2, address(_7820), arg1);
                                    stor1.length = 1
                                    _10179 = mem[_1585 + 128]
                                    _10180 = mem[_1585 + 160]
                                    _10181 = mem[64]
                                    mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = poolInfo[arg1].field_256
                                    mem[mem[64] + 36] = arg2
                                    mem[mem[64] + 68] = arg1
                                    mem[mem[64] + 100] = 160
                                    _10269 = mem[_10179]
                                    mem[mem[64] + 164] = mem[_10179]
                                    mem[mem[64] + 196 len 32 * _10269] = mem[_10179 + 32 len 32 * _10269]
                                    var150001 = _10269
                                    var150002 = _10179 + (32 * _10269) + 32
                                    var150007 = mem[64] + (32 * _10269) + 196
                                    mem[mem[64] + 132] = (32 * _10269) + 192
                                    _11009 = mem[_10180]
                                    mem[mem[64] + (32 * _10269) + 196] = mem[_10180]
                                    idx = 0
                                    s = _10180 + 32
                                    t = mem[64] + (32 * _10269) + 228
                                    while idx < _11009:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(_4735))
                                    call address(_4735).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _10181 + (32 * _10269) + (32 * _11009) + -mem[64] + 224]
                                else:
                                    if userStakedPoolLength[address(arg2)][1][arg1] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] < 1:
                                        revert with 0, 17
                                    if userStakedPoolLength[address(arg2)] - 1 == userStakedPoolLength[address(arg2)][1][arg1] - 1:
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540), arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10533 = mem[_1585 + 128]
                                        _10534 = mem[_1585 + 160]
                                        _10535 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10622 = mem[_10533]
                                        mem[mem[64] + 164] = mem[_10533]
                                        mem[mem[64] + 196 len 32 * _10622] = mem[_10533 + 32 len 32 * _10622]
                                        var158001 = _10622
                                        var158002 = _10533 + (32 * _10622) + 32
                                        var158007 = mem[64] + (32 * _10622) + 196
                                        mem[mem[64] + 132] = (32 * _10622) + 192
                                        _11010 = mem[_10534]
                                        mem[mem[64] + (32 * _10622) + 196] = mem[_10534]
                                        idx = 0
                                        s = _10534 + 32
                                        t = mem[64] + (32 * _10622) + 228
                                        while idx < _11010:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10535 + (32 * _10622) + (32 * _11010) + -mem[64] + 224]
                                    else:
                                        if userStakedPoolLength[address(arg2)] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        if userStakedPoolLength[address(arg2)][1][arg1] - 1 >= userStakedPoolLength[address(arg2)]:
                                            revert with 0, 50
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)][1][arg1]] = userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]
                                        userStakedPoolLength[address(arg2)][1][userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]]] = userStakedPoolLength[address(arg2)][1][arg1]
                                        if not userStakedPoolLength[address(arg2)]:
                                            revert with 0, 49
                                        userStakedPoolLength[address(arg2)][userStakedPoolLength[address(arg2)]] = 0
                                        userStakedPoolLength[address(arg2)]--
                                        mem[0] = arg1
                                        mem[32] = sha3(address(arg2), 4) + 1
                                        userStakedPoolLength[address(arg2)][1][arg1] = 0
                                        mem[mem[64]] = userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540
                                        emit Withdraw((userRuleLength[arg1][address(arg2)].field_0 * _9583 / _9540), arg2, address(_7820), arg1);
                                        stor1.length = 1
                                        _10655 = mem[_1585 + 128]
                                        _10656 = mem[_1585 + 160]
                                        _10657 = mem[64]
                                        mem[mem[64]] = 0xb61ab3a200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = poolInfo[arg1].field_256
                                        mem[mem[64] + 36] = arg2
                                        mem[mem[64] + 68] = arg1
                                        mem[mem[64] + 100] = 160
                                        _10699 = mem[_10655]
                                        mem[mem[64] + 164] = mem[_10655]
                                        mem[mem[64] + 196 len 32 * _10699] = mem[_10655 + 32 len 32 * _10699]
                                        var161001 = _10699
                                        var161002 = _10655 + (32 * _10699) + 32
                                        var161007 = mem[64] + (32 * _10699) + 196
                                        mem[mem[64] + 132] = (32 * _10699) + 192
                                        _11011 = mem[_10656]
                                        mem[mem[64] + (32 * _10699) + 196] = mem[_10656]
                                        idx = 0
                                        s = _10656 + 32
                                        t = mem[64] + (32 * _10699) + 228
                                        while idx < _11011:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(_4735))
                                        call address(_4735).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _10657 + (32 * _10699) + (32 * _11011) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor13 = 0
    emit 0x1496e299: arg3, arg1, arg2
}



}
