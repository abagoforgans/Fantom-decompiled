contract main {




// =====================  Runtime code  =====================


#
#  - goToBattle(uint256 arg1, uint256 arg2, uint256 arg3)
#
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;
array of uint256 battleGroundsTokens;
mapping of uint256 hP;
mapping of uint256 viewPossibleActions;
mapping of uint256 stor9;
mapping of uint256 stakeAmount;
mapping of uint256 challengeAmount;
mapping of uint256 stor12;
mapping of uint256 battleLog;
uint8 earlyAccess;
uint256 battleCount;
uint256 stor16;
uint256 gasFee;
uint256 lastBattleWithdrawn;
uint8 stor18;
address stor18; offset 8

function lastBattleWithdrawn() {
    return lastBattleWithdrawn
}

function getBattleLog(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return battleLog[arg1]
}

function gasFeeInternal() {
    return uint256(gasFee)
}

function battleGroundsTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < battleGroundsTokens.length
    return battleGroundsTokens[arg1]
}

function paused() {
    return bool(uint8(stor18.field_0))
}

function getchallengeAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return challengeAmount[arg1]
}

function tokensInBattleAmount() {
    return battleGroundsTokens.length
}

function getHP(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return hP[arg1]
}

function getGasFee() {
    return uint256(gasFee)
}

function owner() {
    return owner
}

function earlyAccess() {
    return bool(earlyAccess)
}

function isWalletLogicHandler(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function getStakeAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeAmount[arg1]
}

function battleCount() {
    return battleCount
}

function isTokenInBattleGrounds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function viewPossibleActions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return viewPossibleActions[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setGasFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(gasFee) = arg1
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor18.field_0) = uint8(arg1)
}

function earlyAccessState(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    earlyAccess = uint8(arg1)
}

function setAddressSPSK(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor18.field_8) = arg1
}

function earlyAccessWallet(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
}

function walletAsLogicHandler(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function setHP(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not battlegrounds logic wallet'
    hP[arg1] = arg2
}

function withdrawSetAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    lastBattleWithdrawn = battleCount
}

function setPossibleActions(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not battlegrounds logic wallet'
    viewPossibleActions[arg1] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawGas() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if battleCount < lastBattleWithdrawn:
        revert with 'NH{q', 17
    if uint256(gasFee) and 2 > -1 / uint256(gasFee):
        revert with 'NH{q', 17
    if uint255(stor16) and battleCount - lastBattleWithdrawn > -1 / 2 * uint256(gasFee):
        revert with 'NH{q', 17
    call msg.sender with:
       value (battleCount * 2 * uint256(gasFee)) - (lastBattleWithdrawn * 2 * uint256(gasFee)) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    lastBattleWithdrawn = battleCount
}

function viewSetActions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[address(msg.sender)]) != 1:
        require ext_code.size(address(stor18.field_8))
        staticcall address(stor18.field_8).0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
    return stor9[arg1]
}

function registerToBattleGrounds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(earlyAccess) == 1:
        if bool(stor2[address(msg.sender)]) != 1:
            revert with 0, 'Address is not in early access'
    require ext_code.size(address(stor18.field_8))
    staticcall address(stor18.field_8).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Address is not owner of token'
    if stor3[arg1]:
        revert with 0, 'Token already registered'
    stor3[arg1] = 1
    emit 0xfa8e7883: arg1
}

function setBattleLog(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not battlegrounds logic wallet'
    if arg2 and 10^10 > -1 / arg2:
        revert with 'NH{q', 17
    battleLog[arg1] = 10^10 * arg2
    if arg4 and 10 * 10^6 > -1 / arg4:
        revert with 'NH{q', 17
    if battleLog[arg1] > (-10 * 10^6 * arg4) - 1:
        revert with 'NH{q', 17
    battleLog[arg1] += 10 * 10^6 * arg4
    if arg3 and 1000 > -1 / arg3:
        revert with 'NH{q', 17
    if battleLog[arg1] > (-1000 * arg3) - 1:
        revert with 'NH{q', 17
    battleLog[arg1] += 1000 * arg3
    if battleLog[arg1] > -arg5 - 1:
        revert with 'NH{q', 17
    battleLog[arg1] += arg5
}

function removeFromBattlegrounds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(stor18.field_8))
    staticcall address(stor18.field_8).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Address is not owner of token'
    if bool(stor4[arg1]) != 1:
        revert with 0, 'Token is not in battlegrounds'
    call msg.sender with:
       value stakeAmount[arg1] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if not battleCount:
        revert with 'NH{q', 17
    battleCount--
    if battleGroundsTokens.length == 1:
        stor5[arg1] = 0
        if not battleGroundsTokens.length:
            revert with 'NH{q', 49
        battleGroundsTokens[battleGroundsTokens.length] = 0
        battleGroundsTokens.length--
    if battleGroundsTokens.length > 1:
        stor5[arg1] = 0
        if battleGroundsTokens.length < 1:
            revert with 'NH{q', 17
        if battleGroundsTokens.length - 1 >= battleGroundsTokens.length:
            revert with 'NH{q', 50
        if stor5[arg1] >= battleGroundsTokens.length:
            revert with 'NH{q', 50
        battleGroundsTokens[stor5[arg1]] = battleGroundsTokens[battleGroundsTokens.length]
        stor5[stor6[stor5[arg1]]] = stor5[arg1]
        if not battleGroundsTokens.length:
            revert with 'NH{q', 49
        battleGroundsTokens[battleGroundsTokens.length] = 0
        battleGroundsTokens.length--
    stor4[arg1] = 0
}

function settleBattle(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is not battlegrounds logic wallet'
    require ext_code.size(address(stor18.field_8))
    staticcall address(stor18.field_8).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stakeAmount[arg2] > -challengeAmount[arg2] - 1:
        revert with 'NH{q', 17
    call ext_call.return_data[12 len 20] with:
       value stakeAmount[arg2] + challengeAmount[arg2] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if battleGroundsTokens.length == 1:
        stor5[arg2] = 0
        if not battleGroundsTokens.length:
            revert with 'NH{q', 49
        battleGroundsTokens[battleGroundsTokens.length] = 0
        battleGroundsTokens.length--
    if battleGroundsTokens.length > 1:
        stor5[arg2] = 0
        if battleGroundsTokens.length < 1:
            revert with 'NH{q', 17
        if battleGroundsTokens.length - 1 >= battleGroundsTokens.length:
            revert with 'NH{q', 50
        if stor5[arg2] >= battleGroundsTokens.length:
            revert with 'NH{q', 50
        battleGroundsTokens[stor5[arg2]] = battleGroundsTokens[battleGroundsTokens.length]
        stor5[stor6[stor5[arg2]]] = stor5[arg2]
        if not battleGroundsTokens.length:
            revert with 'NH{q', 49
        battleGroundsTokens[battleGroundsTokens.length] = 0
        battleGroundsTokens.length--
    stor4[arg2] = 0
}

function setActionListOwner(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = arg1
    require ext_code.size(address(stor18.field_8))
    staticcall address(stor18.field_8).0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Address is not owner of token'
    stor9[arg1] = arg2
    if stor9[arg1] <= 0:
        revert with 0, 'Action list is invalid'
    mem[0] = arg1
    mem[32] = 8
    if viewPossibleActions[arg1] <= 0:
        revert with 0, 'Possible action list is invalid'
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < 4:
        if 4 < idx:
            revert with 'NH{q', 17
        if -idx + 4 and 2 > -1 / -idx + 4:
            revert with 'NH{q', 17
        if 2 * -idx + 4 > -2:
            revert with 'NH{q', 17
        if not (2 * -idx + 4) + 1:
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) == 1:
                mem[0] = arg1
                mem[32] = 9
                if idx > -2:
                    revert with 'NH{q', 17
                t = idx + 1
                u = s
                v = -idx + 4
                while t < 5:
                    if 4 < t:
                        revert with 'NH{q', 17
                    if -t + 4 and 2 > -1 / -t + 4:
                        revert with 'NH{q', 17
                    if 2 * -t + 4 > -2:
                        revert with 'NH{q', 17
                    if not (2 * -t + 4) + 1:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _500 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_500] == mem[_500 + 12 len 20]
                            if mem[_500 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg1
                        mem[32] = 9
                        if stor9[arg1] % 10 == stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg1] % 10
                        v = -t + 4
                        continue 
                    if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                        if 10^((2 * -t + 4) + 1) > -1:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _525 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_525] == mem[_525 + 12 len 20]
                            if mem[_525 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg1
                        mem[32] = 9
                        if not 10^((2 * -t + 4) + 1):
                            revert with 'NH{q', 18
                        if stor9[arg1] % 10 == stor9[arg1] / 10^((2 * -t + 4) + 1) % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg1] / 10^((2 * -t + 4) + 1) % 10
                        v = -t + 4
                        continue 
                    s = 10
                    u = 1
                    idx = (2 * -t + 4) + 1
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            u = u
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        u = u * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if u > -1 / s:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1245] == mem[_1245 + 12 len 20]
                        if mem[_1245 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg1
                    mem[32] = 9
                    if not u * s:
                        revert with 'NH{q', 18
                    if stor9[arg1] % 10 == stor9[arg1] / u * s % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor9[arg1] / u * s % 10
                    v = -t + 4
                    continue 
            else:
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _134 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_134] == mem[_134 + 12 len 20]
                if mem[_134 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                mem[0] = arg1
                mem[32] = 9
                if idx > -2:
                    revert with 'NH{q', 17
                t = idx + 1
                u = s
                v = -idx + 4
                while t < 5:
                    if 4 < t:
                        revert with 'NH{q', 17
                    if -t + 4 and 2 > -1 / -t + 4:
                        revert with 'NH{q', 17
                    if 2 * -t + 4 > -2:
                        revert with 'NH{q', 17
                    if not (2 * -t + 4) + 1:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _502 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_502] == mem[_502 + 12 len 20]
                            if mem[_502 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg1
                        mem[32] = 9
                        if stor9[arg1] % 10 == stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg1] % 10
                        v = -t + 4
                        continue 
                    if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                        if 10^((2 * -t + 4) + 1) > -1:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _526 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_526] == mem[_526 + 12 len 20]
                            if mem[_526 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg1
                        mem[32] = 9
                        if not 10^((2 * -t + 4) + 1):
                            revert with 'NH{q', 18
                        if stor9[arg1] % 10 == stor9[arg1] / 10^((2 * -t + 4) + 1) % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg1] / 10^((2 * -t + 4) + 1) % 10
                        v = -t + 4
                        continue 
                    s = 10
                    u = 1
                    idx = (2 * -t + 4) + 1
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            u = u
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        u = u * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if u > -1 / s:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1246 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1246] == mem[_1246 + 12 len 20]
                        if mem[_1246 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg1
                    mem[32] = 9
                    if not u * s:
                        revert with 'NH{q', 18
                    if stor9[arg1] % 10 == stor9[arg1] / u * s % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor9[arg1] / u * s % 10
                    v = -t + 4
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            s = u
            t = stor9[arg1] % 10
            t = v
            idx = idx + 1
            continue 
        if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
            if 10^((2 * -idx + 4) + 1) > -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) == 1:
                mem[0] = arg1
                mem[32] = 9
                if not 10^((2 * -idx + 4) + 1):
                    revert with 'NH{q', 18
                if idx > -2:
                    revert with 'NH{q', 17
                t = idx + 1
                u = s
                v = -idx + 4
                while t < 5:
                    if 4 < t:
                        revert with 'NH{q', 17
                    if -t + 4 and 2 > -1 / -t + 4:
                        revert with 'NH{q', 17
                    if 2 * -t + 4 > -2:
                        revert with 'NH{q', 17
                    if not (2 * -t + 4) + 1:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _496 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_496] == mem[_496 + 12 len 20]
                            if mem[_496 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg1
                        mem[32] = 9
                        if stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg1] % 10
                        v = -t + 4
                        continue 
                    if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                        if 10^((2 * -t + 4) + 1) > -1:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_523] == mem[_523 + 12 len 20]
                            if mem[_523 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg1
                        mem[32] = 9
                        if not 10^((2 * -t + 4) + 1):
                            revert with 'NH{q', 18
                        if stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg1] / 10^((2 * -t + 4) + 1) % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg1] / 10^((2 * -t + 4) + 1) % 10
                        v = -t + 4
                        continue 
                    u = 10
                    v = 1
                    s = (2 * -t + 4) + 1
                    while s > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(s):
                            u = u * u
                            v = v
                            s = uint255(s) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        s = uint255(s) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1243 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1243] == mem[_1243 + 12 len 20]
                        if mem[_1243 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg1
                    mem[32] = 9
                    if not v * u:
                        revert with 'NH{q', 18
                    if stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg1] / v * u % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor9[arg1] / v * u % 10
                    v = -t + 4
                    continue 
            else:
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _141 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_141] == mem[_141 + 12 len 20]
                if mem[_141 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                mem[0] = arg1
                mem[32] = 9
                if not 10^((2 * -idx + 4) + 1):
                    revert with 'NH{q', 18
                if idx > -2:
                    revert with 'NH{q', 17
                t = idx + 1
                u = s
                v = -idx + 4
                while t < 5:
                    if 4 < t:
                        revert with 'NH{q', 17
                    if -t + 4 and 2 > -1 / -t + 4:
                        revert with 'NH{q', 17
                    if 2 * -t + 4 > -2:
                        revert with 'NH{q', 17
                    if not (2 * -t + 4) + 1:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _498 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_498] == mem[_498 + 12 len 20]
                            if mem[_498 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg1
                        mem[32] = 9
                        if stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg1] % 10
                        v = -t + 4
                        continue 
                    if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                        if 10^((2 * -t + 4) + 1) > -1:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _524 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_524] == mem[_524 + 12 len 20]
                            if mem[_524 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg1
                        mem[32] = 9
                        if not 10^((2 * -t + 4) + 1):
                            revert with 'NH{q', 18
                        if stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg1] / 10^((2 * -t + 4) + 1) % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg1] / 10^((2 * -t + 4) + 1) % 10
                        v = -t + 4
                        continue 
                    u = 10
                    v = 1
                    s = (2 * -t + 4) + 1
                    while s > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(s):
                            u = u * u
                            v = v
                            s = uint255(s) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        s = uint255(s) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1244 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1244] == mem[_1244 + 12 len 20]
                        if mem[_1244 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg1
                    mem[32] = 9
                    if not v * u:
                        revert with 'NH{q', 18
                    if stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg1] / v * u % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor9[arg1] / v * u % 10
                    v = -t + 4
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            s = u
            t = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
            t = v
            idx = idx + 1
            continue 
        u = 10
        v = 1
        t = (2 * -idx + 4) + 1
        while t > 1:
            if u > -1 / u:
                revert with 'NH{q', 17
            if not bool(t):
                u = u * u
                v = v
                t = uint255(t) * 0.5
                continue 
            u = u * u
            v = v * u
            t = uint255(t) * 0.5
            continue 
        if v > -1 / u:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) == 1:
            mem[0] = arg1
            mem[32] = 9
            if not v * u:
                revert with 'NH{q', 18
            if idx > -2:
                revert with 'NH{q', 17
            t = idx + 1
            w = s
            x = -idx + 4
            while t < 5:
                if 4 < t:
                    revert with 'NH{q', 17
                if -t + 4 and 2 > -1 / -t + 4:
                    revert with 'NH{q', 17
                if 2 * -t + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -t + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1338 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1338] == mem[_1338 + 12 len 20]
                        if mem[_1338 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg1
                    mem[32] = 9
                    if stor9[arg1] / v * u % 10 == stor9[arg1] % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    w = stor9[arg1] % 10
                    x = -t + 4
                    continue 
                if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                    if 10^((2 * -t + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1354 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1354] == mem[_1354 + 12 len 20]
                        if mem[_1354 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg1
                    mem[32] = 9
                    if not 10^((2 * -t + 4) + 1):
                        revert with 'NH{q', 18
                    if stor9[arg1] / v * u % 10 == stor9[arg1] / 10^((2 * -t + 4) + 1) % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    w = stor9[arg1] / 10^((2 * -t + 4) + 1) % 10
                    x = -t + 4
                    continue 
                s = 10
                w = 1
                idx = (2 * -t + 4) + 1
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        w = w
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    w = w * s
                    idx = uint255(idx) * 0.5
                    continue 
                if w > -1 / s:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1677 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1677] == mem[_1677 + 12 len 20]
                    if mem[_1677 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                mem[0] = arg1
                mem[32] = 9
                if not w * s:
                    revert with 'NH{q', 18
                if stor9[arg1] / v * u % 10 == stor9[arg1] / w * s % 10:
                    revert with 0, 'Action list is invalid'
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                w = stor9[arg1] / w * s % 10
                x = -t + 4
                continue 
        else:
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(stor18.field_8))
            staticcall address(stor18.field_8).0x6352211e with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _448 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_448] == mem[_448 + 12 len 20]
            if mem[_448 + 12 len 20] != msg.sender:
                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            mem[0] = arg1
            mem[32] = 9
            if not v * u:
                revert with 'NH{q', 18
            if idx > -2:
                revert with 'NH{q', 17
            t = idx + 1
            w = s
            x = -idx + 4
            while t < 5:
                if 4 < t:
                    revert with 'NH{q', 17
                if -t + 4 and 2 > -1 / -t + 4:
                    revert with 'NH{q', 17
                if 2 * -t + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -t + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1340 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1340] == mem[_1340 + 12 len 20]
                        if mem[_1340 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg1
                    mem[32] = 9
                    if stor9[arg1] / v * u % 10 == stor9[arg1] % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    w = stor9[arg1] % 10
                    x = -t + 4
                    continue 
                if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                    if 10^((2 * -t + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1355 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1355] == mem[_1355 + 12 len 20]
                        if mem[_1355 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg1
                    mem[32] = 9
                    if not 10^((2 * -t + 4) + 1):
                        revert with 'NH{q', 18
                    if stor9[arg1] / v * u % 10 == stor9[arg1] / 10^((2 * -t + 4) + 1) % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    w = stor9[arg1] / 10^((2 * -t + 4) + 1) % 10
                    x = -t + 4
                    continue 
                s = 10
                w = 1
                idx = (2 * -t + 4) + 1
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        w = w
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    w = w * s
                    idx = uint255(idx) * 0.5
                    continue 
                if w > -1 / s:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1678 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1678] == mem[_1678 + 12 len 20]
                    if mem[_1678 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                mem[0] = arg1
                mem[32] = 9
                if not w * s:
                    revert with 'NH{q', 18
                if stor9[arg1] / v * u % 10 == stor9[arg1] / w * s % 10:
                    revert with 0, 'Action list is invalid'
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                w = stor9[arg1] / w * s % 10
                x = -t + 4
                continue 
        if idx == -1:
            revert with 'NH{q', 17
        s = w
        t = stor9[arg1] / v * u % 10
        t = x
        idx = idx + 1
        continue 
    s = 0
    s = t
    s = 0
    s = 0
    idx = 0
    while idx < 5:
        if 4 < idx:
            revert with 'NH{q', 17
        if -idx + 4 and 2 > -1 / -idx + 4:
            revert with 'NH{q', 17
        if not 2 * -idx + 4:
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) == 1:
                if -idx + 4 and 2 > -1 / -idx + 4:
                    revert with 'NH{q', 17
                if 2 * -idx + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -idx + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _639 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_639] == mem[_639 + 12 len 20]
                        if mem[_639 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if 8 < stor9[arg1] % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg1] % 10) + 8 and 2 > -1 / -(stor9[arg1] % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg1] % 10) + 8:
                        mem[0] = arg1
                        mem[32] = 8
                        if viewPossibleActions[arg1] % 10 != stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] % 10
                        s = -idx + 4
                        s = stor9[arg1] % 10
                        s = stor9[arg1] % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg1] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg1] % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg1] % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10 != stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg1] % 10
                        s = stor9[arg1] % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg1] % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / t % 10 != stor9[arg1] % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / t % 10
                    s = -idx + 4
                    s = stor9[arg1] % 10
                    s = stor9[arg1] % 10
                    idx = idx + 1
                    continue 
                if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                    if 10^((2 * -idx + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _661 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_661] == mem[_661 + 12 len 20]
                        if mem[_661 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if not 10^((2 * -idx + 4) + 1):
                        revert with 'NH{q', 18
                    if 8 < stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        mem[0] = arg1
                        mem[32] = 8
                        if viewPossibleActions[arg1] % 10 != stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] % 10
                        s = -idx + 4
                        s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg1] % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg1] % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / t % 10 != stor9[arg1] % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / t % 10
                    s = -idx + 4
                    s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg1] % 10
                    idx = idx + 1
                    continue 
                t = 10
                u = 1
                s = (2 * -idx + 4) + 1
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1241 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1241] == mem[_1241 + 12 len 20]
                    if mem[_1241 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            else:
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_472] == mem[_472 + 12 len 20]
                if mem[_472 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if -idx + 4 and 2 > -1 / -idx + 4:
                    revert with 'NH{q', 17
                if 2 * -idx + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -idx + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_750] == mem[_750 + 12 len 20]
                        if mem[_750 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if 8 < stor9[arg1] % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg1] % 10) + 8 and 2 > -1 / -(stor9[arg1] % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg1] % 10) + 8:
                        mem[0] = arg1
                        mem[32] = 8
                        if viewPossibleActions[arg1] % 10 != stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] % 10
                        s = -idx + 4
                        s = stor9[arg1] % 10
                        s = stor9[arg1] % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg1] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg1] % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg1] % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10 != stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg1] % 10
                        s = stor9[arg1] % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg1] % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / t % 10 != stor9[arg1] % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / t % 10
                    s = -idx + 4
                    s = stor9[arg1] % 10
                    s = stor9[arg1] % 10
                    idx = idx + 1
                    continue 
                if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                    if 10^((2 * -idx + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _778 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_778] == mem[_778 + 12 len 20]
                        if mem[_778 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if not 10^((2 * -idx + 4) + 1):
                        revert with 'NH{q', 18
                    if 8 < stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        mem[0] = arg1
                        mem[32] = 8
                        if viewPossibleActions[arg1] % 10 != stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] % 10
                        s = -idx + 4
                        s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg1] % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg1] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg1] % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / t % 10 != stor9[arg1] % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / t % 10
                    s = -idx + 4
                    s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg1] % 10
                    idx = idx + 1
                    continue 
                t = 10
                u = 1
                s = (2 * -idx + 4) + 1
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1242 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1242] == mem[_1242 + 12 len 20]
                    if mem[_1242 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            if not u * t:
                revert with 'NH{q', 18
            if 8 < stor9[arg1] / u * t % 10:
                revert with 'NH{q', 17
            if -(stor9[arg1] / u * t % 10) + 8 and 2 > -1 / -(stor9[arg1] / u * t % 10) + 8:
                revert with 'NH{q', 17
            if not 2 * -(stor9[arg1] / u * t % 10) + 8:
                mem[0] = arg1
                mem[32] = 8
                if viewPossibleActions[arg1] % 10 != stor9[arg1] % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg1] % 10
                s = -idx + 4
                s = stor9[arg1] / u * t % 10
                s = stor9[arg1] % 10
                idx = idx + 1
                continue 
            if bool(bool(2 * -(stor9[arg1] / u * t % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] / u * t % 10) + 8 < 32)):
                if 10^(2 * -(stor9[arg1] / u * t % 10) + 8) > -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 8
                if not 10^(2 * -(stor9[arg1] / u * t % 10) + 8):
                    revert with 'NH{q', 18
                if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / u * t % 10) + 8) % 10 != stor9[arg1] % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / u * t % 10) + 8) % 10
                s = -idx + 4
                s = stor9[arg1] / u * t % 10
                s = stor9[arg1] % 10
                idx = idx + 1
                continue 
            v = 10
            s = 2 * -(stor9[arg1] / u * t % 10) + 8
            while s > 1:
                if v > -1 / v:
                    revert with 'NH{q', 17
                v = v * v
                s = uint255(s) * 0.5
                continue 
            if 1 > -1 / v:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 8
            if not v:
                revert with 'NH{q', 18
            if viewPossibleActions[arg1] / v % 10 != stor9[arg1] % 10:
                revert with 0, 'Action list is invalid'
            if idx == -1:
                revert with 'NH{q', 17
            s = viewPossibleActions[arg1] / v % 10
            s = -idx + 4
            s = stor9[arg1] / u * t % 10
            s = stor9[arg1] % 10
            idx = idx + 1
            continue 
        if bool(bool(2 * -idx + 4 < 78)) or bool(bool(2 * -idx + 4 < 32)):
            if 10^(2 * -idx + 4) > -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) == 1:
                if not 10^(2 * -idx + 4):
                    revert with 'NH{q', 18
                if -idx + 4 and 2 > -1 / -idx + 4:
                    revert with 'NH{q', 17
                if 2 * -idx + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -idx + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_660] == mem[_660 + 12 len 20]
                        if mem[_660 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if 8 < stor9[arg1] % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg1] % 10) + 8 and 2 > -1 / -(stor9[arg1] % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg1] % 10) + 8:
                        mem[0] = arg1
                        mem[32] = 8
                        if viewPossibleActions[arg1] % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] % 10
                        s = -idx + 4
                        s = stor9[arg1] % 10
                        s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg1] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg1] % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg1] % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg1] % 10
                        s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg1] % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / t % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / t % 10
                    s = -idx + 4
                    s = stor9[arg1] % 10
                    s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                    idx = idx + 1
                    continue 
                if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                    if 10^((2 * -idx + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _689 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_689] == mem[_689 + 12 len 20]
                        if mem[_689 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if not 10^((2 * -idx + 4) + 1):
                        revert with 'NH{q', 18
                    if 8 < stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        mem[0] = arg1
                        mem[32] = 8
                        if viewPossibleActions[arg1] % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] % 10
                        s = -idx + 4
                        s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / t % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / t % 10
                    s = -idx + 4
                    s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                    idx = idx + 1
                    continue 
                t = 10
                u = 1
                s = (2 * -idx + 4) + 1
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1239 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1239] == mem[_1239 + 12 len 20]
                    if mem[_1239 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            else:
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _494 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_494] == mem[_494 + 12 len 20]
                if mem[_494 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if not 10^(2 * -idx + 4):
                    revert with 'NH{q', 18
                if -idx + 4 and 2 > -1 / -idx + 4:
                    revert with 'NH{q', 17
                if 2 * -idx + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -idx + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _776 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_776] == mem[_776 + 12 len 20]
                        if mem[_776 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if 8 < stor9[arg1] % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg1] % 10) + 8 and 2 > -1 / -(stor9[arg1] % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg1] % 10) + 8:
                        mem[0] = arg1
                        mem[32] = 8
                        if viewPossibleActions[arg1] % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] % 10
                        s = -idx + 4
                        s = stor9[arg1] % 10
                        s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg1] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg1] % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg1] % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg1] % 10
                        s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg1] % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / t % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / t % 10
                    s = -idx + 4
                    s = stor9[arg1] % 10
                    s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                    idx = idx + 1
                    continue 
                if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                    if 10^((2 * -idx + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _809 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_809] == mem[_809 + 12 len 20]
                        if mem[_809 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if not 10^((2 * -idx + 4) + 1):
                        revert with 'NH{q', 18
                    if 8 < stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        mem[0] = arg1
                        mem[32] = 8
                        if viewPossibleActions[arg1] % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] % 10
                        s = -idx + 4
                        s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg1
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / t % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / t % 10
                    s = -idx + 4
                    s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                    idx = idx + 1
                    continue 
                t = 10
                u = 1
                s = (2 * -idx + 4) + 1
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1240 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1240] == mem[_1240 + 12 len 20]
                    if mem[_1240 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            if not u * t:
                revert with 'NH{q', 18
            if 8 < stor9[arg1] / u * t % 10:
                revert with 'NH{q', 17
            if -(stor9[arg1] / u * t % 10) + 8 and 2 > -1 / -(stor9[arg1] / u * t % 10) + 8:
                revert with 'NH{q', 17
            if not 2 * -(stor9[arg1] / u * t % 10) + 8:
                mem[0] = arg1
                mem[32] = 8
                if viewPossibleActions[arg1] % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg1] % 10
                s = -idx + 4
                s = stor9[arg1] / u * t % 10
                s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                idx = idx + 1
                continue 
            if bool(bool(2 * -(stor9[arg1] / u * t % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] / u * t % 10) + 8 < 32)):
                if 10^(2 * -(stor9[arg1] / u * t % 10) + 8) > -1:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 8
                if not 10^(2 * -(stor9[arg1] / u * t % 10) + 8):
                    revert with 'NH{q', 18
                if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / u * t % 10) + 8) % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / u * t % 10) + 8) % 10
                s = -idx + 4
                s = stor9[arg1] / u * t % 10
                s = stor9[arg1] / 10^(2 * -idx + 4) % 10
                idx = idx + 1
                continue 
            v = 10
            s = 2 * -(stor9[arg1] / u * t % 10) + 8
            while s > 1:
                if v > -1 / v:
                    revert with 'NH{q', 17
                v = v * v
                s = uint255(s) * 0.5
                continue 
            if 1 > -1 / v:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 8
            if not v:
                revert with 'NH{q', 18
            if viewPossibleActions[arg1] / v % 10 != stor9[arg1] / 10^(2 * -idx + 4) % 10:
                revert with 0, 'Action list is invalid'
            if idx == -1:
                revert with 'NH{q', 17
            s = viewPossibleActions[arg1] / v % 10
            s = -idx + 4
            s = stor9[arg1] / u * t % 10
            s = stor9[arg1] / 10^(2 * -idx + 4) % 10
            idx = idx + 1
            continue 
        t = 10
        s = 2 * -idx + 4
        while s > 1:
            if t > -1 / t:
                revert with 'NH{q', 17
            t = t * t
            s = uint255(s) * 0.5
            continue 
        if 1 > -1 / t:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) == 1:
            if not t:
                revert with 'NH{q', 18
            if -idx + 4 and 2 > -1 / -idx + 4:
                revert with 'NH{q', 17
            if 2 * -idx + 4 > -2:
                revert with 'NH{q', 17
            if not (2 * -idx + 4) + 1:
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1385 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1385] == mem[_1385 + 12 len 20]
                    if mem[_1385 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if 8 < stor9[arg1] % 10:
                    revert with 'NH{q', 17
                if -(stor9[arg1] % 10) + 8 and 2 > -1 / -(stor9[arg1] % 10) + 8:
                    revert with 'NH{q', 17
                if not 2 * -(stor9[arg1] % 10) + 8:
                    mem[0] = arg1
                    mem[32] = 8
                    if viewPossibleActions[arg1] % 10 != stor9[arg1] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] % 10
                    s = -idx + 4
                    s = stor9[arg1] % 10
                    s = stor9[arg1] / t % 10
                    idx = idx + 1
                    continue 
                if bool(bool(2 * -(stor9[arg1] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] % 10) + 8 < 32)):
                    if 10^(2 * -(stor9[arg1] % 10) + 8) > -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not 10^(2 * -(stor9[arg1] % 10) + 8):
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10 != stor9[arg1] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10
                    s = -idx + 4
                    s = stor9[arg1] % 10
                    s = stor9[arg1] / t % 10
                    idx = idx + 1
                    continue 
                u = 10
                s = 2 * -(stor9[arg1] % 10) + 8
                while s > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
                    u = u * u
                    s = uint255(s) * 0.5
                    continue 
                if 1 > -1 / u:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 8
                if not u:
                    revert with 'NH{q', 18
                if viewPossibleActions[arg1] / u % 10 != stor9[arg1] / t % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg1] / u % 10
                s = -idx + 4
                s = stor9[arg1] % 10
                s = stor9[arg1] / t % 10
                idx = idx + 1
                continue 
            if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                if 10^((2 * -idx + 4) + 1) > -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1408] == mem[_1408 + 12 len 20]
                    if mem[_1408 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if not 10^((2 * -idx + 4) + 1):
                    revert with 'NH{q', 18
                if 8 < stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10:
                    revert with 'NH{q', 17
                if -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                    revert with 'NH{q', 17
                if not 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                    mem[0] = arg1
                    mem[32] = 8
                    if viewPossibleActions[arg1] % 10 != stor9[arg1] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] % 10
                    s = -idx + 4
                    s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg1] / t % 10
                    idx = idx + 1
                    continue 
                if bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                    if 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg1] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                    s = -idx + 4
                    s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg1] / t % 10
                    idx = idx + 1
                    continue 
                u = 10
                s = 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8
                while s > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
                    u = u * u
                    s = uint255(s) * 0.5
                    continue 
                if 1 > -1 / u:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 8
                if not u:
                    revert with 'NH{q', 18
                if viewPossibleActions[arg1] / u % 10 != stor9[arg1] / t % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg1] / u % 10
                s = -idx + 4
                s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                s = stor9[arg1] / t % 10
                idx = idx + 1
                continue 
            u = 10
            v = 1
            s = (2 * -idx + 4) + 1
            while s > 1:
                if u > -1 / u:
                    revert with 'NH{q', 17
                if not bool(s):
                    u = u * u
                    v = v
                    s = uint255(s) * 0.5
                    continue 
                u = u * u
                v = v * u
                s = uint255(s) * 0.5
                continue 
            if v > -1 / u:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) != 1:
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1675] == mem[_1675 + 12 len 20]
                if mem[_1675 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
        else:
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(stor18.field_8))
            staticcall address(stor18.field_8).0x6352211e with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1238 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1238] == mem[_1238 + 12 len 20]
            if mem[_1238 + 12 len 20] != msg.sender:
                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            if not t:
                revert with 'NH{q', 18
            if -idx + 4 and 2 > -1 / -idx + 4:
                revert with 'NH{q', 17
            if 2 * -idx + 4 > -2:
                revert with 'NH{q', 17
            if not (2 * -idx + 4) + 1:
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1466] == mem[_1466 + 12 len 20]
                    if mem[_1466 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if 8 < stor9[arg1] % 10:
                    revert with 'NH{q', 17
                if -(stor9[arg1] % 10) + 8 and 2 > -1 / -(stor9[arg1] % 10) + 8:
                    revert with 'NH{q', 17
                if not 2 * -(stor9[arg1] % 10) + 8:
                    mem[0] = arg1
                    mem[32] = 8
                    if viewPossibleActions[arg1] % 10 != stor9[arg1] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] % 10
                    s = -idx + 4
                    s = stor9[arg1] % 10
                    s = stor9[arg1] / t % 10
                    idx = idx + 1
                    continue 
                if bool(bool(2 * -(stor9[arg1] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] % 10) + 8 < 32)):
                    if 10^(2 * -(stor9[arg1] % 10) + 8) > -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not 10^(2 * -(stor9[arg1] % 10) + 8):
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10 != stor9[arg1] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] % 10) + 8) % 10
                    s = -idx + 4
                    s = stor9[arg1] % 10
                    s = stor9[arg1] / t % 10
                    idx = idx + 1
                    continue 
                u = 10
                s = 2 * -(stor9[arg1] % 10) + 8
                while s > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
                    u = u * u
                    s = uint255(s) * 0.5
                    continue 
                if 1 > -1 / u:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 8
                if not u:
                    revert with 'NH{q', 18
                if viewPossibleActions[arg1] / u % 10 != stor9[arg1] / t % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg1] / u % 10
                s = -idx + 4
                s = stor9[arg1] % 10
                s = stor9[arg1] / t % 10
                idx = idx + 1
                continue 
            if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                if 10^((2 * -idx + 4) + 1) > -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1492 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1492] == mem[_1492 + 12 len 20]
                    if mem[_1492 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if not 10^((2 * -idx + 4) + 1):
                    revert with 'NH{q', 18
                if 8 < stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10:
                    revert with 'NH{q', 17
                if -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                    revert with 'NH{q', 17
                if not 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                    mem[0] = arg1
                    mem[32] = 8
                    if viewPossibleActions[arg1] % 10 != stor9[arg1] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] % 10
                    s = -idx + 4
                    s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg1] / t % 10
                    idx = idx + 1
                    continue 
                if bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                    if 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                        revert with 'NH{q', 17
                    mem[0] = arg1
                    mem[32] = 8
                    if not 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg1] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                    s = -idx + 4
                    s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg1] / t % 10
                    idx = idx + 1
                    continue 
                u = 10
                s = 2 * -(stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10) + 8
                while s > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
                    u = u * u
                    s = uint255(s) * 0.5
                    continue 
                if 1 > -1 / u:
                    revert with 'NH{q', 17
                mem[0] = arg1
                mem[32] = 8
                if not u:
                    revert with 'NH{q', 18
                if viewPossibleActions[arg1] / u % 10 != stor9[arg1] / t % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg1] / u % 10
                s = -idx + 4
                s = stor9[arg1] / 10^((2 * -idx + 4) + 1) % 10
                s = stor9[arg1] / t % 10
                idx = idx + 1
                continue 
            u = 10
            v = 1
            s = (2 * -idx + 4) + 1
            while s > 1:
                if u > -1 / u:
                    revert with 'NH{q', 17
                if not bool(s):
                    u = u * u
                    v = v
                    s = uint255(s) * 0.5
                    continue 
                u = u * u
                v = v * u
                s = uint255(s) * 0.5
                continue 
            if v > -1 / u:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) != 1:
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1676 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1676] == mem[_1676 + 12 len 20]
                if mem[_1676 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
        if not v * u:
            revert with 'NH{q', 18
        if 8 < stor9[arg1] / v * u % 10:
            revert with 'NH{q', 17
        if -(stor9[arg1] / v * u % 10) + 8 and 2 > -1 / -(stor9[arg1] / v * u % 10) + 8:
            revert with 'NH{q', 17
        if not 2 * -(stor9[arg1] / v * u % 10) + 8:
            mem[0] = arg1
            mem[32] = 8
            if viewPossibleActions[arg1] % 10 != stor9[arg1] / t % 10:
                revert with 0, 'Action list is invalid'
            if idx == -1:
                revert with 'NH{q', 17
            s = viewPossibleActions[arg1] % 10
            s = -idx + 4
            s = stor9[arg1] / v * u % 10
            s = stor9[arg1] / t % 10
            idx = idx + 1
            continue 
        if bool(bool(2 * -(stor9[arg1] / v * u % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg1] / v * u % 10) + 8 < 32)):
            if 10^(2 * -(stor9[arg1] / v * u % 10) + 8) > -1:
                revert with 'NH{q', 17
            mem[0] = arg1
            mem[32] = 8
            if not 10^(2 * -(stor9[arg1] / v * u % 10) + 8):
                revert with 'NH{q', 18
            if viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / v * u % 10) + 8) % 10 != stor9[arg1] / t % 10:
                revert with 0, 'Action list is invalid'
            if idx == -1:
                revert with 'NH{q', 17
            s = viewPossibleActions[arg1] / 10^(2 * -(stor9[arg1] / v * u % 10) + 8) % 10
            s = -idx + 4
            s = stor9[arg1] / v * u % 10
            s = stor9[arg1] / t % 10
            idx = idx + 1
            continue 
        w = 10
        s = 2 * -(stor9[arg1] / v * u % 10) + 8
        while s > 1:
            if w > -1 / w:
                revert with 'NH{q', 17
            w = w * w
            s = uint255(s) * 0.5
            continue 
        if 1 > -1 / w:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 8
        if not w:
            revert with 'NH{q', 18
        if viewPossibleActions[arg1] / w % 10 != stor9[arg1] / t % 10:
            revert with 0, 'Action list is invalid'
        if idx == -1:
            revert with 'NH{q', 17
        s = viewPossibleActions[arg1] / w % 10
        s = -idx + 4
        s = stor9[arg1] / v * u % 10
        s = stor9[arg1] / t % 10
        idx = idx + 1
        continue 
}

function challengeSkeletoon(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor3[arg2]) != 1:
        revert with 0, 'Token is not registered'
    if arg1 == arg2:
        revert with 0, 'Token can not challenge itself'
    if uint8(stor18.field_0):
        revert with 0, 'Battles are paused'
    if bool(stor4[arg1]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'challenged token is not in battlegrounds'
    if stor4[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token is already in battlegrounds'
    mem[100] = arg2
    require ext_code.size(address(stor18.field_8))
    staticcall address(stor18.field_8).0x6352211e with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Address is not owner of token'
    if stor9[arg2] <= 0:
        revert with 0, 'Action list is invalid'
    mem[0] = arg2
    mem[32] = 8
    if viewPossibleActions[arg2] <= 0:
        revert with 0, 'Possible action list is invalid'
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < 4:
        if 4 < idx:
            revert with 'NH{q', 17
        if -idx + 4 and 2 > -1 / -idx + 4:
            revert with 'NH{q', 17
        if 2 * -idx + 4 > -2:
            revert with 'NH{q', 17
        if not (2 * -idx + 4) + 1:
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) == 1:
                mem[0] = arg2
                mem[32] = 9
                if idx > -2:
                    revert with 'NH{q', 17
                t = idx + 1
                u = s
                v = -idx + 4
                while t < 5:
                    if 4 < t:
                        revert with 'NH{q', 17
                    if -t + 4 and 2 > -1 / -t + 4:
                        revert with 'NH{q', 17
                    if 2 * -t + 4 > -2:
                        revert with 'NH{q', 17
                    if not (2 * -t + 4) + 1:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_521] == mem[_521 + 12 len 20]
                            if mem[_521 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg2
                        mem[32] = 9
                        if stor9[arg2] % 10 == stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg2] % 10
                        v = -t + 4
                        continue 
                    if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                        if 10^((2 * -t + 4) + 1) > -1:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _546 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_546] == mem[_546 + 12 len 20]
                            if mem[_546 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg2
                        mem[32] = 9
                        if not 10^((2 * -t + 4) + 1):
                            revert with 'NH{q', 18
                        if stor9[arg2] % 10 == stor9[arg2] / 10^((2 * -t + 4) + 1) % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg2] / 10^((2 * -t + 4) + 1) % 10
                        v = -t + 4
                        continue 
                    s = 10
                    u = 1
                    idx = (2 * -t + 4) + 1
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            u = u
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        u = u * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if u > -1 / s:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1266] == mem[_1266 + 12 len 20]
                        if mem[_1266 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg2
                    mem[32] = 9
                    if not u * s:
                        revert with 'NH{q', 18
                    if stor9[arg2] % 10 == stor9[arg2] / u * s % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor9[arg2] / u * s % 10
                    v = -t + 4
                    continue 
            else:
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_144] == mem[_144 + 12 len 20]
                if mem[_144 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                mem[0] = arg2
                mem[32] = 9
                if idx > -2:
                    revert with 'NH{q', 17
                t = idx + 1
                u = s
                v = -idx + 4
                while t < 5:
                    if 4 < t:
                        revert with 'NH{q', 17
                    if -t + 4 and 2 > -1 / -t + 4:
                        revert with 'NH{q', 17
                    if 2 * -t + 4 > -2:
                        revert with 'NH{q', 17
                    if not (2 * -t + 4) + 1:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_523] == mem[_523 + 12 len 20]
                            if mem[_523 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg2
                        mem[32] = 9
                        if stor9[arg2] % 10 == stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg2] % 10
                        v = -t + 4
                        continue 
                    if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                        if 10^((2 * -t + 4) + 1) > -1:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _547 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_547] == mem[_547 + 12 len 20]
                            if mem[_547 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg2
                        mem[32] = 9
                        if not 10^((2 * -t + 4) + 1):
                            revert with 'NH{q', 18
                        if stor9[arg2] % 10 == stor9[arg2] / 10^((2 * -t + 4) + 1) % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg2] / 10^((2 * -t + 4) + 1) % 10
                        v = -t + 4
                        continue 
                    s = 10
                    u = 1
                    idx = (2 * -t + 4) + 1
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            u = u
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        u = u * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if u > -1 / s:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1267] == mem[_1267 + 12 len 20]
                        if mem[_1267 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg2
                    mem[32] = 9
                    if not u * s:
                        revert with 'NH{q', 18
                    if stor9[arg2] % 10 == stor9[arg2] / u * s % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor9[arg2] / u * s % 10
                    v = -t + 4
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            s = u
            t = stor9[arg2] % 10
            t = v
            idx = idx + 1
            continue 
        if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
            if 10^((2 * -idx + 4) + 1) > -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) == 1:
                mem[0] = arg2
                mem[32] = 9
                if not 10^((2 * -idx + 4) + 1):
                    revert with 'NH{q', 18
                if idx > -2:
                    revert with 'NH{q', 17
                t = idx + 1
                u = s
                v = -idx + 4
                while t < 5:
                    if 4 < t:
                        revert with 'NH{q', 17
                    if -t + 4 and 2 > -1 / -t + 4:
                        revert with 'NH{q', 17
                    if 2 * -t + 4 > -2:
                        revert with 'NH{q', 17
                    if not (2 * -t + 4) + 1:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _517 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_517] == mem[_517 + 12 len 20]
                            if mem[_517 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg2
                        mem[32] = 9
                        if stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg2] % 10
                        v = -t + 4
                        continue 
                    if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                        if 10^((2 * -t + 4) + 1) > -1:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _544 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_544] == mem[_544 + 12 len 20]
                            if mem[_544 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg2
                        mem[32] = 9
                        if not 10^((2 * -t + 4) + 1):
                            revert with 'NH{q', 18
                        if stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg2] / 10^((2 * -t + 4) + 1) % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg2] / 10^((2 * -t + 4) + 1) % 10
                        v = -t + 4
                        continue 
                    u = 10
                    v = 1
                    s = (2 * -t + 4) + 1
                    while s > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(s):
                            u = u * u
                            v = v
                            s = uint255(s) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        s = uint255(s) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1264] == mem[_1264 + 12 len 20]
                        if mem[_1264 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg2
                    mem[32] = 9
                    if not v * u:
                        revert with 'NH{q', 18
                    if stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg2] / v * u % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor9[arg2] / v * u % 10
                    v = -t + 4
                    continue 
            else:
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_151] == mem[_151 + 12 len 20]
                if mem[_151 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                mem[0] = arg2
                mem[32] = 9
                if not 10^((2 * -idx + 4) + 1):
                    revert with 'NH{q', 18
                if idx > -2:
                    revert with 'NH{q', 17
                t = idx + 1
                u = s
                v = -idx + 4
                while t < 5:
                    if 4 < t:
                        revert with 'NH{q', 17
                    if -t + 4 and 2 > -1 / -t + 4:
                        revert with 'NH{q', 17
                    if 2 * -t + 4 > -2:
                        revert with 'NH{q', 17
                    if not (2 * -t + 4) + 1:
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _519 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_519] == mem[_519 + 12 len 20]
                            if mem[_519 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg2
                        mem[32] = 9
                        if stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg2] % 10
                        v = -t + 4
                        continue 
                    if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                        if 10^((2 * -t + 4) + 1) > -1:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        if bool(stor1[address(msg.sender)]) != 1:
                            mem[mem[64] + 4] = arg2
                            require ext_code.size(address(stor18.field_8))
                            staticcall address(stor18.field_8).0x6352211e with:
                                    gas gas_remaining wei
                                   args arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _545 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_545] == mem[_545 + 12 len 20]
                            if mem[_545 + 12 len 20] != msg.sender:
                                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                        mem[0] = arg2
                        mem[32] = 9
                        if not 10^((2 * -t + 4) + 1):
                            revert with 'NH{q', 18
                        if stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg2] / 10^((2 * -t + 4) + 1) % 10:
                            revert with 0, 'Action list is invalid'
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor9[arg2] / 10^((2 * -t + 4) + 1) % 10
                        v = -t + 4
                        continue 
                    u = 10
                    v = 1
                    s = (2 * -t + 4) + 1
                    while s > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(s):
                            u = u * u
                            v = v
                            s = uint255(s) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        s = uint255(s) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1265 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1265] == mem[_1265 + 12 len 20]
                        if mem[_1265 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg2
                    mem[32] = 9
                    if not v * u:
                        revert with 'NH{q', 18
                    if stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10 == stor9[arg2] / v * u % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor9[arg2] / v * u % 10
                    v = -t + 4
                    continue 
            if idx == -1:
                revert with 'NH{q', 17
            s = u
            t = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
            t = v
            idx = idx + 1
            continue 
        u = 10
        v = 1
        t = (2 * -idx + 4) + 1
        while t > 1:
            if u > -1 / u:
                revert with 'NH{q', 17
            if not bool(t):
                u = u * u
                v = v
                t = uint255(t) * 0.5
                continue 
            u = u * u
            v = v * u
            t = uint255(t) * 0.5
            continue 
        if v > -1 / u:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) == 1:
            mem[0] = arg2
            mem[32] = 9
            if not v * u:
                revert with 'NH{q', 18
            if idx > -2:
                revert with 'NH{q', 17
            t = idx + 1
            w = s
            x = -idx + 4
            while t < 5:
                if 4 < t:
                    revert with 'NH{q', 17
                if -t + 4 and 2 > -1 / -t + 4:
                    revert with 'NH{q', 17
                if 2 * -t + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -t + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1359 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1359] == mem[_1359 + 12 len 20]
                        if mem[_1359 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg2
                    mem[32] = 9
                    if stor9[arg2] / v * u % 10 == stor9[arg2] % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    w = stor9[arg2] % 10
                    x = -t + 4
                    continue 
                if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                    if 10^((2 * -t + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1375 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1375] == mem[_1375 + 12 len 20]
                        if mem[_1375 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg2
                    mem[32] = 9
                    if not 10^((2 * -t + 4) + 1):
                        revert with 'NH{q', 18
                    if stor9[arg2] / v * u % 10 == stor9[arg2] / 10^((2 * -t + 4) + 1) % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    w = stor9[arg2] / 10^((2 * -t + 4) + 1) % 10
                    x = -t + 4
                    continue 
                s = 10
                w = 1
                idx = (2 * -t + 4) + 1
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        w = w
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    w = w * s
                    idx = uint255(idx) * 0.5
                    continue 
                if w > -1 / s:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1698 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1698] == mem[_1698 + 12 len 20]
                    if mem[_1698 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                mem[0] = arg2
                mem[32] = 9
                if not w * s:
                    revert with 'NH{q', 18
                if stor9[arg2] / v * u % 10 == stor9[arg2] / w * s % 10:
                    revert with 0, 'Action list is invalid'
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                w = stor9[arg2] / w * s % 10
                x = -t + 4
                continue 
        else:
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(stor18.field_8))
            staticcall address(stor18.field_8).0x6352211e with:
                    gas gas_remaining wei
                   args arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _467 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_467] == mem[_467 + 12 len 20]
            if mem[_467 + 12 len 20] != msg.sender:
                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            mem[0] = arg2
            mem[32] = 9
            if not v * u:
                revert with 'NH{q', 18
            if idx > -2:
                revert with 'NH{q', 17
            t = idx + 1
            w = s
            x = -idx + 4
            while t < 5:
                if 4 < t:
                    revert with 'NH{q', 17
                if -t + 4 and 2 > -1 / -t + 4:
                    revert with 'NH{q', 17
                if 2 * -t + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -t + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1361 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1361] == mem[_1361 + 12 len 20]
                        if mem[_1361 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg2
                    mem[32] = 9
                    if stor9[arg2] / v * u % 10 == stor9[arg2] % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    w = stor9[arg2] % 10
                    x = -t + 4
                    continue 
                if bool(bool((2 * -t + 4) + 1 < 78)) or bool(bool((2 * -t + 4) + 1 < 32)):
                    if 10^((2 * -t + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1376 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1376] == mem[_1376 + 12 len 20]
                        if mem[_1376 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    mem[0] = arg2
                    mem[32] = 9
                    if not 10^((2 * -t + 4) + 1):
                        revert with 'NH{q', 18
                    if stor9[arg2] / v * u % 10 == stor9[arg2] / 10^((2 * -t + 4) + 1) % 10:
                        revert with 0, 'Action list is invalid'
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    w = stor9[arg2] / 10^((2 * -t + 4) + 1) % 10
                    x = -t + 4
                    continue 
                s = 10
                w = 1
                idx = (2 * -t + 4) + 1
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        w = w
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    w = w * s
                    idx = uint255(idx) * 0.5
                    continue 
                if w > -1 / s:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1699 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1699] == mem[_1699 + 12 len 20]
                    if mem[_1699 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                mem[0] = arg2
                mem[32] = 9
                if not w * s:
                    revert with 'NH{q', 18
                if stor9[arg2] / v * u % 10 == stor9[arg2] / w * s % 10:
                    revert with 0, 'Action list is invalid'
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                w = stor9[arg2] / w * s % 10
                x = -t + 4
                continue 
        if idx == -1:
            revert with 'NH{q', 17
        s = w
        t = stor9[arg2] / v * u % 10
        t = x
        idx = idx + 1
        continue 
    s = 0
    s = t
    s = 0
    s = 0
    idx = 0
    while idx < 5:
        if 4 < idx:
            revert with 'NH{q', 17
        if -idx + 4 and 2 > -1 / -idx + 4:
            revert with 'NH{q', 17
        if not 2 * -idx + 4:
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) == 1:
                if -idx + 4 and 2 > -1 / -idx + 4:
                    revert with 'NH{q', 17
                if 2 * -idx + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -idx + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_660] == mem[_660 + 12 len 20]
                        if mem[_660 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if 8 < stor9[arg2] % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg2] % 10) + 8 and 2 > -1 / -(stor9[arg2] % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg2] % 10) + 8:
                        mem[0] = arg2
                        mem[32] = 8
                        if viewPossibleActions[arg2] % 10 != stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] % 10
                        s = -idx + 4
                        s = stor9[arg2] % 10
                        s = stor9[arg2] % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg2] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg2] % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg2
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg2] % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10 != stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg2] % 10
                        s = stor9[arg2] % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg2] % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / t % 10 != stor9[arg2] % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / t % 10
                    s = -idx + 4
                    s = stor9[arg2] % 10
                    s = stor9[arg2] % 10
                    idx = idx + 1
                    continue 
                if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                    if 10^((2 * -idx + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _682 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_682] == mem[_682 + 12 len 20]
                        if mem[_682 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if not 10^((2 * -idx + 4) + 1):
                        revert with 'NH{q', 18
                    if 8 < stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        mem[0] = arg2
                        mem[32] = 8
                        if viewPossibleActions[arg2] % 10 != stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] % 10
                        s = -idx + 4
                        s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg2] % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg2
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg2] % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / t % 10 != stor9[arg2] % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / t % 10
                    s = -idx + 4
                    s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg2] % 10
                    idx = idx + 1
                    continue 
                t = 10
                u = 1
                s = (2 * -idx + 4) + 1
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1262] == mem[_1262 + 12 len 20]
                    if mem[_1262 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            else:
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _493 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_493] == mem[_493 + 12 len 20]
                if mem[_493 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if -idx + 4 and 2 > -1 / -idx + 4:
                    revert with 'NH{q', 17
                if 2 * -idx + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -idx + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _771 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_771] == mem[_771 + 12 len 20]
                        if mem[_771 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if 8 < stor9[arg2] % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg2] % 10) + 8 and 2 > -1 / -(stor9[arg2] % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg2] % 10) + 8:
                        mem[0] = arg2
                        mem[32] = 8
                        if viewPossibleActions[arg2] % 10 != stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] % 10
                        s = -idx + 4
                        s = stor9[arg2] % 10
                        s = stor9[arg2] % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg2] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg2] % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg2
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg2] % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10 != stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg2] % 10
                        s = stor9[arg2] % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg2] % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / t % 10 != stor9[arg2] % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / t % 10
                    s = -idx + 4
                    s = stor9[arg2] % 10
                    s = stor9[arg2] % 10
                    idx = idx + 1
                    continue 
                if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                    if 10^((2 * -idx + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _799 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_799] == mem[_799 + 12 len 20]
                        if mem[_799 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if not 10^((2 * -idx + 4) + 1):
                        revert with 'NH{q', 18
                    if 8 < stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        mem[0] = arg2
                        mem[32] = 8
                        if viewPossibleActions[arg2] % 10 != stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] % 10
                        s = -idx + 4
                        s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg2] % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg2
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg2] % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg2] % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / t % 10 != stor9[arg2] % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / t % 10
                    s = -idx + 4
                    s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg2] % 10
                    idx = idx + 1
                    continue 
                t = 10
                u = 1
                s = (2 * -idx + 4) + 1
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1263 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1263] == mem[_1263 + 12 len 20]
                    if mem[_1263 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            if not u * t:
                revert with 'NH{q', 18
            if 8 < stor9[arg2] / u * t % 10:
                revert with 'NH{q', 17
            if -(stor9[arg2] / u * t % 10) + 8 and 2 > -1 / -(stor9[arg2] / u * t % 10) + 8:
                revert with 'NH{q', 17
            if not 2 * -(stor9[arg2] / u * t % 10) + 8:
                mem[0] = arg2
                mem[32] = 8
                if viewPossibleActions[arg2] % 10 != stor9[arg2] % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg2] % 10
                s = -idx + 4
                s = stor9[arg2] / u * t % 10
                s = stor9[arg2] % 10
                idx = idx + 1
                continue 
            if bool(bool(2 * -(stor9[arg2] / u * t % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] / u * t % 10) + 8 < 32)):
                if 10^(2 * -(stor9[arg2] / u * t % 10) + 8) > -1:
                    revert with 'NH{q', 17
                mem[0] = arg2
                mem[32] = 8
                if not 10^(2 * -(stor9[arg2] / u * t % 10) + 8):
                    revert with 'NH{q', 18
                if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / u * t % 10) + 8) % 10 != stor9[arg2] % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / u * t % 10) + 8) % 10
                s = -idx + 4
                s = stor9[arg2] / u * t % 10
                s = stor9[arg2] % 10
                idx = idx + 1
                continue 
            v = 10
            s = 2 * -(stor9[arg2] / u * t % 10) + 8
            while s > 1:
                if v > -1 / v:
                    revert with 'NH{q', 17
                v = v * v
                s = uint255(s) * 0.5
                continue 
            if 1 > -1 / v:
                revert with 'NH{q', 17
            mem[0] = arg2
            mem[32] = 8
            if not v:
                revert with 'NH{q', 18
            if viewPossibleActions[arg2] / v % 10 != stor9[arg2] % 10:
                revert with 0, 'Action list is invalid'
            if idx == -1:
                revert with 'NH{q', 17
            s = viewPossibleActions[arg2] / v % 10
            s = -idx + 4
            s = stor9[arg2] / u * t % 10
            s = stor9[arg2] % 10
            idx = idx + 1
            continue 
        if bool(bool(2 * -idx + 4 < 78)) or bool(bool(2 * -idx + 4 < 32)):
            if 10^(2 * -idx + 4) > -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) == 1:
                if not 10^(2 * -idx + 4):
                    revert with 'NH{q', 18
                if -idx + 4 and 2 > -1 / -idx + 4:
                    revert with 'NH{q', 17
                if 2 * -idx + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -idx + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _681 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_681] == mem[_681 + 12 len 20]
                        if mem[_681 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if 8 < stor9[arg2] % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg2] % 10) + 8 and 2 > -1 / -(stor9[arg2] % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg2] % 10) + 8:
                        mem[0] = arg2
                        mem[32] = 8
                        if viewPossibleActions[arg2] % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] % 10
                        s = -idx + 4
                        s = stor9[arg2] % 10
                        s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg2] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg2] % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg2
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg2] % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg2] % 10
                        s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg2] % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / t % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / t % 10
                    s = -idx + 4
                    s = stor9[arg2] % 10
                    s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                    idx = idx + 1
                    continue 
                if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                    if 10^((2 * -idx + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _710 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_710] == mem[_710 + 12 len 20]
                        if mem[_710 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if not 10^((2 * -idx + 4) + 1):
                        revert with 'NH{q', 18
                    if 8 < stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        mem[0] = arg2
                        mem[32] = 8
                        if viewPossibleActions[arg2] % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] % 10
                        s = -idx + 4
                        s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg2
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / t % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / t % 10
                    s = -idx + 4
                    s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                    idx = idx + 1
                    continue 
                t = 10
                u = 1
                s = (2 * -idx + 4) + 1
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1260] == mem[_1260 + 12 len 20]
                    if mem[_1260 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            else:
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _515 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_515] == mem[_515 + 12 len 20]
                if mem[_515 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if not 10^(2 * -idx + 4):
                    revert with 'NH{q', 18
                if -idx + 4 and 2 > -1 / -idx + 4:
                    revert with 'NH{q', 17
                if 2 * -idx + 4 > -2:
                    revert with 'NH{q', 17
                if not (2 * -idx + 4) + 1:
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _797 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_797] == mem[_797 + 12 len 20]
                        if mem[_797 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if 8 < stor9[arg2] % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg2] % 10) + 8 and 2 > -1 / -(stor9[arg2] % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg2] % 10) + 8:
                        mem[0] = arg2
                        mem[32] = 8
                        if viewPossibleActions[arg2] % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] % 10
                        s = -idx + 4
                        s = stor9[arg2] % 10
                        s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg2] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg2] % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg2
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg2] % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg2] % 10
                        s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg2] % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / t % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / t % 10
                    s = -idx + 4
                    s = stor9[arg2] % 10
                    s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                    idx = idx + 1
                    continue 
                if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                    if 10^((2 * -idx + 4) + 1) > -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 1
                    if bool(stor1[address(msg.sender)]) != 1:
                        mem[mem[64] + 4] = arg2
                        require ext_code.size(address(stor18.field_8))
                        staticcall address(stor18.field_8).0x6352211e with:
                                gas gas_remaining wei
                               args arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _830 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_830] == mem[_830 + 12 len 20]
                        if mem[_830 + 12 len 20] != msg.sender:
                            revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                    if not 10^((2 * -idx + 4) + 1):
                        revert with 'NH{q', 18
                    if 8 < stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10:
                        revert with 'NH{q', 17
                    if -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        revert with 'NH{q', 17
                    if not 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                        mem[0] = arg2
                        mem[32] = 8
                        if viewPossibleActions[arg2] % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] % 10
                        s = -idx + 4
                        s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    if bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                        if 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                            revert with 'NH{q', 17
                        mem[0] = arg2
                        mem[32] = 8
                        if not 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                            revert with 'NH{q', 18
                        if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                            revert with 0, 'Action list is invalid'
                        if idx == -1:
                            revert with 'NH{q', 17
                        s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                        s = -idx + 4
                        s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                        s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                        idx = idx + 1
                        continue 
                    t = 10
                    s = 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8
                    while s > 1:
                        if t > -1 / t:
                            revert with 'NH{q', 17
                        t = t * t
                        s = uint255(s) * 0.5
                        continue 
                    if 1 > -1 / t:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not t:
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / t % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / t % 10
                    s = -idx + 4
                    s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                    idx = idx + 1
                    continue 
                t = 10
                u = 1
                s = (2 * -idx + 4) + 1
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1261] == mem[_1261 + 12 len 20]
                    if mem[_1261 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            if not u * t:
                revert with 'NH{q', 18
            if 8 < stor9[arg2] / u * t % 10:
                revert with 'NH{q', 17
            if -(stor9[arg2] / u * t % 10) + 8 and 2 > -1 / -(stor9[arg2] / u * t % 10) + 8:
                revert with 'NH{q', 17
            if not 2 * -(stor9[arg2] / u * t % 10) + 8:
                mem[0] = arg2
                mem[32] = 8
                if viewPossibleActions[arg2] % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg2] % 10
                s = -idx + 4
                s = stor9[arg2] / u * t % 10
                s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                idx = idx + 1
                continue 
            if bool(bool(2 * -(stor9[arg2] / u * t % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] / u * t % 10) + 8 < 32)):
                if 10^(2 * -(stor9[arg2] / u * t % 10) + 8) > -1:
                    revert with 'NH{q', 17
                mem[0] = arg2
                mem[32] = 8
                if not 10^(2 * -(stor9[arg2] / u * t % 10) + 8):
                    revert with 'NH{q', 18
                if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / u * t % 10) + 8) % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / u * t % 10) + 8) % 10
                s = -idx + 4
                s = stor9[arg2] / u * t % 10
                s = stor9[arg2] / 10^(2 * -idx + 4) % 10
                idx = idx + 1
                continue 
            v = 10
            s = 2 * -(stor9[arg2] / u * t % 10) + 8
            while s > 1:
                if v > -1 / v:
                    revert with 'NH{q', 17
                v = v * v
                s = uint255(s) * 0.5
                continue 
            if 1 > -1 / v:
                revert with 'NH{q', 17
            mem[0] = arg2
            mem[32] = 8
            if not v:
                revert with 'NH{q', 18
            if viewPossibleActions[arg2] / v % 10 != stor9[arg2] / 10^(2 * -idx + 4) % 10:
                revert with 0, 'Action list is invalid'
            if idx == -1:
                revert with 'NH{q', 17
            s = viewPossibleActions[arg2] / v % 10
            s = -idx + 4
            s = stor9[arg2] / u * t % 10
            s = stor9[arg2] / 10^(2 * -idx + 4) % 10
            idx = idx + 1
            continue 
        t = 10
        s = 2 * -idx + 4
        while s > 1:
            if t > -1 / t:
                revert with 'NH{q', 17
            t = t * t
            s = uint255(s) * 0.5
            continue 
        if 1 > -1 / t:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) == 1:
            if not t:
                revert with 'NH{q', 18
            if -idx + 4 and 2 > -1 / -idx + 4:
                revert with 'NH{q', 17
            if 2 * -idx + 4 > -2:
                revert with 'NH{q', 17
            if not (2 * -idx + 4) + 1:
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1406] == mem[_1406 + 12 len 20]
                    if mem[_1406 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if 8 < stor9[arg2] % 10:
                    revert with 'NH{q', 17
                if -(stor9[arg2] % 10) + 8 and 2 > -1 / -(stor9[arg2] % 10) + 8:
                    revert with 'NH{q', 17
                if not 2 * -(stor9[arg2] % 10) + 8:
                    mem[0] = arg2
                    mem[32] = 8
                    if viewPossibleActions[arg2] % 10 != stor9[arg2] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] % 10
                    s = -idx + 4
                    s = stor9[arg2] % 10
                    s = stor9[arg2] / t % 10
                    idx = idx + 1
                    continue 
                if bool(bool(2 * -(stor9[arg2] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] % 10) + 8 < 32)):
                    if 10^(2 * -(stor9[arg2] % 10) + 8) > -1:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not 10^(2 * -(stor9[arg2] % 10) + 8):
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10 != stor9[arg2] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10
                    s = -idx + 4
                    s = stor9[arg2] % 10
                    s = stor9[arg2] / t % 10
                    idx = idx + 1
                    continue 
                u = 10
                s = 2 * -(stor9[arg2] % 10) + 8
                while s > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
                    u = u * u
                    s = uint255(s) * 0.5
                    continue 
                if 1 > -1 / u:
                    revert with 'NH{q', 17
                mem[0] = arg2
                mem[32] = 8
                if not u:
                    revert with 'NH{q', 18
                if viewPossibleActions[arg2] / u % 10 != stor9[arg2] / t % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg2] / u % 10
                s = -idx + 4
                s = stor9[arg2] % 10
                s = stor9[arg2] / t % 10
                idx = idx + 1
                continue 
            if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                if 10^((2 * -idx + 4) + 1) > -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1429 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1429] == mem[_1429 + 12 len 20]
                    if mem[_1429 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if not 10^((2 * -idx + 4) + 1):
                    revert with 'NH{q', 18
                if 8 < stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10:
                    revert with 'NH{q', 17
                if -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                    revert with 'NH{q', 17
                if not 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                    mem[0] = arg2
                    mem[32] = 8
                    if viewPossibleActions[arg2] % 10 != stor9[arg2] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] % 10
                    s = -idx + 4
                    s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg2] / t % 10
                    idx = idx + 1
                    continue 
                if bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                    if 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg2] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                    s = -idx + 4
                    s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg2] / t % 10
                    idx = idx + 1
                    continue 
                u = 10
                s = 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8
                while s > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
                    u = u * u
                    s = uint255(s) * 0.5
                    continue 
                if 1 > -1 / u:
                    revert with 'NH{q', 17
                mem[0] = arg2
                mem[32] = 8
                if not u:
                    revert with 'NH{q', 18
                if viewPossibleActions[arg2] / u % 10 != stor9[arg2] / t % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg2] / u % 10
                s = -idx + 4
                s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                s = stor9[arg2] / t % 10
                idx = idx + 1
                continue 
            u = 10
            v = 1
            s = (2 * -idx + 4) + 1
            while s > 1:
                if u > -1 / u:
                    revert with 'NH{q', 17
                if not bool(s):
                    u = u * u
                    v = v
                    s = uint255(s) * 0.5
                    continue 
                u = u * u
                v = v * u
                s = uint255(s) * 0.5
                continue 
            if v > -1 / u:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) != 1:
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1696 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1696] == mem[_1696 + 12 len 20]
                if mem[_1696 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
        else:
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(stor18.field_8))
            staticcall address(stor18.field_8).0x6352211e with:
                    gas gas_remaining wei
                   args arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1259] == mem[_1259 + 12 len 20]
            if mem[_1259 + 12 len 20] != msg.sender:
                revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
            if not t:
                revert with 'NH{q', 18
            if -idx + 4 and 2 > -1 / -idx + 4:
                revert with 'NH{q', 17
            if 2 * -idx + 4 > -2:
                revert with 'NH{q', 17
            if not (2 * -idx + 4) + 1:
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1487 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1487] == mem[_1487 + 12 len 20]
                    if mem[_1487 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if 8 < stor9[arg2] % 10:
                    revert with 'NH{q', 17
                if -(stor9[arg2] % 10) + 8 and 2 > -1 / -(stor9[arg2] % 10) + 8:
                    revert with 'NH{q', 17
                if not 2 * -(stor9[arg2] % 10) + 8:
                    mem[0] = arg2
                    mem[32] = 8
                    if viewPossibleActions[arg2] % 10 != stor9[arg2] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] % 10
                    s = -idx + 4
                    s = stor9[arg2] % 10
                    s = stor9[arg2] / t % 10
                    idx = idx + 1
                    continue 
                if bool(bool(2 * -(stor9[arg2] % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] % 10) + 8 < 32)):
                    if 10^(2 * -(stor9[arg2] % 10) + 8) > -1:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not 10^(2 * -(stor9[arg2] % 10) + 8):
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10 != stor9[arg2] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] % 10) + 8) % 10
                    s = -idx + 4
                    s = stor9[arg2] % 10
                    s = stor9[arg2] / t % 10
                    idx = idx + 1
                    continue 
                u = 10
                s = 2 * -(stor9[arg2] % 10) + 8
                while s > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
                    u = u * u
                    s = uint255(s) * 0.5
                    continue 
                if 1 > -1 / u:
                    revert with 'NH{q', 17
                mem[0] = arg2
                mem[32] = 8
                if not u:
                    revert with 'NH{q', 18
                if viewPossibleActions[arg2] / u % 10 != stor9[arg2] / t % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg2] / u % 10
                s = -idx + 4
                s = stor9[arg2] % 10
                s = stor9[arg2] / t % 10
                idx = idx + 1
                continue 
            if bool(bool((2 * -idx + 4) + 1 < 78)) or bool(bool((2 * -idx + 4) + 1 < 32)):
                if 10^((2 * -idx + 4) + 1) > -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 1
                if bool(stor1[address(msg.sender)]) != 1:
                    mem[mem[64] + 4] = arg2
                    require ext_code.size(address(stor18.field_8))
                    staticcall address(stor18.field_8).0x6352211e with:
                            gas gas_remaining wei
                           args arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1513] == mem[_1513 + 12 len 20]
                    if mem[_1513 + 12 len 20] != msg.sender:
                        revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
                if not 10^((2 * -idx + 4) + 1):
                    revert with 'NH{q', 18
                if 8 < stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10:
                    revert with 'NH{q', 17
                if -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 and 2 > -1 / -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                    revert with 'NH{q', 17
                if not 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8:
                    mem[0] = arg2
                    mem[32] = 8
                    if viewPossibleActions[arg2] % 10 != stor9[arg2] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] % 10
                    s = -idx + 4
                    s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg2] / t % 10
                    idx = idx + 1
                    continue 
                if bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8 < 32)):
                    if 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) > -1:
                        revert with 'NH{q', 17
                    mem[0] = arg2
                    mem[32] = 8
                    if not 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8):
                        revert with 'NH{q', 18
                    if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10 != stor9[arg2] / t % 10:
                        revert with 0, 'Action list is invalid'
                    if idx == -1:
                        revert with 'NH{q', 17
                    s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8) % 10
                    s = -idx + 4
                    s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                    s = stor9[arg2] / t % 10
                    idx = idx + 1
                    continue 
                u = 10
                s = 2 * -(stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10) + 8
                while s > 1:
                    if u > -1 / u:
                        revert with 'NH{q', 17
                    u = u * u
                    s = uint255(s) * 0.5
                    continue 
                if 1 > -1 / u:
                    revert with 'NH{q', 17
                mem[0] = arg2
                mem[32] = 8
                if not u:
                    revert with 'NH{q', 18
                if viewPossibleActions[arg2] / u % 10 != stor9[arg2] / t % 10:
                    revert with 0, 'Action list is invalid'
                if idx == -1:
                    revert with 'NH{q', 17
                s = viewPossibleActions[arg2] / u % 10
                s = -idx + 4
                s = stor9[arg2] / 10^((2 * -idx + 4) + 1) % 10
                s = stor9[arg2] / t % 10
                idx = idx + 1
                continue 
            u = 10
            v = 1
            s = (2 * -idx + 4) + 1
            while s > 1:
                if u > -1 / u:
                    revert with 'NH{q', 17
                if not bool(s):
                    u = u * u
                    v = v
                    s = uint255(s) * 0.5
                    continue 
                u = u * u
                v = v * u
                s = uint255(s) * 0.5
                continue 
            if v > -1 / u:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            if bool(stor1[address(msg.sender)]) != 1:
                mem[mem[64] + 4] = arg2
                require ext_code.size(address(stor18.field_8))
                staticcall address(stor18.field_8).0x6352211e with:
                        gas gas_remaining wei
                       args arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1697 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1697] == mem[_1697 + 12 len 20]
                if mem[_1697 + 12 len 20] != msg.sender:
                    revert with 0, 'Address is not battlegrounds logic wallet or owner of token'
        if not v * u:
            revert with 'NH{q', 18
        if 8 < stor9[arg2] / v * u % 10:
            revert with 'NH{q', 17
        if -(stor9[arg2] / v * u % 10) + 8 and 2 > -1 / -(stor9[arg2] / v * u % 10) + 8:
            revert with 'NH{q', 17
        if not 2 * -(stor9[arg2] / v * u % 10) + 8:
            mem[0] = arg2
            mem[32] = 8
            if viewPossibleActions[arg2] % 10 != stor9[arg2] / t % 10:
                revert with 0, 'Action list is invalid'
            if idx == -1:
                revert with 'NH{q', 17
            s = viewPossibleActions[arg2] % 10
            s = -idx + 4
            s = stor9[arg2] / v * u % 10
            s = stor9[arg2] / t % 10
            idx = idx + 1
            continue 
        if bool(bool(2 * -(stor9[arg2] / v * u % 10) + 8 < 78)) or bool(bool(2 * -(stor9[arg2] / v * u % 10) + 8 < 32)):
            if 10^(2 * -(stor9[arg2] / v * u % 10) + 8) > -1:
                revert with 'NH{q', 17
            mem[0] = arg2
            mem[32] = 8
            if not 10^(2 * -(stor9[arg2] / v * u % 10) + 8):
                revert with 'NH{q', 18
            if viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / v * u % 10) + 8) % 10 != stor9[arg2] / t % 10:
                revert with 0, 'Action list is invalid'
            if idx == -1:
                revert with 'NH{q', 17
            s = viewPossibleActions[arg2] / 10^(2 * -(stor9[arg2] / v * u % 10) + 8) % 10
            s = -idx + 4
            s = stor9[arg2] / v * u % 10
            s = stor9[arg2] / t % 10
            idx = idx + 1
            continue 
        w = 10
        s = 2 * -(stor9[arg2] / v * u % 10) + 8
        while s > 1:
            if w > -1 / w:
                revert with 'NH{q', 17
            w = w * w
            s = uint255(s) * 0.5
            continue 
        if 1 > -1 / w:
            revert with 'NH{q', 17
        mem[0] = arg2
        mem[32] = 8
        if not w:
            revert with 'NH{q', 18
        if viewPossibleActions[arg2] / w % 10 != stor9[arg2] / t % 10:
            revert with 0, 'Action list is invalid'
        if idx == -1:
            revert with 'NH{q', 17
        s = viewPossibleActions[arg2] / w % 10
        s = -idx + 4
        s = stor9[arg2] / v * u % 10
        s = stor9[arg2] / t % 10
        idx = idx + 1
        continue 
    if challengeAmount[arg1] > -uint256(gasFee) - 1:
        revert with 'NH{q', 17
    if msg.value < challengeAmount[arg1] + uint256(gasFee):
        revert with 0, 'Message value is less than challenge stake and internal gas fee'
    stor12[arg2] = stor12[arg1]
    emit 0x5499aaf1: arg2, arg1, stor12[arg2]
    return stor12[arg2]
}



}
